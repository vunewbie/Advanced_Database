USE [QUAN_LY_NHA_HANG]
GO
/****** Object:  Table [dbo].[PhieuDatBanTrucTuyen]    Script Date: 17/12/2024 10:37:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatBanTrucTuyen](
	[MaPhieu] [varchar](10) NOT NULL,
	[TdTruyCap] [datetime] NOT NULL,
	[TgTruyCap] [int] NOT NULL,
	[SLKhach] [int] NOT NULL,
	[ThoiGianDen] [datetime] NOT NULL,
	[GhiChu] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PhieuDatBanTrucTuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatBanTrucTuyen_PhieuDat] FOREIGN KEY([MaPhieu])
REFERENCES [dbo].[PhieuDat] ([MaPhieu])
GO
ALTER TABLE [dbo].[PhieuDatBanTrucTuyen] CHECK CONSTRAINT [FK_PhieuDatBanTrucTuyen_PhieuDat]
GO
