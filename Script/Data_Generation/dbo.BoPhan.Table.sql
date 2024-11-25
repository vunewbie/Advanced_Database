USE [QUAN_LY_NHA_HANG]
GO
/****** Object:  Table [dbo].[BoPhan]    Script Date: 16/11/2024 3:21:42 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoPhan](
	[MaBP] [varchar](10) NOT NULL,
	[TenBP] [nvarchar](50) NULL,
	[Luong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BoPhan] ([MaBP], [TenBP], [Luong]) VALUES (N'BP000', N'Đầu bếp', 20000000)
INSERT [dbo].[BoPhan] ([MaBP], [TenBP], [Luong]) VALUES (N'BP001', N'Sơ chế', 5000000)
INSERT [dbo].[BoPhan] ([MaBP], [TenBP], [Luong]) VALUES (N'BP002', N'Vệ Sinh', 10000000)
INSERT [dbo].[BoPhan] ([MaBP], [TenBP], [Luong]) VALUES (N'BP003', N'Bảo Vệ', 7000000)
INSERT [dbo].[BoPhan] ([MaBP], [TenBP], [Luong]) VALUES (N'BP004', N'Lễ Tân', 15000000)
INSERT [dbo].[BoPhan] ([MaBP], [TenBP], [Luong]) VALUES (N'BP005', N'Phục Vụ', 12000000)
INSERT [dbo].[BoPhan] ([MaBP], [TenBP], [Luong]) VALUES (N'BP006', N'Vận Chuyển', 18000000)
INSERT [dbo].[BoPhan] ([MaBP], [TenBP], [Luong]) VALUES (N'BP007', N'Chăm Sóc Khách Hàng', 9000000)
INSERT [dbo].[BoPhan] ([MaBP], [TenBP], [Luong]) VALUES (N'BP008', N'Quản Lý', 25000000)
INSERT [dbo].[BoPhan] ([MaBP], [TenBP], [Luong]) VALUES (N'BP009', N'Kế Toán', 16000000)
INSERT [dbo].[BoPhan] ([MaBP], [TenBP], [Luong]) VALUES (N'BP010', N'Đòi Nợ', 3000000)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__BoPhan__4CF95A211113D8D4]    Script Date: 16/11/2024 3:21:44 SA ******/
ALTER TABLE [dbo].[BoPhan] ADD UNIQUE NONCLUSTERED 
(
	[TenBP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BoPhan]  WITH CHECK ADD CHECK  (([LUONG]>(0)))
GO
