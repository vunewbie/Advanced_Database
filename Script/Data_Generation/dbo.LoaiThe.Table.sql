USE [QUAN_LY_NHA_HANG]
GO
/****** Object:  Table [dbo].[LoaiThe]    Script Date: 16/11/2024 3:21:42 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThe](
	[TenLoaiThe] [varchar](10) NOT NULL,
	[ChietKhau] [int] NULL,
	[GiamGia] [int] NULL,
	[SpTang] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[TenLoaiThe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LoaiThe] ([TenLoaiThe], [ChietKhau], [GiamGia], [SpTang]) VALUES (N'Gold', 10, 10, N'Gấu Bông')
INSERT [dbo].[LoaiThe] ([TenLoaiThe], [ChietKhau], [GiamGia], [SpTang]) VALUES (N'Membership', 0, 0, N'Bút')
INSERT [dbo].[LoaiThe] ([TenLoaiThe], [ChietKhau], [GiamGia], [SpTang]) VALUES (N'Silver', 5, 5, N'Mũ bảo hiểm')
GO
ALTER TABLE [dbo].[LoaiThe]  WITH CHECK ADD CHECK  (([ChietKhau]>=(0)))
GO
ALTER TABLE [dbo].[LoaiThe]  WITH CHECK ADD CHECK  (([GiamGia]>=(0)))
GO
ALTER TABLE [dbo].[LoaiThe]  WITH CHECK ADD CHECK  (([TenLoaiThe]='Gold' OR [TenLoaiThe]='Silver' OR [TenLoaiThe]='Membership'))
GO
