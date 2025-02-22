USE [QUAN_LY_NHA_HANG]
GO
/****** Object:  Table [dbo].[PhieuDat]    Script Date: 17/12/2024 10:37:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDat](
	[MaPhieu] [varchar](10) NOT NULL,
	[TinhTrangThanhToan] [nvarchar](15) NOT NULL,
	[LoaiPD] [nvarchar](20) NOT NULL,
	[MaCN] [varchar](10) NULL,
	[TkLap] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PhieuDat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDat_ChiNhanh] FOREIGN KEY([MaCN])
REFERENCES [dbo].[ChiNhanh] ([MaCN])
GO
ALTER TABLE [dbo].[PhieuDat] CHECK CONSTRAINT [FK_PhieuDat_ChiNhanh]
GO
ALTER TABLE [dbo].[PhieuDat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDat_TaiKhoan] FOREIGN KEY([TkLap])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[PhieuDat] CHECK CONSTRAINT [FK_PhieuDat_TaiKhoan]
GO
ALTER TABLE [dbo].[PhieuDat]  WITH CHECK ADD CHECK  (([LoaiPD]=N'Giao Hàng' OR [LoaiPD]=N'Trực Tuyến' OR [LoaiPD]=N'Trực Tiếp'))
GO
ALTER TABLE [dbo].[PhieuDat]  WITH CHECK ADD CHECK  (([TinhTrangThanhToan]=N'Chưa Thanh Toán' OR [TinhTrangThanhToan]=N'Đã Thanh Toán'))
GO
