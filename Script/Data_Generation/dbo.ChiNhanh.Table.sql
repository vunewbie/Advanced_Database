USE [QUAN_LY_NHA_HANG]
GO
/****** Object:  Table [dbo].[ChiNhanh]    Script Date: 16/11/2024 3:21:42 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiNhanh](
	[MaCN] [varchar](10) NOT NULL,
	[TenCN] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[TgMoCua] [time](7) NULL,
	[TgDongCua] [time](7) NULL,
	[SDT] [varchar](10) NULL,
	[BaiDoXeMay] [nvarchar](5) NULL,
	[BaiDoXeHoi] [nvarchar](5) NULL,
	[MaKV] [varchar](10) NULL,
	[QuanLy] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiNhanh] ([MaCN], [TenCN], [DiaChi], [TgMoCua], [TgDongCua], [SDT], [BaiDoXeMay], [BaiDoXeHoi], [MaKV], [QuanLy]) VALUES (N'CN00', N'Sushi X Hà Nội', N'Khu đô thị Handi Resco, Đ. Phạm Văn Đồng, P, Bắc Từ Liêm, Hà Nội', CAST(N'07:00:00' AS Time), CAST(N'23:00:00' AS Time), N'0288467998', N'Không', N'Có', N'KV001', N'NV0000')
INSERT [dbo].[ChiNhanh] ([MaCN], [TenCN], [DiaChi], [TgMoCua], [TgDongCua], [SDT], [BaiDoXeMay], [BaiDoXeHoi], [MaKV], [QuanLy]) VALUES (N'CN01', N'Sushi X Kon Tum', N'CQ3X+M46, Hai Bà Trưng, TT. Sa Thầy, Sa Thầy, Kon Tum', CAST(N'07:00:00' AS Time), CAST(N'22:30:00' AS Time), N'0288633017', N'Có', N'Không', N'KV007', N'NV0001')
INSERT [dbo].[ChiNhanh] ([MaCN], [TenCN], [DiaChi], [TgMoCua], [TgDongCua], [SDT], [BaiDoXeMay], [BaiDoXeHoi], [MaKV], [QuanLy]) VALUES (N'CN02', N'Sushi X Thái Bình', N'Hoàng Diệu, Tp. Thái Bình, Thái Bình', CAST(N'08:00:00' AS Time), CAST(N'23:00:00' AS Time), N'0280253437', N'Không', N'Không', N'KV001', N'NV0002')
INSERT [dbo].[ChiNhanh] ([MaCN], [TenCN], [DiaChi], [TgMoCua], [TgDongCua], [SDT], [BaiDoXeMay], [BaiDoXeHoi], [MaKV], [QuanLy]) VALUES (N'CN03', N'Sushi X Bình Phước', N'254 QL13, Lộc Ninh, Bình Phước', CAST(N'07:00:00' AS Time), CAST(N'22:30:00' AS Time), N'0285936617', N'Có', N'Không', N'KV002', N'NV0003')
INSERT [dbo].[ChiNhanh] ([MaCN], [TenCN], [DiaChi], [TgMoCua], [TgDongCua], [SDT], [BaiDoXeMay], [BaiDoXeHoi], [MaKV], [QuanLy]) VALUES (N'CN04', N'Sushi X Thanh Hóa', N'52 Lương Hữu Khánh, P. Tân Sơn, Thanh Hóa', CAST(N'07:00:00' AS Time), CAST(N'22:00:00' AS Time), N'0283701011', N'Không', N'Có', N'KV000', N'NV0004')
INSERT [dbo].[ChiNhanh] ([MaCN], [TenCN], [DiaChi], [TgMoCua], [TgDongCua], [SDT], [BaiDoXeMay], [BaiDoXeHoi], [MaKV], [QuanLy]) VALUES (N'CN05', N'Sushi X Quảng Ninh', N'Đỗ Sĩ Họa, Bãi Cháy, Hạ Long, Quảng Ninh', CAST(N'08:00:00' AS Time), CAST(N'22:30:00' AS Time), N'0284534227', N'Có', N'Có', N'KV003', N'NV0005')
INSERT [dbo].[ChiNhanh] ([MaCN], [TenCN], [DiaChi], [TgMoCua], [TgDongCua], [SDT], [BaiDoXeMay], [BaiDoXeHoi], [MaKV], [QuanLy]) VALUES (N'CN06', N'Sushi X Hồ Chí Minh', N'15E Đ. Lê Thánh Tôn, Bến Nghé, Quận 1, Hồ Chí Minh', CAST(N'07:00:00' AS Time), CAST(N'23:00:00' AS Time), N'0285201215', N'Không', N'Không', N'KV002', N'NV0006')
INSERT [dbo].[ChiNhanh] ([MaCN], [TenCN], [DiaChi], [TgMoCua], [TgDongCua], [SDT], [BaiDoXeMay], [BaiDoXeHoi], [MaKV], [QuanLy]) VALUES (N'CN07', N'Sushi X Nha Trang', N'Thái Thông, Nha Trang, Khánh Hòa 650000', CAST(N'08:00:00' AS Time), CAST(N'23:00:00' AS Time), N'0282846026', N'Không', N'Có', N'KV004', N'NV0007')
INSERT [dbo].[ChiNhanh] ([MaCN], [TenCN], [DiaChi], [TgMoCua], [TgDongCua], [SDT], [BaiDoXeMay], [BaiDoXeHoi], [MaKV], [QuanLy]) VALUES (N'CN08', N'Sushi X Hà Tĩnh', N'138 Lê Duẩn, Trần Phú, Hà Tĩnh', CAST(N'07:00:00' AS Time), CAST(N'22:00:00' AS Time), N'0285344404', N'Có', N'Không', N'KV000', N'NV0008')
INSERT [dbo].[ChiNhanh] ([MaCN], [TenCN], [DiaChi], [TgMoCua], [TgDongCua], [SDT], [BaiDoXeMay], [BaiDoXeHoi], [MaKV], [QuanLy]) VALUES (N'CN09', N'Sushi X Vũng Tàu', N'03 Trần Phú, Phường 5, Vũng Tàu, Bà Rịa - Vũng Tàu', CAST(N'07:00:00' AS Time), CAST(N'22:00:00' AS Time), N'0281104623', N'Không', N'Có', N'KV002', N'NV0009')
INSERT [dbo].[ChiNhanh] ([MaCN], [TenCN], [DiaChi], [TgMoCua], [TgDongCua], [SDT], [BaiDoXeMay], [BaiDoXeHoi], [MaKV], [QuanLy]) VALUES (N'CN10', N'Sushi X Bình Dương', N'333 Đại lộ Bình Dương, Phú Thọ, Thủ Dầu Một, Bình Dương', CAST(N'08:00:00' AS Time), CAST(N'22:00:00' AS Time), N'0286971758', N'Có', N'Không', N'KV002', N'NV0010')
INSERT [dbo].[ChiNhanh] ([MaCN], [TenCN], [DiaChi], [TgMoCua], [TgDongCua], [SDT], [BaiDoXeMay], [BaiDoXeHoi], [MaKV], [QuanLy]) VALUES (N'CN11', N'Sushi X Hải Phòng', N'35A P. Văn Cao, Đằng Giang, Ngô Quyền, Hải Phòng 180000', CAST(N'08:00:00' AS Time), CAST(N'22:00:00' AS Time), N'0282783091', N'Có', N'Có', N'KV001', N'NV0011')
INSERT [dbo].[ChiNhanh] ([MaCN], [TenCN], [DiaChi], [TgMoCua], [TgDongCua], [SDT], [BaiDoXeMay], [BaiDoXeHoi], [MaKV], [QuanLy]) VALUES (N'CN12', N'Sushi X Tiền Giang', N'194 Ấp Bắc, Phường 5, Mỹ Tho, Tiền Giang', CAST(N'08:00:00' AS Time), CAST(N'22:30:00' AS Time), N'0281924867', N'Có', N'Không', N'KV005', N'NV0012')
INSERT [dbo].[ChiNhanh] ([MaCN], [TenCN], [DiaChi], [TgMoCua], [TgDongCua], [SDT], [BaiDoXeMay], [BaiDoXeHoi], [MaKV], [QuanLy]) VALUES (N'CN13', N'Sushi X Cần Thơ', N'KDL Cồn, Cái Khế, Ninh Kiều, Cần Thơ', CAST(N'08:00:00' AS Time), CAST(N'22:30:00' AS Time), N'0283714411', N'Có', N'Không', N'KV005', N'NV0013')
INSERT [dbo].[ChiNhanh] ([MaCN], [TenCN], [DiaChi], [TgMoCua], [TgDongCua], [SDT], [BaiDoXeMay], [BaiDoXeHoi], [MaKV], [QuanLy]) VALUES (N'CN14', N'Sushi X Cà Mau', N'57 Đường Ngô Gia Tự, Khóm 5, Cà Mau', CAST(N'07:00:00' AS Time), CAST(N'23:00:00' AS Time), N'0283088472', N'Có', N'Không', N'KV005', N'NV0014')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ChiNhanh__406A5319E9005AA8]    Script Date: 16/11/2024 3:21:44 SA ******/
ALTER TABLE [dbo].[ChiNhanh] ADD UNIQUE NONCLUSTERED 
(
	[DiaChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ChiNhanh__CA1930A5E589DEAE]    Script Date: 16/11/2024 3:21:44 SA ******/
ALTER TABLE [dbo].[ChiNhanh] ADD UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiNhanh]  WITH CHECK ADD  CONSTRAINT [FK_ChiNhanh_KhuVuc] FOREIGN KEY([MaKV])
REFERENCES [dbo].[KhuVuc] ([MaKV])
GO
ALTER TABLE [dbo].[ChiNhanh] CHECK CONSTRAINT [FK_ChiNhanh_KhuVuc]
GO
ALTER TABLE [dbo].[ChiNhanh]  WITH CHECK ADD  CONSTRAINT [FK_ChiNhanh_NhanVien] FOREIGN KEY([QuanLy])
REFERENCES [dbo].[NhanVien] ([MaTK])
GO
ALTER TABLE [dbo].[ChiNhanh] CHECK CONSTRAINT [FK_ChiNhanh_NhanVien]
GO
ALTER TABLE [dbo].[ChiNhanh]  WITH CHECK ADD CHECK  (([BaiDoXeMay]=N'Không' OR [BaiDoXeMay]=N'Có'))
GO
ALTER TABLE [dbo].[ChiNhanh]  WITH CHECK ADD CHECK  (([BaiDoXeHoi]=N'Không' OR [BaiDoXeHoi]=N'Có'))
GO
