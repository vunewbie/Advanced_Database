USE [QUAN_LY_NHA_HANG]
GO
/****** Object:  Table [dbo].[PhieuDatGiaoHang]    Script Date: 17/12/2024 10:37:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatGiaoHang](
	[MaPhieu] [varchar](10) NOT NULL,
	[TdTruyCap] [datetime] NOT NULL,
	[TgTruyCap] [int] NOT NULL,
	[DiaChi] [nvarchar](200) NOT NULL,
	[SDTNguoiNhan] [varchar](10) NOT NULL,
	[GhiChuGH] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PhieuDatGiaoHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatGiaoHang_PhieuDat] FOREIGN KEY([MaPhieu])
REFERENCES [dbo].[PhieuDat] ([MaPhieu])
GO
ALTER TABLE [dbo].[PhieuDatGiaoHang] CHECK CONSTRAINT [FK_PhieuDatGiaoHang_PhieuDat]
GO
