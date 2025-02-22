USE [QUAN_LY_NHA_HANG]
GO
/****** Object:  Table [dbo].[The]    Script Date: 17/12/2024 10:37:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[The](
	[MaThe] [varchar](10) NOT NULL,
	[NgayLap] [datetime] NULL,
	[NgayBDChuKy] [datetime] NULL,
	[TongDiem] [int] NULL,
	[TongDiemDuyTri] [int] NULL,
	[TinhTrang] [nvarchar](4) NOT NULL,
	[TenLoaiThe] [varchar](10) NOT NULL,
	[TkSoHuu] [varchar](10) NOT NULL,
	[TkLap] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[The]  WITH CHECK ADD  CONSTRAINT [FK_The_KhachHang] FOREIGN KEY([TkSoHuu])
REFERENCES [dbo].[KhachHang] ([MaTK])
GO
ALTER TABLE [dbo].[The] CHECK CONSTRAINT [FK_The_KhachHang]
GO
ALTER TABLE [dbo].[The]  WITH CHECK ADD  CONSTRAINT [FK_The_LoaiThe] FOREIGN KEY([TenLoaiThe])
REFERENCES [dbo].[LoaiThe] ([TenLoaiThe])
GO
ALTER TABLE [dbo].[The] CHECK CONSTRAINT [FK_The_LoaiThe]
GO
ALTER TABLE [dbo].[The]  WITH CHECK ADD  CONSTRAINT [FK_The_NhanVien] FOREIGN KEY([TkLap])
REFERENCES [dbo].[NhanVien] ([MaTK])
GO
ALTER TABLE [dbo].[The] CHECK CONSTRAINT [FK_The_NhanVien]
GO
ALTER TABLE [dbo].[The]  WITH CHECK ADD CHECK  (([TinhTrang]=N'Đóng' OR [TinhTrang]=N'Mở'))
GO
ALTER TABLE [dbo].[The]  WITH CHECK ADD CHECK  (([TongDiem]>=(0)))
GO
ALTER TABLE [dbo].[The]  WITH CHECK ADD CHECK  (([TongDiemDuyTri]>=(0)))
GO
