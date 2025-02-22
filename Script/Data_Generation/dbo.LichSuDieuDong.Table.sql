USE [QUAN_LY_NHA_HANG]
GO
/****** Object:  Table [dbo].[LichSuDieuDong]    Script Date: 17/12/2024 10:37:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuDieuDong](
	[MaCN] [varchar](10) NOT NULL,
	[MaTkNV] [varchar](10) NOT NULL,
	[NgayBD] [datetime] NOT NULL,
	[NgayKT] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCN] ASC,
	[MaTkNV] ASC,
	[NgayBD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LichSuDieuDong]  WITH CHECK ADD  CONSTRAINT [FK_LichSuDieuDong_ChiNhanh] FOREIGN KEY([MaCN])
REFERENCES [dbo].[ChiNhanh] ([MaCN])
GO
ALTER TABLE [dbo].[LichSuDieuDong] CHECK CONSTRAINT [FK_LichSuDieuDong_ChiNhanh]
GO
ALTER TABLE [dbo].[LichSuDieuDong]  WITH CHECK ADD  CONSTRAINT [FK_LichSuDieuDong_NhanVien] FOREIGN KEY([MaTkNV])
REFERENCES [dbo].[NhanVien] ([MaTK])
GO
ALTER TABLE [dbo].[LichSuDieuDong] CHECK CONSTRAINT [FK_LichSuDieuDong_NhanVien]
GO
