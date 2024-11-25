USE [QUAN_LY_NHA_HANG]
GO
/****** Object:  Table [dbo].[KhuVuc]    Script Date: 16/11/2024 3:21:42 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuVuc](
	[MaKV] [varchar](10) NOT NULL,
	[TenKV] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV]) VALUES (N'KV000', N'Bắc Trung Bộ')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV]) VALUES (N'KV001', N'Đồng Bằng Sông Hồng')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV]) VALUES (N'KV002', N'Đông Nam Bộ')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV]) VALUES (N'KV003', N'Đông Bắc Bộ')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV]) VALUES (N'KV004', N'Nam Trung Bộ')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV]) VALUES (N'KV005', N'Đồng Bằng Sông Cửu Long')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV]) VALUES (N'KV006', N'Tây Bắc Bộ')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV]) VALUES (N'KV007', N'Tây Nguyên')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhuVuc__4CF99D0047C156CE]    Script Date: 16/11/2024 3:21:44 SA ******/
ALTER TABLE [dbo].[KhuVuc] ADD UNIQUE NONCLUSTERED 
(
	[TenKV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
