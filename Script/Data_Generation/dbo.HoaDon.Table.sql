USE [QUAN_LY_NHA_HANG]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 17/12/2024 10:37:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [varchar](10) NOT NULL,
	[NgayLapHD] [datetime] NOT NULL,
	[TongTien] [int] NOT NULL,
	[TongTienDuocGiam] [int] NULL,
	[ThanhTien] [int] NOT NULL,
	[DiemCong] [int] NULL,
	[MaPhieu] [varchar](10) NULL,
	[MaThe] [varchar](10) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PS_HoaDon_NgayLapHD]([NgayLapHD])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_PhieuDat] FOREIGN KEY([MaPhieu])
REFERENCES [dbo].[PhieuDat] ([MaPhieu])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_PhieuDat]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_The] FOREIGN KEY([MaThe])
REFERENCES [dbo].[The] ([MaThe])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_The]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD CHECK  (([DiemCong]>=(0)))
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD CHECK  (([ThanhTien]>=(0)))
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD CHECK  (([TongTien]>(0)))
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD CHECK  (([TongTienDuocGiam]>=(0)))
GO
