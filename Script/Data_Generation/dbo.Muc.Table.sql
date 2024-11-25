USE [QUAN_LY_NHA_HANG]
GO
/****** Object:  Table [dbo].[Muc]    Script Date: 16/11/2024 3:21:42 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Muc](
	[MaMuc] [varchar](10) NOT NULL,
	[TenMuc] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Muc] ([MaMuc], [TenMuc]) VALUES (N'MUC000', N'SuShi Cake')
INSERT [dbo].[Muc] ([MaMuc], [TenMuc]) VALUES (N'MUC001', N'Sashimi')
INSERT [dbo].[Muc] ([MaMuc], [TenMuc]) VALUES (N'MUC002', N'Sushi')
INSERT [dbo].[Muc] ([MaMuc], [TenMuc]) VALUES (N'MUC003', N'Salad')
INSERT [dbo].[Muc] ([MaMuc], [TenMuc]) VALUES (N'MUC004', N'Maki')
INSERT [dbo].[Muc] ([MaMuc], [TenMuc]) VALUES (N'MUC005', N'Tempura')
INSERT [dbo].[Muc] ([MaMuc], [TenMuc]) VALUES (N'MUC006', N'Yakimono')
INSERT [dbo].[Muc] ([MaMuc], [TenMuc]) VALUES (N'MUC007', N'Set Lunch')
INSERT [dbo].[Muc] ([MaMuc], [TenMuc]) VALUES (N'MUC008', N'Khai Vị')
INSERT [dbo].[Muc] ([MaMuc], [TenMuc]) VALUES (N'MUC009', N'Shashimi Combo')
INSERT [dbo].[Muc] ([MaMuc], [TenMuc]) VALUES (N'MUC010', N'Nigiri')
INSERT [dbo].[Muc] ([MaMuc], [TenMuc]) VALUES (N'MUC011', N'Udon')
INSERT [dbo].[Muc] ([MaMuc], [TenMuc]) VALUES (N'MUC012', N'Hotpot')
INSERT [dbo].[Muc] ([MaMuc], [TenMuc]) VALUES (N'MUC013', N'Nước Uống')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Muc__332E845ADCFFD0DE]    Script Date: 16/11/2024 3:21:44 SA ******/
ALTER TABLE [dbo].[Muc] ADD UNIQUE NONCLUSTERED 
(
	[TenMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
