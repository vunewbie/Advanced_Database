﻿-- Đăng Nhập
GO
CREATE OR ALTER PROCEDURE USP_DangNhap
    @TenTK VARCHAR(50),
    @MatKhau VARCHAR(20),
    @MaTK VARCHAR(10) OUTPUT,    -- Thêm MaTK làm tham số đầu ra
    @LoaiTK NVARCHAR(10) OUTPUT,
    @TenBP NVARCHAR(50) OUTPUT
AS
BEGIN
    -- Kiểm tra thông tin đăng nhập
    IF EXISTS (
        SELECT 1
        FROM TaiKhoan
        WHERE TenTK = @TenTK AND MatKhau = @MatKhau
    )
    BEGIN
        -- Lấy MaTK, LoaiTK và TenBP nếu tài khoản tồn tại
        SELECT 
            @MaTK = TK.MaTK,
            @LoaiTK = TK.LoaiTK,
            @TenBP = BP.TenBP
        FROM TaiKhoan TK
        LEFT JOIN NhanVien NV ON TK.MaTK = NV.MaTK
        LEFT JOIN BoPhan BP ON NV.MaBP = BP.MaBP
        WHERE TK.TenTK = @TenTK AND TK.MatKhau = @MatKhau;
    END
    ELSE
    BEGIN
        -- Nếu không tồn tại, trả giá trị NULL để ứng dụng hiển thị lỗi
        SET @MaTK = NULL;
        SET @LoaiTK = NULL;
        SET @TenBP = NULL;
    END
END;
GO

-- Đăng Ký
GO
CREATE OR ALTER PROCEDURE USP_DangKy
    @TenTK VARCHAR(50),
    @MatKhau VARCHAR(20),
    @HoTen NVARCHAR(50),
    @SDT VARCHAR(10),
    @GioiTinh NVARCHAR(3),
    @CCCD VARCHAR(12),
    @Email VARCHAR(50),
    @MaTK VARCHAR(10) OUTPUT -- Biến trả về MaTK
AS
BEGIN
    -- Kiểm tra sự tồn tại của các trường
    IF EXISTS (SELECT 1 FROM TaiKhoan WHERE TenTK = @TenTK)
    BEGIN
        ;THROW 50000, 'Tên tài khoản đã tồn tại. Vui lòng nhập tên khác.', 1;
    END

    IF EXISTS (SELECT 1 FROM KhachHang WHERE SDT = @SDT)
    BEGIN
        ;THROW 50000, 'Số điện thoại đã tồn tại. Vui lòng nhập số điện thoại khác.', 1;
    END

    IF EXISTS (SELECT 1 FROM KhachHang WHERE CCCD = @CCCD)
    BEGIN
        ;THROW 50000, 'CCCD đã tồn tại. Vui lòng nhập CCCD khác.', 1;
    END

    IF EXISTS (SELECT 1 FROM KhachHang WHERE Email = @Email)
    BEGIN
        ;THROW 50000, 'Email đã tồn tại. Vui lòng nhập email khác.', 1;
    END

    -- Nếu không có trường nào bị trùng lặp, tiếp tục đăng ký
    DECLARE @MaxMaTK INT, @NewMaTK VARCHAR(10);
    SELECT @MaxMaTK = ISNULL(MAX(CAST(SUBSTRING(MaTK, 3, LEN(MaTK) - 2) AS INT)), -1)
    FROM TaiKhoan;

    SET @NewMaTK = 'KH' + FORMAT(@MaxMaTK + 1, '00000');

    -- Thêm vào bảng TaiKhoan
    INSERT INTO TaiKhoan (MaTK, TenTK, MatKhau, LoaiTK)
    VALUES (@NewMaTK, @TenTK, @MatKhau, N'Khách Hàng');

    -- Thêm vào bảng KhachHang
    INSERT INTO KhachHang (MaTK, HoTen, SDT, GioiTinh, CCCD, Email)
    VALUES (@NewMaTK, @HoTen, @SDT, @GioiTinh, @CCCD, @Email);

    -- Trả về MaTK
    SET @MaTK = @NewMaTK;
END
GO

-- Xem thông tin khách hàng
GO
CREATE OR ALTER PROCEDURE USP_XemThongTinKhachHang
    @MaTK VARCHAR(10) -- Nhận vào userID (MaTK)
AS
BEGIN
    SELECT TK.TenTK,TK.MatKhau,
           KH.HoTen, KH.SDT, KH.Email, KH.CCCD, KH.GioiTinh, 
		   TH.MaThe, TH.NgayLap, TH.NgayBDChuKy, TH.TongDiem, TH.TongDiemDuyTri, TH.TenLoaiThe
    FROM TaiKhoan TK
	JOIN KhachHang KH ON TK.MaTK = KH.MaTK
    LEFT JOIN The TH ON KH.MaTK = TH.TkSoHuu
    WHERE TK.MaTK = @MaTK
    AND (TH.TinhTrang = N'Mở' OR TH.TinhTrang IS NULL); -- Chỉ lấy thẻ có trạng thái 'Mở'
END;
GO

-- Cập Nhật thông tin khách hàng
GO
CREATE OR ALTER PROCEDURE USP_CapNhatThongTinKhachHang
    @MaTK VARCHAR(10),    
    @TenTK VARCHAR(50),   
    @MatKhau VARCHAR(20), 
    @HoTen NVARCHAR(50),   
    @SDT VARCHAR(10),     
    @Email VARCHAR(50),   
    @CCCD VARCHAR(12),    
    @GioiTinh NVARCHAR(3) 
AS
BEGIN
    -- Kiểm tra tính duy nhất cho các trường
    IF EXISTS (SELECT 1 FROM TaiKhoan WHERE TenTK = @TenTK AND MaTK != @MaTK)
    BEGIN
        ;THROW 51000, 'Tên tài khoản đã tồn tại.', 1;
    END

    IF EXISTS (SELECT 1 FROM KhachHang WHERE SDT = @SDT AND MaTK != @MaTK)
    BEGIN
        ;THROW 51000, 'Số điện thoại đã tồn tại.', 1;
    END

    IF EXISTS (SELECT 1 FROM KhachHang WHERE Email = @Email AND MaTK != @MaTK)
    BEGIN
        ;THROW 51000, 'Email đã tồn tại.', 1;
    END

    IF EXISTS (SELECT 1 FROM KhachHang WHERE CCCD = @CCCD AND MaTK != @MaTK)
    BEGIN
        ;THROW 51000, 'CCCD đã tồn tại.', 1;
    END

    -- Cập nhật thông tin trong bảng TaiKhoan
    UPDATE TaiKhoan
    SET TenTK = @TenTK,
        MatKhau = @MatKhau
    WHERE MaTK = @MaTK;

    -- Cập nhật thông tin trong bảng KhachHang
    UPDATE KhachHang
    SET HoTen = @HoTen,
        SDT = @SDT,
        Email = @Email,
        CCCD = @CCCD,
        GioiTinh = @GioiTinh
    WHERE MaTK = @MaTK;
END
GO



-- Lấy thông tin chi nhánh
GO
CREATE OR ALTER PROCEDURE USP_ThongTinChiNhanh 
    @DiaChiChiNhanh NVARCHAR(200)
AS
BEGIN
    -- Lấy thông tin chi nhánh theo địa chỉ chi nhánh
    SELECT TenCN, SDT, BaiDoXeHoi, BaiDoXeMay, 
        -- Trả về thời gian mở cửa và đóng cửa với định dạng HH:mm
        RIGHT('00' + CAST(DATEPART(HOUR, TgMoCua) AS VARCHAR(2)), 2) + ':' + 
        RIGHT('00' + CAST(DATEPART(MINUTE, TgMoCua) AS VARCHAR(2)), 2) AS ThoiGianMoCua,
        
        RIGHT('00' + CAST(DATEPART(HOUR, TgDongCua) AS VARCHAR(2)), 2) + ':' + 
        RIGHT('00' + CAST(DATEPART(MINUTE, TgDongCua) AS VARCHAR(2)), 2) AS ThoiGianDongCua
    FROM ChiNhanh
    WHERE DiaChi = @DiaChiChiNhanh;
END;
GO

-- Lấy thực đơn của chi nhánh
GO
CREATE OR ALTER PROCEDURE USP_ThucDonChiNhanh
    @LoaiPhieuDat NVARCHAR(50),
    @DiaChiChiNhanh NVARCHAR(200)
AS
BEGIN
    IF @LoaiPhieuDat = N'Đặt Bàn Trực Tuyến'
    BEGIN
        SELECT MA.TenMA AS DishName, Muc.TenMuc AS DishType, MA.GiaHienTai AS Price
		FROM dbo.ThucDon TD
		JOIN dbo.ChiNhanh CN ON CN.MaCN = TD.MaCN
		JOIN dbo.MonAn MA ON MA.MaMA = TD.MaMA
		JOIN dbo.Muc ON Muc.MaMuc = MA.MaMuc
		WHERE CN.DiaChi = @DiaChiChiNhanh AND TD.TinhTrangPhucVu = N'Có'
    END

    ELSE IF @LoaiPhieuDat = N'Giao Hàng Tận Nơi'
    BEGIN
        SELECT MA.TenMA AS DishName, Muc.TenMuc AS DishType, MA.GiaHienTai AS Price
		FROM dbo.ThucDon TD
		JOIN dbo.ChiNhanh CN ON CN.MaCN = TD.MaCN
		JOIN dbo.MonAn MA ON MA.MaMA = TD.MaMA
		JOIN dbo.Muc ON Muc.MaMuc = MA.MaMuc
		WHERE CN.DiaChi = @DiaChiChiNhanh AND TD.TinhTrangGiaoHang = N'Có'
    END
END;
GO

-- Tạo table type cho món ăn
CREATE TYPE dbo.CTPDType AS TABLE
(
    DishName NVARCHAR(50),
    Amount INT,
    Price INT,
    TotalAmount INT,
    Note NVARCHAR(200)
);
GO

-- Lập Phiếu Đặt Bàn Trực Tuyến
GO
CREATE OR ALTER PROCEDURE USP_DatBanTrucTuyen
    @TkLap VARCHAR(10),                    
    @DiaChiChiNhanh NVARCHAR(200),        
    @TdTruyCap DATETIME,                  
    @TgTruyCap INT,                       
    @SLKhach INT,                         
    @ThoiGianDen DATETIME,                
    @GhiChu NVARCHAR(200),                
    @CTPD dbo.CTPDType READONLY 
AS
BEGIN
    -- Biến để lưu MaPhieu mới
    DECLARE @MaPhieu VARCHAR(10);

    -- Tạo mã phiếu mới tự động
    DECLARE @MaxMaPhieu INT;
    SELECT @MaxMaPhieu = ISNULL(MAX(CAST(SUBSTRING(MaPhieu, 5, LEN(MaPhieu) - 4) AS INT)), 0)
    FROM PhieuDatBanTrucTuyen;

    SET @MaPhieu = 'PDOL' + FORMAT(@MaxMaPhieu + 1, '0000');

	DECLARE @MaCN VARCHAR(10);
	
	SELECT @MaCN = MaCN
	FROM ChiNhanh
	WHERE DiaChi = @DiaChiChiNhanh

    -- Bước 1: Nhập dữ liệu vào bảng PhieuDat
    INSERT INTO PhieuDat (MaPhieu, TinhTrangThanhToan, LoaiPD, MaCN, TkLap)
    VALUES (@MaPhieu, N'Chưa Thanh Toán', N'Trực Tuyến', @MaCN, @TkLap);

    -- Bước 2: Nhập dữ liệu vào bảng PhieuDatBanTrucTuyen
    INSERT INTO PhieuDatBanTrucTuyen (MaPhieu, TdTruyCap, TgTruyCap, SLKhach, ThoiGianDen, GhiChu)
    VALUES (@MaPhieu, @TdTruyCap, @TgTruyCap, @SLKhach, @ThoiGianDen, @GhiChu);

    -- Bước 3: Nhập dữ liệu vào bảng CTPD
    DECLARE @DishName NVARCHAR(50), @SoLuong INT, @DonGia INT, @ThanhTien INT, @GhiChuCTPD NVARCHAR(200);
    DECLARE @MaMA VARCHAR(10); -- Mã món ăn

    -- Lặp qua tất cả các món ăn được chọn trong TVP
    DECLARE cur CURSOR FOR
    SELECT DishName, Amount, Price, TotalAmount, Note
    FROM @CTPD;

    OPEN cur;
    FETCH NEXT FROM cur INTO @DishName, @SoLuong, @DonGia, @ThanhTien, @GhiChuCTPD;

    -- Lặp qua từng món ăn trong danh sách
    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Lấy MaMA từ bảng MonAn dựa trên TenMA
        SELECT @MaMA = MaMA FROM MonAn WHERE TenMA = @DishName;

        INSERT INTO CTPD (MaPhieu, MaMA, SoLuong, DonGia, ThanhTien, GhiChu)
        VALUES (@MaPhieu, @MaMA, @SoLuong, @DonGia, @ThanhTien, @GhiChuCTPD);

        FETCH NEXT FROM cur INTO @DishName, @SoLuong, @DonGia, @ThanhTien, @GhiChuCTPD;
    END

    CLOSE cur;
    DEALLOCATE cur;
END;
GO

-- Lập Phiếu Giao Hàng Tận Nơi
GO
CREATE OR ALTER PROCEDURE USP_GiaoHangTanNoi 
	@TkLap VARCHAR(10),                    
    @DiaChiChiNhanh NVARCHAR(200),        
    @TdTruyCap DATETIME,                  
    @TgTruyCap INT,                       
    @DiaChiNhan NVARCHAR(200),                          
    @SDTNhan VARCHAR(10),                 
    @GhiChu NVARCHAR(200),                
    @CTPD dbo.CTPDType READONLY
AS
BEGIN
    -- Biến để lưu MaPhieu mới
    DECLARE @MaPhieu VARCHAR(10);

    -- Tạo mã phiếu mới tự động
    DECLARE @MaxMaPhieu INT;
    SELECT @MaxMaPhieu = ISNULL(MAX(CAST(SUBSTRING(MaPhieu, 5, LEN(MaPhieu) - 4) AS INT)), 0)
    FROM PhieuDatGiaoHang;

    SET @MaPhieu = 'PDGH' + FORMAT(@MaxMaPhieu + 1, '0000');

	DECLARE @MaCN VARCHAR(10);
	
	SELECT @MaCN = MaCN
	FROM ChiNhanh
	WHERE DiaChi = @DiaChiChiNhanh

    -- Bước 1: Nhập dữ liệu vào bảng PhieuDat
    INSERT INTO PhieuDat (MaPhieu, TinhTrangThanhToan, LoaiPD, MaCN, TkLap)
    VALUES (@MaPhieu, N'Chưa Thanh Toán', N'Giao Hàng', @MaCN, @TkLap);

    -- Bước 2: Nhập dữ liệu vào bảng PhieuDatBanTrucTuyen
    INSERT INTO PhieuDatGiaoHang(MaPhieu, TdTruyCap, TgTruyCap, DiaChi, SDTNguoiNhan, GhiChuGH)
    VALUES (@MaPhieu, @TdTruyCap, @TgTruyCap, @DiaChiNhan, @SDTNhan, @GhiChu);

    -- Bước 3: Nhập dữ liệu vào bảng CTPD
    DECLARE @DishName NVARCHAR(50), @SoLuong INT, @DonGia INT, @ThanhTien INT, @GhiChuCTPD NVARCHAR(200);
    DECLARE @MaMA VARCHAR(10); -- Mã món ăn

    -- Lặp qua tất cả các món ăn được chọn trong TVP
    DECLARE cur CURSOR FOR
    SELECT DishName, Amount, Price, TotalAmount, Note
    FROM @CTPD;

    OPEN cur;
    FETCH NEXT FROM cur INTO @DishName, @SoLuong, @DonGia, @ThanhTien, @GhiChuCTPD;

    -- Lặp qua từng món ăn trong danh sách
    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Lấy MaMA từ bảng MonAn dựa trên TenMA
        SELECT @MaMA = MaMA FROM MonAn WHERE TenMA = @DishName;

        INSERT INTO CTPD (MaPhieu, MaMA, SoLuong, DonGia, ThanhTien, GhiChu)
        VALUES (@MaPhieu, @MaMA, @SoLuong, @DonGia, @ThanhTien, @GhiChuCTPD);

        -- Tiến đến món ăn tiếp theo
        FETCH NEXT FROM cur INTO @DishName, @SoLuong, @DonGia, @ThanhTien, @GhiChuCTPD;
    END

    CLOSE cur;
    DEALLOCATE cur;
END;
GO