USE [qlmhdt]
GO
/****** Object:  Table [dbo].[Catalog]    Script Date: 3/25/2018 11:04:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog](
	[CatalogID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Actice] [bit] NULL CONSTRAINT [DF_Catalog_Actice]  DEFAULT ((0)),
	[IsDelete] [bit] NULL CONSTRAINT [DF_Catalog_IsDelete]  DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[CatalogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/25/2018 11:05:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[NameCustomer] [nvarchar](30) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
	[Phone] [char](12) NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/25/2018 11:05:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ProductID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/25/2018 11:05:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[CatalogID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Image] [nvarchar](255) NULL,
	[Describe] [ntext] NOT NULL,
	[Content] [ntext] NOT NULL,
	[Price] [float] NOT NULL,
	[Sale] [float] NULL,
	[Amount] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[IsDelete] [bit] NULL CONSTRAINT [DF_Product_IsDelete]  DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/25/2018 11:05:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 3/25/2018 11:05:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Avatar] [nvarchar](255) NULL,
	[FullName] [nvarchar](30) NOT NULL,
	[UserName] [nvarchar](30) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[Sex] [bit] NULL,
	[Address] [nvarchar](255) NULL,
	[Phone] [char](12) NULL,
	[IsLock] [bit] NULL CONSTRAINT [DF_User_IsLock]  DEFAULT ((0)),
	[IsDelete] [bit] NULL CONSTRAINT [DF_User_IsDelete]  DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Catalog] ON 

INSERT [dbo].[Catalog] ([CatalogID], [Name], [Actice], [IsDelete]) VALUES (1, N'Smartphone', NULL, NULL)
INSERT [dbo].[Catalog] ([CatalogID], [Name], [Actice], [IsDelete]) VALUES (2, N'Mouse', NULL, NULL)
INSERT [dbo].[Catalog] ([CatalogID], [Name], [Actice], [IsDelete]) VALUES (3, N'CPU', NULL, NULL)
INSERT [dbo].[Catalog] ([CatalogID], [Name], [Actice], [IsDelete]) VALUES (4, N'Keyboard', NULL, NULL)
INSERT [dbo].[Catalog] ([CatalogID], [Name], [Actice], [IsDelete]) VALUES (5, N'Laptop', NULL, NULL)
INSERT [dbo].[Catalog] ([CatalogID], [Name], [Actice], [IsDelete]) VALUES (6, N'Mainboard', NULL, NULL)
INSERT [dbo].[Catalog] ([CatalogID], [Name], [Actice], [IsDelete]) VALUES (7, N'Monitor', NULL, NULL)
INSERT [dbo].[Catalog] ([CatalogID], [Name], [Actice], [IsDelete]) VALUES (8, N'CoolAir', NULL, NULL)
INSERT [dbo].[Catalog] ([CatalogID], [Name], [Actice], [IsDelete]) VALUES (9, N'PSU', NULL, NULL)
INSERT [dbo].[Catalog] ([CatalogID], [Name], [Actice], [IsDelete]) VALUES (10, N'RAM', NULL, NULL)
INSERT [dbo].[Catalog] ([CatalogID], [Name], [Actice], [IsDelete]) VALUES (11, N'Case', NULL, NULL)
INSERT [dbo].[Catalog] ([CatalogID], [Name], [Actice], [IsDelete]) VALUES (12, N'Stronges', NULL, NULL)
INSERT [dbo].[Catalog] ([CatalogID], [Name], [Actice], [IsDelete]) VALUES (13, N'Tablet', NULL, NULL)
INSERT [dbo].[Catalog] ([CatalogID], [Name], [Actice], [IsDelete]) VALUES (14, N'USB', NULL, NULL)
INSERT [dbo].[Catalog] ([CatalogID], [Name], [Actice], [IsDelete]) VALUES (15, N'VGA', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Catalog] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (1, 1, N'OPPO A37', N'Avt_OPPO_A37.png', N'Điện thoại thông minh thế hệ mới', N'Hệ điều hành Android 5.1.1', 3300000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (2, 1, N'OPPO A83', N'Avt_OPPO_A83.png', N'Màn hình tràn viền - Sang trọng và thời thượng', N'Camera sau tăng cường góc máy', 4590000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (3, 1, N'Huawei Nova 2i', N'Avt_Galaxy_A7.png', N'Điện mời đời mới với hệ điều hành Window 8.1', N'Thiết kế nhỏ gọn, kiểu dáng sang trọng', 5990000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (4, 1, N'Galaxy A7', N'Avt_Galaxy_A7.png', N'Chế tác tinh xảo', N'Kính cao cấp cong 2.5D ở mặt sau', 6790000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (5, 1, N'Galaxy j7', N'Avt_J7.png', N'Thiết kế kim loại nguyên khối', N'2 camera sau với 13MP và 5MP', 8890000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (6, 1, N'Galaxy Note8', N'Avt_Note8.png', N'Thiết kế khung kim loại với 2 mặt kính cường lực', N'Màn hình cong viền hoàn hảo', 8890000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (7, 1, N'HTC U UlltraSapphire', N'Avt_HTC_U_UlltraSapphire.png', N'Thiết kế bề mặt trong suốt', N'Phản ánh hình chiếu cực đẹp', 8890000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (8, 1, N'Iphone 6', N'Avt_Iphone6.png', N'Với bộ nhờ bên trong lên đến 32GB', N'Thiết kế nhôm nguyên khối', 3200000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (9, 1, N'Iphone 8', N'Avt_Iphone8.png', N'Thiết kế sang trọng từ kính và kim loại', N'Phong cách bóng bẩy và tinh tế', 10990000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (10, 1, N'Iphone X', N'Avt_IphoneX.png', N'Thiết kế toàn màn hình với đường viền siêu mỏng', N'Sang trọng và đẳng cấp', 21590000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (11, 1, N'Motorona Z2 Play', N'Avt_Moto_Z2Play.png', N'Thiết kế trẻ trung, đơn giản', N'Góc bo bầu bĩnh giúp thoải mái khi cầm', 6799000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (12, 1, N'OPPO F3 Plus', N'Avt_OPPO_F3Pluss.png', N'Thiết kế vỏ kim loại nguyên khối, sang trọng', N'Màn hình 6inch full HD', 6890000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (13, 1, N'OPPO F5', N'Avt_OPPO_F5.png', N'Sang trọng và đẳng cấp', N'Phù hợp với các doanh nhân thành đạt', 12890000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (15, 1, N'Sony AZ', N'Avt_XZs.png', N'Thiết kế sang trọng với đường viền siêu mỏng', N'Đẳng cấp là sức mạnh', 4290000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (30, 1, N'Sony Xperia XA1 Ultra', N'Avt_XA1Ulltra.png', N'Kế nhiệm sự thành công của phablet không viền Sony Xperia XA Ultra thì Sony giới thiệu phiên bản XA1 Ultra với nhiều cải tiến đáng giá', N'Sony XA1 Ultra vẫn sở hữu cho mình phong cách thiết kế edge-to-edge với viền bezel siêu mỏng và "sexy".', 8490000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (31, 2, N'Chuột máy tính Aditech', N'A521.jpg', N'Thiết kế nhẹ gọn nhẹ, kiểu sáng sang trọng', N'Tạo cảm giác cầm thoải mái', 269000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (32, 2, N'Chuột máy tính Blue', N'Blue.jpg', N'Thiết kế nhẹ gọn nhẹ, kiểu sáng sang trọng', N'Tạo cảm giác cầm thoải mái', 269000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (33, 2, N'Chuột máy tính Bosston', N'X14.jpg', N'Thiết kế nhẹ gọn nhẹ, kiểu sáng sang trọng', N'Tạo cảm giác cầm thoải mái', 269000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (34, 2, N'Chuột máy tính E_Blue', N'EMS_146.jpg', N'Thiết kế nhẹ gọn nhẹ, kiểu sáng sang trọng', N'Tạo cảm giác cầm thoải mái', 269000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (35, 2, N'Chuột máy tính Fuhlen', N'X100.jpg', N'Thiết kế nhẹ gọn nhẹ, kiểu sáng sang trọng', N'Tạo cảm giác cầm thoải mái', 269000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (36, 2, N'Chuột máy tính HP', N'Z3700.jpg', N'Thiết kế nhẹ gọn nhẹ, kiểu sáng sang trọng', N'Tạo cảm giác cầm thoải mái', 269000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (37, 2, N'Chuột máy tính LDk', N'GM10.jpg', N'Thiết kế nhẹ gọn nhẹ, kiểu sáng sang trọng', N'Tạo cảm giác cầm thoải mái', 269000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (38, 2, N'Chuột máy tính Logitech', N'M331.jpg', N'Thiết kế nhẹ gọn nhẹ, kiểu sáng sang trọng', N'Tạo cảm giác cầm thoải mái', 269000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (39, 2, N'Chuột máy tính Mazer', N'Mazer.jpg', N'Thiết kế nhẹ gọn nhẹ, kiểu sáng sang trọng', N'Tạo cảm giác cầm thoải mái', 269000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (40, 2, N'Chuột máy tính Microsoft', N'1850p.jpg', N'Thiết kế nhẹ gọn nhẹ, kiểu sáng sang trọng', N'Tạo cảm giác cầm thoải mái', 269000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (41, 2, N'Chuột máy tính Newmen', N'f278.jpg', N'Thiết kế nhẹ gọn nhẹ, kiểu sáng sang trọng', N'Tạo cảm giác cầm thoải mái', 269000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (42, 2, N'Chuột máy tính Prolink', N'PMO630u.jpg', N'Thiết kế nhẹ gọn nhẹ, kiểu sáng sang trọng', N'Tạo cảm giác cầm thoải mái', 269000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (43, 2, N'Chuột máy tính Rapoo', N'3100p.jpg', N'Thiết kế nhẹ gọn nhẹ, kiểu sáng sang trọng', N'Tạo cảm giác cầm thoải mái', 269000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (44, 2, N'Chuột máy tính Redragon', N'M703.jpg', N'Thiết kế nhẹ gọn nhẹ, kiểu sáng sang trọng', N'Tạo cảm giác cầm thoải mái', 269000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (45, 2, N'Chuột máy tính Titan', N'MB01.jpg', N'Thiết kế nhẹ gọn nhẹ, kiểu sáng sang trọng', N'Tạo cảm giác cầm thoải mái', 269000, 0, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (46, 3, N'Intel Core i3-7100 Processor (3M Cache, 3.90 GHz)', N'Intel%20Core%20i3-7100%20Processor%20(3M%20Cache,%203.90%20GHz).jpg', N'Intel Core i3-7100 Processor (3M Cache, 3.90 GHz)', N'Intel Core i3-7100 Processor (3M Cache, 3.90 GHz)', 25, 20, 43, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (47, 3, N'Intel Core i3-8100 (3.6Ghz, 6Mb cache, Socket 1151 v2) Coffee Lake', N'Intel%20Core%20i3-8100%20(3.6Ghz,%206Mb%20cache,%20Socket%201151%20v2)%20Coffee%20Lake.jpg', N'Intel Core i3-8100 (3.6Ghz, 6Mb cache, Socket 1151 v2) Coffee Lake', N'Intel Core i3-8100 (3.6Ghz, 6Mb cache, Socket 1151 v2) Coffee Lake', 45, 15, 54, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (48, 3, N'Intel Core i3-8350K (4.0Ghz_8Mb cache_Socket 1151 v2 ) Coffee Lake - No fan', N'Intel%20Core%20i3-8350K%20(4.0Ghz_8Mb%20cache_Socket%201151%20v2%20)%20Coffee%20Lake%20-%20No%20fan.jpg', N'Intel Core i3-8350K (4.0Ghz_8Mb cache_Socket 1151 v2 ) Coffee Lake - No fan', N'Intel Core i3-8350K (4.0Ghz_8Mb cache_Socket 1151 v2 ) Coffee Lake - No fan', 34, 5, 54, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (49, 3, N'Intel Core i3-6100 Processor (3M Cache, 3.70 GHz)_SK1151', N'Intel®%20Core™%20i3-6100%20Processor%20(3M%20Cache,%203.70%20GHz)_SK1151.jpg', N'Intel Core i3-6100 Processor (3M Cache, 3.70 GHz)_SK1151', N'Intel Core i3-6100 Processor (3M Cache, 3.70 GHz)_SK1151', 54, 10, 54, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (50, 3, N'Intel Core i5-4460 Processor (6M Cache, up to 3.40 GHz)-Box', N'Intel%20Core%20i5-4460%20Processor%20(6M%20Cache,%20up%20to%203.40%20GHz)-Box.jpg', N'Intel Core i5-4460 Processor (6M Cache, up to 3.40 GHz)-Box', N'Intel Core i5-4460 Processor (6M Cache, up to 3.40 GHz)-Box', 45, 20, 4, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (51, 3, N'Intel Core i5-7400 (6M Cache, 3.0GHz) SK 1151 Box', N'Intel%20Core%20i5-7400%20(6M%20Cache,%203.0GHz)%20SK%201151%20Box.jpg', N'Intel Core i5-7400 (6M Cache, 3.0GHz) SK 1151 Box', N'Intel Core i5-7400 (6M Cache, 3.0GHz) SK 1151 Box', 43, 20, 43, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (52, 3, N'Intel Core i5-7600 (6M Cache, 3.5GHz) SK 1151 Box', N'Intel%20Core%20i5-7600%20(6M%20Cache,%203.5GHz)%20SK%201151%20Box.jpg', N'Intel Core i5-7600 (6M Cache, 3.5GHz) SK 1151 Box', N'Intel Core i5-7600 (6M Cache, 3.5GHz) SK 1151 Box', 54, 5, 43, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (53, 3, N'Intel Core i5-7640X X-series Processor (6M Cache, up to 4.20 GHz)', N'Intel%20Core%20i5-7640X%20X-series%20Processor%20(6M%20Cache,%20up%20to%204.20%20GHz).jpg', N'Intel Core i5-7640X X-series Processor (6M Cache, up to 4.20 GHz)', N'Intel Core i5-7640X X-series Processor (6M Cache, up to 4.20 GHz)', 65, 5, 43, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (54, 3, N'Intel Core™ i5-6402P Processor (6M Cache, up to 3.40 GHz)', N'Intel%20Core™%20i5-6402P%20Processor%20(6M%20Cache,%20up%20to%203.40%20GHz).jpg', N'Intel Core™ i5-6402P Processor (6M Cache, up to 3.40 GHz)', N'Intel Core™ i5-6402P Processor (6M Cache, up to 3.40 GHz)', 43, 10, 43, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (55, 3, N'Intel Core i7-7800X X-series Processor (8.25M Cache, up to 4.00 GHz)', N'Intel%20Core%20i7-7800X%20X-series%20Processor%20(8.25M%20Cache,%20up%20to%204.00%20GHz).jpg', N'Intel Core i7-7800X X-series Processor (8.25M Cache, up to 4.00 GHz)', N'Intel Core i7-7800X X-series Processor (8.25M Cache, up to 4.00 GHz)', 32, 12, 65, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (56, 3, N'Intel Core i7-7820X X-series Processor (11M Cache, up to 4.30 GHz)', N'Intel%20Core%20i7-7820X%20X-series%20Processor%20(11M%20Cache,%20up%20to%204.30%20GHz).jpg', N'Intel Core i7-7820X X-series Processor (11M Cache, up to 4.30 GHz)', N'Intel Core i7-7820X X-series Processor (11M Cache, up to 4.30 GHz)', 34, 23, 43, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (57, 3, N'Intel Core i9-7900X X-series Processor (13.75M Cache, up to 4.30 GHz)', N'Intel%20Core%20i9-7900X%20X-series%20Processor%20(13.75M%20Cache,%20up%20to%204.30%20GHz).jpg', N'Intel Core i9-7900X X-series Processor (13.75M Cache, up to 4.30 GHz)', N'Intel Core i9-7900X X-series Processor (13.75M Cache, up to 4.30 GHz)', 22, 54, 34, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (58, 3, N'Intel Core i9-7980XE Extreme Edition Processor (24.75M Cache, up to 4.20 GHz)', N'Intel%20Core%20i9-7980XE%20Extreme%20Edition%20Processor%20(24.75M%20Cache,%20up%20to%204.20%20GHz).png', N'Intel Core i9-7980XE Extreme Edition Processor (24.75M Cache, up to 4.20 GHz)', N'Intel Core i9-7980XE Extreme Edition Processor (24.75M Cache, up to 4.20 GHz)', 43, 43, 32, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (59, 3, N'Intel Pentium G3260 3.3GHz _3MB_ Socket 1150', N'Intel%20Pentium%20G3260%203.3GHz%20_3MB_%20Socket%201150.jpg', N'Intel Pentium G3260 3.3GHz _3MB_ Socket 1150', N'Intel Pentium G3260 3.3GHz _3MB_ Socket 1150', 3, 23, 32, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (60, 3, N'Intel Pentium Processor G2020 (3M Cache, 2.90 GHz) - Box', N'Intel%20Pentium%20Processor%20G2020%20(3M%20Cache,%202.90%20GHz)%20-%20Box.jpg', N'Intel Pentium Processor G2020 (3M Cache, 2.90 GHz) - Box', N'Intel Pentium Processor G2020 (3M Cache, 2.90 GHz) - Box', 223, 43, 23, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (61, 3, N'Intel Pentium Processor G4400 (3M Cache, 3.30 GHz)', N'Intel%20Pentium%20Processor%20G4400%20(3M%20Cache,%203.30%20GHz).jpg', N'Intel Pentium Processor G4400 (3M Cache, 3.30 GHz)', N'Intel Pentium Processor G4400 (3M Cache, 3.30 GHz)', 32, 54, 32, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (62, 3, N'Intel Xeon E3 1230V6 (3.5Ghz_8Mb cache)', N'Intel%20Xeon%20E3%201230V6%20(3.5Ghz_8Mb%20cache).jpg', N'Intel Xeon E3 1230V6 (3.5Ghz_8Mb cache)', N'Intel Xeon E3 1230V6 (3.5Ghz_8Mb cache)', 12, 23, 31, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (63, 3, N'Intel Xeon E5-2696v4 LGA2011-3', N'Intel%20Xeon%20E5-2696v4%20LGA2011-3.jpg', N'Intel Xeon E5-2696v4 LGA2011-3', N'Intel Xeon E5-2696v4 LGA2011-3', 43, 4, 32, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (64, 3, N'Intel Xeon Processor E5-2620 V4', N'Intel%20Xeon%20Processor%20E5-2620%20V4.jpg', N'Intel Xeon Processor E5-2620 V4', N'Intel Xeon Processor E5-2620 V4', 23, 32, 43, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (65, 3, N'AMD RYZEN 5 1500X 4-Core 3.5 GHz (3.7 GHz Turbo) Socket AM4', N'AMD%20RYZEN%205%201500X%204-Core%203.5%20GHz%20(3.7%20GHz%20Turbo)%20Socket%20AM4.jpg', N'AMD RYZEN 5 1500X 4-Core 3.5 GHz (3.7 GHz Turbo) Socket AM4', N'AMD RYZEN 5 1500X 4-Core 3.5 GHz (3.7 GHz Turbo) Socket AM4', 23, 12, 32, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (66, 3, N'AMD RYZEN 7 1700 8-Core 3.0 GHz (3.7 GHz Turbo) Socket AM4', N'AMD%20RYZEN%207%201700%208-Core%203.0%20GHz%20(3.7%20GHz%20Turbo)%20Socket%20AM4.jpg', N'AMD RYZEN 7 1700 8-Core 3.0 GHz (3.7 GHz Turbo) Socket AM4', N'AMD RYZEN 7 1700 8-Core 3.0 GHz (3.7 GHz Turbo) Socket AM4', 2, 32, 23, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (67, 3, N'AMD RYZEN 7 1800X 8-Core 3.6 GHz (4.0 GHz Turbo) Socket AM4', N'AMD%20RYZEN%207%201800X%208-Core%203.6%20GHz%20(4.0%20GHz%20Turbo)%20Socket%20AM4.jpg', N'AMD RYZEN 7 1800X 8-Core 3.6 GHz (4.0 GHz Turbo) Socket AM4', N'AMD RYZEN 7 1800X 8-Core 3.6 GHz (4.0 GHz Turbo) Socket AM4', 32, 12, 43, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (68, 3, N'AMD Threadripper 1920X 3.5 GHz_32MB _12_cores 24 threads_socket TR4 (no Fan)', N'AMD%20Threadripper%201920X%203.5%20GHz_32MB%20_12_cores%2024%20threads_socket%20TR4%20(no%20Fan).png', N'AMD Threadripper 1920X 3.5 GHz_32MB _12_cores 24 threads_socket TR4 (no Fan)', N'AMD Threadripper 1920X 3.5 GHz_32MB _12_cores 24 threads_socket TR4 (no Fan)', 32, 12, 32, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (69, 3, N'AMD Threadripper 1950X 3.4 GHz_32MB _16 cores 32 threads_socket TR4 (no Fan)', N'AMD%20Threadripper%201950X%203.4%20GHz_32MB%20_16%20cores%2032%20threads_socket%20TR4%20(no%20Fan).png', N'AMD Threadripper 1950X 3.4 GHz_32MB _16 cores 32 threads_socket TR4 (no Fan)', N'AMD Threadripper 1950X 3.4 GHz_32MB _16 cores 32 threads_socket TR4 (no Fan)', 21, 21, 21, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (70, 3, N'AMD Threadripper 1950X 3.4 GHz_32MB _16 cores 32 threads_socket TR4 (no Fan)', N'AMD%20Threadripper%201950X%203.4%20GHz_32MB%20_16%20cores%2032%20threads_socket%20TR4%20(no%20Fan).png', N'AMD Threadripper 1950X 3.4 GHz_32MB _16 cores 32 threads_socket TR4 (no Fan)', N'AMD Threadripper 1950X 3.4 GHz_32MB _16 cores 32 threads_socket TR4 (no Fan)', 35, 43, 54, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (71, 3, N'AMD TRINITY A4-5300', N'AMD%20TRINITY%20A4-5300.jpg', N'AMD TRINITY A4-5300', N'AMD TRINITY A4-5300', 12, 32, 21, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (72, 3, N'AMD Trinity A6-6400K Black Edition', N'AMD%20Trinity%20A6-6400K%20Black%20Edition.jpg', N'AMD Trinity A6-6400K Black Edition', N'AMD Trinity A6-6400K Black Edition', 11, 23, 32, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (73, 3, N'AMD Trinity A8-5600K Black Edition', N'AMD%20Trinity%20A8-5600K%20Black%20Edition.jpg', N'AMD Trinity A8-5600K Black Edition', N'AMD Trinity A8-5600K Black Edition', 10, 37, 46, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (74, 4, N'Bàn phím A4TECH KR-83 -U', N'Kr83u.jpg', N'Bàn phím USB, Bàn phím được khắc Laser chống mờ giảm thiểu tiếng ồn khi đánh máy', N'Bàn phím USB, Bàn phím được khắc Laser chống mờ giảm thiểu tiếng ồn khi đánh máy', 10, 10, 10, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (75, 4, N'Bàn phím BTK-P588690', N'P588690.jpg', N'Bàn phím Bluetooth Texet BTK-SLOT thiết kế chuẩn với đầy đủ các phím (96 phím), đặc biệt bàn phím kèm bàn rê chuột (touch pad) rất tiện lợi cho bạn làm việc.', N'Sản phầm hỗ trợ với tất cả các hệ điều hành hiện nay: IOS, Android, WIndow, và các thiết bị có hỗ trợ kết nối bluetooth.', 10, 10, 1, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (76, 4, N'Bàn phím Dell KB216', N'KB216.jpg', N'Bàn Phím Có Dây Dell KB216 - Đen - Hàng Chính Hãng có thiết kế ấn tượng với những đường cong tạo nên một dáng vẻ thời trang và hiện đại.', N' Bàn phím thông minh với các lỗ thoát nước hiệu quả, bảo vệ bàn phím an toàn khỏi các sự cố tràn chất lỏng một cách an toàn; Sản phầm hỗ trợ với tất cả các hệ điều hành hiện nay: IOS, Android, WIndow, và các thiết bị có hỗ trợ kết nối bluetooth.', 10, 10, 10, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (77, 4, N'Bàn phím E-Blue-EKM075', N'EKM075.jpg', N'Bàn phím E-Blue EKM075 với giao diện: USB 2.0', N'E-BLUE™ - Polygon: EKM075 - Pro Gaming ; Giao diện:USB 2.0; Số lượng phím: 104', 10, 10, 10, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (78, 4, N'Bàn phím Ensoho-E104', N'E104.jpg', N'Bàn Phím Có Dây Ensoho E-104 sở hữu thiết kế bàn phím đủ bao gồm cả bàn phím số giúp người dùng tăng tốc độ đánh máy đặc biệt là các nhân viên kế toán', N'Kết nối dễ dàng với cổng USB, Các phím có độ bền cao, Thiết kế độc đáo', 10, 10, 10, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (79, 4, N'Bàn phím Erikom-708', N'708.jpg', N'Bàn phím full-size nhỏ gọn. Thiết kế chống tràn.', N'Bàn phím có dây. Có 10 nút multimedia. Kích thước : 465*147*25mm .Chiều dài dây USB : 1.5M USB.', 10, 10, 10, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (80, 4, N'Bàn phím Fuhlen-I500s', N'I500s.jpg', N'Bàn Phím Game Fuhlen L500S sẽ là sự lựa chọn tuyệt vời dành cho game thủ.', N'Kết nối qua cổng USB.Các phím có độ bền đến 20 triệu lượt gõ.Bàn phím được thiết kế chống nước với lỗ thoát thông minh.', 10, 10, 10, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (81, 4, N'Bàn phím Genius-KB110', N'KB110.jpg', N'Bàn Phím Genius KB110 có thiết kế ấn tượng với những đường cong tạo nên một dáng vẻ thời trang và hiện đại', N'Kết nối qua cổng USB. Phím với độ bền cao. Kết nối USB. Tương thích với hầu hết HĐH.', 10, 10, 10, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (82, 4, N'Bàn phím Logitech-K120', N'K120.jpg', N'Với thiết kế chống tràn hiệu quả', N'Thiết kế chống tràn, bền bỉ. . Kích thước mỏng nhẹ, dễ dàng sử dụng. . Kết nối nhanh qua cổng USB.', 10, 10, 10, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (83, 4, N'Bàn phím Logitech-K380', N'K380.jpg', N'Có thiết kế gọn nhẹ và độc đáo với các nút phím tròn mang nét cổ điển nhưng rất ấn tượng', N'Công nghệ không dây Bluetooth. Thời gian sử dụng lâu. Cấu trúc bàn phím chuẩn.', 10, 10, 10, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (84, 4, N'Bàn phím Logitech-K400', N'K400.jpg', N'Có thiết kế gọn nhẹ độc đáo', N'Kết nối đơn giản. Pin dùng đến 18 tháng. Công nghệ không dây nâng cao 2.4Ghz', 10, 10, 10, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (85, 4, N'Bàn phím Microsoft-P450192', N'P450192.jpg', N'Thiết kế siêu mỏng chỉ 5.6mm', N'có kết nối không dây tốc độ cao 5.0Ghz, hoạt động trong vòng 10m, dễ dàng kết nối và sử dụng với bất kì máy tính nào có cổng kết nối USB', 10, 10, 10, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (86, 4, N'Bàn phím Prolink-1003', N'1003.jpg', N'Bàn phím Prolink-1003 là thiết bị ngoại vi dành cho laptop chất lượng cao đến từ nhà sản xuất ProLink', N'Có thiết kế thời trang. Bàn phím chiclet.', 10, 10, 10, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (87, 4, N'Bàn phím PS2-KB2200', N'KB2200.jpg', N'Cổng PS2 KB2200 được làm từ chất liệu nhựa bền chắc, có khả năng chịu lực cao', N'Các phím được thiết kế với độ rộng vừa phải, Kết nối có dây giúp truyền dữ liệu nhanh.', 10, 10, 10, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (88, 4, N'Bàn phím Texet-VN768', N'VN768.jpg', N'Bàn phím cơ bản Texet MB-768B có thiết kế tinh tế', N'Bao gồm 105 phím chuẩn‚ các kí tự trên phím được khắc sắc nét bằng công nghệ laser‚ đảm bảo độ bền cao‚ không phai theo thời gian.', 10, 10, 10, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (89, 5, N'AcerAs_A315', N'AcerAs_A315.jpg', N'AcerAs_A315', N'AcerAs_A315', 20, 32, 65, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (90, 5, N'AcerPredatorG3', N'AcerPredatorG3.jpg', N'AcerPredatorG3', N'AcerPredatorG3', 43, 22, 22, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (91, 5, N'AsusVivobook15', N'AsusVivobook15.jpg', N'AsusVivobook15', N'AsusVivobook15', 11, 54, 13, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (92, 5, N'AsusX541UV', N'AsusX541UV.jpg', N'AsusX541UV', N'AsusX541UV', 10, 33, 13, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (93, 5, N'Zenbook_UX430UA', N'Zenbook_UX430UA.jpg', N'Zenbook_UX430UA', N'Zenbook_UX430UA', 7, 55, 22, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (94, 5, N'Alienware17R4', N'Alienware17R4.jpg', N'Alienware17R4', N'Alienware17R4', 5, 43, 23, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (95, 5, N'DellInpiron13_5379', N'DellInpiron13_5379.jpg', N'DellInpiron13_5379', N'DellInpiron13_5379', 65, 33, 32, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (96, 5, N'DellInpiron7567', N'DellInpiron7567.jpg', N'DellInpiron7567', N'DellInpiron7567', 22, 54, 23, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (97, 5, N'DellVostro3568', N'DellVostro3568.jpg', N'DellVostro3568', N'DellVostro3568', 43, 32, 32, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (98, 5, N'DellVostro5568', N'DellVostro5568.jpg', N'DellVostro5568', N'DellVostro5568', 1, 44, 22, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (99, 5, N'hp14', N'hp14.jpg', N'hp14', N'hp14', 1, 54, 22, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (100, 5, N'HP15', N'HP15.jpg', N'HP15', N'HP15', 24, 32, 21, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (101, 5, N'Envy13AD140', N'Envy13AD140.jpg', N'Envy13AD140', N'Envy13AD140', 12, 54, 32, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (102, 5, N'HPPavillon14', N'HPPavillon14.jpg', N'HPPavillon14', N'HPPavillon14', 55, 43, 12, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (103, 5, N'HPPavillon_X360', N'HPPavillon_X360.jpg', N'HPPavillon_X360', N'HPPavillon_X360', 32, 65, 32, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (104, 5, N'HPProbookG4', N'HPProbookG4.jpg', N'HPProbookG4', N'HPProbookG4', 22, 65, 22, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (105, 5, N'mac2016ML', N'mac2016ML.jpg', N'mac2016ML', N'mac2016ML', 33, 65, 12, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (106, 5, N'MSIGE62', N'MSIGE62.jpg', N'MSIGE62', N'MSIGE62', 22, 54, 32, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (107, 5, N'MSIGV62', N'MSIGV62.jpg', N'MSIGV62', N'MSIGV62', 5, 22, 23, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (108, 5, N'ThinkPadE470', N'ThinkPadE470.jpg', N'ThinkPadE470', N'ThinkPadE470', 2, 5, 43, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (109, 5, N'Yoga520', N'Yoga520.jpg', N'Yoga520', N'Yoga520', 54, 34, 32, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (110, 6, N'HDV_R3', N'HDV_R3.jpg', N'HDV_R3', N'HDV_R3', 44, 65, 32, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (111, 6, N'H110M-ITX_ac', N'H110M-ITX_ac.jpg', N'H110M-ITX_ac', N'H110M-ITX_ac', 23, 35, 43, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (112, 6, N'K6', N'K6.jpg', N'K6', N'K6', 65, 32, 65, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (113, 6, N'B250G- GAMING', N'B250G-%20GAMING.jpg', N'B250G- GAMING', N'B250G- GAMING', 43, 22, 32, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (114, 6, N'H81_M-K', N'M-K.jpg', N'M-K', N'M-K', 54, 21, 64, 1, NULL)
GO
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (115, 6, N'D_SK1151', N'D_SK1151.jpg', N'D_SK1151', N'D_SK1151', 76, 43, 43, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (116, 6, N'SK1151', N'SK1151.jpg', N'SK1151', N'SK1151', 34, 4, 32, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (117, 6, N'H270 -PLUS', N'H270%20-PLUS.jpg', N'H270 -PLUS', N'H270 -PLUS', 54, 5, 8, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (118, 6, N'Z370', N'Z370.jpg', N'Z370', N'Z370', 57, 43, 23, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (119, 6, N'K4', N'K4.jpg', N'K4', N'K4', 43, 3, 54, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (120, 6, N'B350GT3', N'B350GT3.jpg', N'B350GT3', N'B350GT3', 32, 2, 5, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (121, 7, N'Màn hình ASUS VS247NR LED', N'Asus%2023.6%20VS247NR%20LED.png', N'Độ phân giải full HD', N'Giúp trải nghiệm các thước phim một cách chân thực nhất', 5869000, 0, 50, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (122, 7, N'Màn hình DEll U2717D UltraSharp 27 inch IPS InfinityEdge', N'Dell%2023S2318H%20Wide%20LED%20IPS.png', N'Thiết kế tràn viền, kiểu giáng sang trọng', N'Giúp trải nghiệm các thước phim một cách chân thực nhất', 13690000, 0, 50, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (123, 7, N'Màn hình HP 23ES 23inch LED IPS', N'HP%2022ES%2021.5inch%20LED%20IPS.jpg', N'Màn hình full HD, với kích thước lên đến 23inch', N'Phù hợp với những bạn học về đồ họa', 11990000, 0, 50, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (124, 7, N'Màn hình Philips 234E5QHSB 23 Wide LED Monitor Full HD', N'Philips%20234E5QHSB%2023%20Wide%20LED%20Monitor%20Full%20HD.jpg', N'', N'', 10890000, 0, 50, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (125, 7, N'Màn hình Samsung LC27F591FDEXXV 27 Silver', N'Samsung%20LC27F591FDEXXV%2027%20Silver.jpg', N'Màn hình phằng với tốc độ phản hồi 1ms. Công nghệ AMD FREESYNC giảm thiểu giật hình', N'Giảm thiểu độ trễ, giúp bảo vệ mắt', 13459000, 0, 50, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (126, 8, N'Giá làm mát Cool Cold F2 Pro', N'Cool%20Cold%20F2%20Pro.jpg', N'Cool Cold F2 Pro.jpg', N'Cool Cold F2 Pro.jpg', 1200000, 12, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (127, 8, N'Giá làm mát Cool Cold N100 Pro', N'Cool%20Cold%20N100%20Pro.jpg', N'Cool Cold N100 Pro.jpg', N'Cool Cold N100 Pro.jpg', 1200000, 12, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (128, 8, N'Giá làm mát Cooler Master C3.jpg', N'Cooler%20Master%20C3.jpg', N'Cooler Master C3.jpg', N'Cooler Master C3.jpg', 1200000, 12, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (129, 8, N'Giá làm mát Cooler Master X-Slim', N'Cooler%20Master%20X-Slim.jpg', N'Cooler Master X-Slim.jpg', N'Cooler Master X-Slim.jpg', 1200000, 12, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (130, 8, N'HZT NB402.jpg', N'HZT%20NB402.jpg', N'HZT NB402.jpg', N'HZT NB402.jpg', 1200000, 12, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (131, 9, N'Seasonic Focus Plus 650W FX-650 - 80 Plus Gold', N'Seasonic%20Focus%20Plus%20650W%20FX-650%20-%2080%20Plus%20Gold.png', N'Seasonic Focus Plus 650W FX-650 - 80 Plus Gold.png', N'Seasonic Focus Plus 650W FX-650 - 80 Plus Gold.png', 1200000, 12, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (132, 9, N'Seasonic Prime Ultra 1000W 1000TR - 80 PLUS TITANIUM', N'Seasonic%20Prime%20Ultra%201000W%201000TR%20-%2080%20PLUS%20TITANIUM.png', N'Seasonic Prime Ultra 1000W 1000TR - 80 PLUS TITANIUM.png', N'Seasonic Prime Ultra 1000W 1000TR - 80 PLUS TITANIUM.png', 1200000, 12, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (133, 9, N'Xigmatek Centauro S 500W ( CTS-500 )', N'Xigmatek%20Centauro%20S%20500W%20(%20CTS-500%20).jpg', N'Xigmatek Centauro S 500W ( CTS-500 ).jpg', N'Xigmatek Centauro S 500W ( CTS-500 ).jpg', 1200000, 12, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (134, 10, N'Corsair DDR3 4GB 1333 - CMSO4GX3M1A1333C9', N'Corsair%20DDR3%204GB%201333%20-%20CMSO4GX3M1A1333C9.jpg', N'Corsair DDR3 4GB 1333 - CMSO4GX3M1A1333C9.jpg', N'Corsair DDR3 4GB 1333 - CMSO4GX3M1A1333C9.jpg', 1200000, 5, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (135, 10, N'Corsair DDR3 8GB 1333 - CMSO8GX3M1A1333C9', N'Corsair%20DDR3%208GB%201333%20-%20CMSO8GX3M1A1333C9.png', N'Corsair DDR3 8GB 1333 - CMSO8GX3M1A1333C9.png', N'Corsair DDR3 8GB 1333 - CMSO8GX3M1A1333C9.png', 1200000, 5, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (136, 10, N'Corsair Value DDR3 8GB 1600 - CMSO8GX3M1C1600C11', N'Corsair%20Value%20DDR3%208GB%201600%20-%20CMSO8GX3M1C1600C11.jpg', N'Corsair Value DDR3 8GB 1600 - CMSO8GX3M1C1600C11.jpg', N'Corsair Value DDR3 8GB 1600 - CMSO8GX3M1C1600C11.jpg', 1200000, 5, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (137, 10, N'Corsair Vengeance DDR3 8GB 1600 - CMSO8GX3M1C1600C11', N'Corsair%20Vengeance%20DDR3%208GB%201600%20-%20CMSO8GX3M1C1600C11.jpg', N'Corsair Vengeance DDR3 8GB 1600 - CMSO8GX3M1C1600C11.jpg', N'Corsair Vengeance DDR3 8GB 1600 - CMSO8GX3M1C1600C11.jpg', 1200000, 5, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (138, 10, N'Crucial 8GB DDR4 2400MHz SODIMM', N'Crucial%208GB%20DDR4%202400MHz%20SODIMM.jpg', N'Crucial 8GB DDR4 2400MHz SODIMM.jpg', N'Crucial 8GB DDR4 2400MHz SODIMM.jpg', 1200000, 5, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (139, 10, N'Corsair DDR3 8GB 1600 - CMSO8GX3M1C1600C11', N'Corsair%20DDR3%208GB%201600%20-%20CMSO8GX3M1C1600C11.png', N'Corsair DDR3 8GB 1600 - CMSO8GX3M1C1600C11.png', N'Corsair DDR3 8GB 1600 - CMSO8GX3M1C1600C11.png', 1200000, 5, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (140, 10, N'Crucial Ballistix Sport LT 16GB DDR4 2400MHz UDIMM', N'Crucial%20Ballistix%20Sport%20LT%2016GB%20DDR4%202400MHz%20UDIMM.jpg', N'Crucial Ballistix Sport LT 16GB DDR4 2400MHz UDIMM.jpg', N'Crucial Ballistix Sport LT 16GB DDR4 2400MHz UDIMM.jpg', 1200000, 5, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (141, 10, N'Crucial 32GB DDR4 2400MHz RDIMM', N'Crucial%2032GB%20DDR4%202400MHz%20RDIMM.jpg', N'Crucial 32GB DDR4 2400MHz RDIMM.jpg', N'Crucial 32GB DDR4 2400MHz RDIMM.jpg', 1200000, 5, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (142, 10, N'G.Skill TRIDENT Z RGB - 16GB (8GBx2) DDR4 3000GHz - F4-3000C16D-16GTZR', N'G.Skill%20TRIDENT%20Z%20RGB%20-%2016GB%20(8GBx2)%20DDR4%203000GHz%20-%20F4-3000C16D-16GTZR.png', N'G.Skill TRIDENT Z RGB - 16GB (8GBx2) DDR4 3000GHz - F4-3000C16D-16GTZR.png', N'G.Skill TRIDENT Z RGB - 16GB (8GBx2) DDR4 3000GHz - F4-3000C16D-16GTZR.png', 1200000, 5, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (143, 10, N'Kingston 4G 1600 DDR3 CL10 Dimm HyperX Fury', N'4GB%20DDR3-1600%20LONG%20DIMM%20-%20KVR16N11S8_4.jpg', N'Kingston 4G 1600 DDR3 CL10 Dimm HyperX Fury.jpg', N'Kingston 4G 1600 DDR3 CL10 Dimm HyperX Fury.jpg', 1200000, 5, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (144, 10, N'Patriot VIPER 8GB DDR4 3000mHz RED LED.jpg', N'Patriot%20VIPER%208GB%20DDR4%203000mHz%20RED%20LED.jpg', N'Patriot VIPER 8GB DDR4 3000mHz RED LED.jpg', N'Patriot VIPER 8GB DDR4 3000mHz RED LED.jpg', 1200000, 5, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (145, 11, N'AIGO ATLANTIS (3 RED RING FAN)', N'AIGO%20ATLANTIS%20(3%20RED%20RING%20FAN).jpg', N'AIGO ATLANTIS (3 RED RING FAN).jpg', N'AIGO ATLANTIS (3 RED RING FAN).jpg', 890000, 4, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (146, 11, N'AIGO BLACK TECHNOLOGY (TEMPERED GLASS)', N'AIGO%20BLACK%20TECHNOLOGY%20(TEMPERED%20GLASS).jpg', N'AIGO BLACK TECHNOLOGY (TEMPERED GLASS).jpg', N'AIGO BLACK TECHNOLOGY (TEMPERED GLASS).jpg', 890000, 4, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (147, 11, N'AIGO J8 (M-ATX)', N'AIGO%20J8%20(M-ATX).jpg', N'AIGO J8 (M-ATX).jpg', N'AIGO J8 (M-ATX).jpg', 890000, 4, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (148, 11, N'Xigmatek Libra EN40346', N'Xigmatek%20Libra%20EN40346.jpg', N'Xigmatek Libra EN40346.jpg', N'Xigmatek Libra EN40346.jpg', 890000, 4, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (149, 11, N'Xigmatek Shockwave (Mid Tower)', N'Xigmatek%20Shockwave%20(Mid%20Tower).jpg', N'Xigmatek Shockwave (Mid Tower).jpg', N'Xigmatek Shockwave (Mid Tower).jpg', 890000, 4, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (150, 11, N'Xigmatek Taurus EN40353', N'Xigmatek%20Taurus%20EN40353.jpg', N'Xigmatek Taurus EN40353.jpg', N'Xigmatek Taurus EN40353.jpg', 890000, 4, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (151, 12, N'WD_Purple 1TB', N'WD_Purple_1TB.jpg', N'WD_Purple_1TB.jpg', N'WD_Purple_1TB.jpg', 2890000, 10, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (152, 12, N'Red 3TB', N'Red_3TB.jpg', N'Red_3TB.jpg', N'Red_3TB.jpg', 2890000, 10, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (153, 12, N'BarraCuda 1TB', N'1TB.jpg', N'BarraCuda 1TB', N'BarraCuda 1TB', 2890000, 10, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (154, 12, N'Toshiba 3TB 7200', N'3TB_7200.jpg', N'Toshiba 3TB_7200.jpg', N'Toshiba 3TB_7200.jpg', 2890000, 10, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (155, 12, N'WDBlue 2TB 5400', N'2TB_5400.jpg', N'2TB_5400.jpg', N'2TB_5400.jpg', 2890000, 10, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (156, 12, N'Asu800 256GB', N'Asu800_256GB.jpg', N'Asu800_256GB.jpg', N'Asu800_256GB.jpg', 2890000, 10, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (157, 12, N'MX300 375GB', N'MX300_375GB.jpg', N'MX300_375GB.jpg', N'MX300_375GB.jpg', 2890000, 10, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (158, 12, N'Kingston SUV400', N'SUV400.jpg', N'SUV400.jpg', N'SUV400.jpg', 2890000, 10, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (159, 12, N'WD Blue 250GB', N'WD_Blue_250GB.jpg', N'WD_Blue_250GB.jpg', N'WD_Blue_250GB.jpg', 2890000, 10, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (160, 12, N'Plextor M6E 512GB', N'M6E_512GB.jpg', N'M6E_512GB.jpg', N'M6E_512GB.jpg', 2890000, 10, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (161, 12, N'Samsung Evo 256MB', N'Evo_256MB.jpg', N'Evo_256MB.jpg', N'Evo_256MB.jpg', 2890000, 10, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (162, 12, N'Silicon Power', N'Power.jpg', N'Power.jpg', N'Power.jpg', 2890000, 10, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (163, 12, N'Transcend 220S', N'220S.jpg', N'220S.jpg', N'220S.jpg', 2890000, 10, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (164, 12, N'WDGrend 120GB', N'120GB.jpg', N'120GB.jpg', N'120GB.jpg', 2890000, 10, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (166, 14, N'USB Adata 16GB', N'16de_1.png', N'16de_1.png', N'16de_1.png', 289000, 10, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (167, 14, N'USB AddLink 16GB', N'U10.jpg', N'U10.jpg', N'U10.jpg', 289000, 10, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (168, 14, N'USB Kingston 64GB', N'DT100.jpg', N'DT100.jpg', N'DT100.jpg', 580000, 10, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (169, 14, N'USB Sandisk sdcz73 32GB', N'sdcz73_32_2.jpg', N'sdcz73_32GB.jpg', N'sdcz73_32GB.jpg', 389000, 10, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (170, 14, N'USB TeamGroup C143 32GB', N'C143_32GB.jpg', N'C143_32GB.jpg', N'C143_32GB.jpg', 389000, 10, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (171, 14, N'USB Toshiba hayabusa.jpg', N'hayabusa.jpg', N'hayabusa.jpg16de_1.png', N'hayabusa.jpg', 289000, 10, 100, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (172, 15, N'FIREPRO W8000 4G GDDR5', N'FIREPRO%20W8000%204G%20GDDR5.jpg', N'FIREPRO W8000 4G GDDR5.jpg', N'FIREPRO W8000 4G GDDR5.jpg', 4890000, 5, 300, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (173, 15, N'NVidia Quadro P400 2GB GDDR5', N'NVidia%20Quadro%20P400%202GB%20GDDR5.jpg', N'NVidia Quadro P400 2GB GDDR5.jpg', N'NVidia Quadro P400 2GB GDDR5.jpg', 4890000, 5, 300, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (174, 15, N'GTX 1080 Ti SEA HAWK EK X', N'GTX%201080%20Ti%20SEA%20HAWK%20EK%20X.png', N'GTX 1080 Ti SEA HAWK EK X.png', N'GTX 1080 Ti SEA HAWK EK X.png', 4890000, 5, 300, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (175, 15, N'MSI GTX 1070 Ti ARMOR 8G', N'MSI%20GTX%201070%20Ti%20ARMOR%208G.png', N'MSI GTX 1070 Ti ARMOR 8G.png', N'MSI GTX 1070 Ti ARMOR 8G.png', 4890000, 5, 300, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [CatalogID], [Name], [Image], [Describe], [Content], [Price], [Sale], [Amount], [Status], [IsDelete]) VALUES (176, 15, N'NVidia Quadro P5000 16GB GDDR5X', N'NVidia%20Quadro%20P5000%2016GB%20GDDR5X.jpg', N'NVidia Quadro P5000 16GB GDDR5X.jpg', N'NVidia Quadro P5000 16GB GDDR5X.jpg', 4890000, 5, 300, 1, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([RoleID], [Name]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [RoleID], [Avatar], [FullName], [UserName], [Email], [Password], [Sex], [Address], [Phone], [IsLock], [IsDelete]) VALUES (3, 1, NULL, N'admin', N'admin', N'admin', N'21232f297a57a5a743894a0e4a801fc3', NULL, NULL, NULL, 0, 0)
INSERT [dbo].[User] ([UserID], [RoleID], [Avatar], [FullName], [UserName], [Email], [Password], [Sex], [Address], [Phone], [IsLock], [IsDelete]) VALUES (4, 2, NULL, N'minh', N'minh', N'minh', N'c92f1d1f2619172bf87a12e5915702a6', NULL, NULL, NULL, 0, 0)
INSERT [dbo].[User] ([UserID], [RoleID], [Avatar], [FullName], [UserName], [Email], [Password], [Sex], [Address], [Phone], [IsLock], [IsDelete]) VALUES (5, 2, NULL, N'fsd', N'fsd', N'fsdg', N'gdfgd', NULL, NULL, NULL, 0, 0)
INSERT [dbo].[User] ([UserID], [RoleID], [Avatar], [FullName], [UserName], [Email], [Password], [Sex], [Address], [Phone], [IsLock], [IsDelete]) VALUES (6, 2, NULL, N'ngvj', N'jghj', N'khgjg', N'jghj', NULL, NULL, NULL, 0, 1)
INSERT [dbo].[User] ([UserID], [RoleID], [Avatar], [FullName], [UserName], [Email], [Password], [Sex], [Address], [Phone], [IsLock], [IsDelete]) VALUES (7, 2, NULL, N'dyuy', N'uyu', N'uyu', N'uyu', NULL, NULL, NULL, 0, 1)
INSERT [dbo].[User] ([UserID], [RoleID], [Avatar], [FullName], [UserName], [Email], [Password], [Sex], [Address], [Phone], [IsLock], [IsDelete]) VALUES (10, 2, NULL, N'nhan', N'nhan', N'nhan', N'fsdf', NULL, NULL, NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CatalogID])
REFERENCES [dbo].[Catalog] ([CatalogID])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
