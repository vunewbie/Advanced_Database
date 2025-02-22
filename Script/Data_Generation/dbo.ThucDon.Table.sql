USE [QUAN_LY_NHA_HANG]
GO
/****** Object:  Table [dbo].[ThucDon]    Script Date: 17/12/2024 10:37:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThucDon](
	[MaCN] [varchar](10) NOT NULL,
	[MaMA] [varchar](10) NOT NULL,
	[TinhTrangPhucVu] [nvarchar](5) NULL,
	[TinhTrangGiaoHang] [nvarchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCN] ASC,
	[MaMA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ThucDon]  WITH CHECK ADD  CONSTRAINT [FK_ThucDon_ChiNhanh] FOREIGN KEY([MaCN])
REFERENCES [dbo].[ChiNhanh] ([MaCN])
GO
ALTER TABLE [dbo].[ThucDon] CHECK CONSTRAINT [FK_ThucDon_ChiNhanh]
GO
ALTER TABLE [dbo].[ThucDon]  WITH CHECK ADD  CONSTRAINT [FK_ThucDon_MonAn] FOREIGN KEY([MaMA])
REFERENCES [dbo].[MonAn] ([MaMA])
GO
ALTER TABLE [dbo].[ThucDon] CHECK CONSTRAINT [FK_ThucDon_MonAn]
GO
ALTER TABLE [dbo].[ThucDon]  WITH CHECK ADD CHECK  (([TinhTrangPhucVu]=N'Không' OR [TinhTrangPhucVu]=N'Có'))
GO
ALTER TABLE [dbo].[ThucDon]  WITH CHECK ADD CHECK  (([TinhTrangGiaoHang]=N'Không' OR [TinhTrangGiaoHang]=N'Có'))
GO
