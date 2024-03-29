
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/13/2023 6:50:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
	[active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 3/13/2023 6:50:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/13/2023 6:50:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/13/2023 6:50:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/13/2023 6:50:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](255) NULL,
	[create_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 3/13/2023 6:50:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 3/13/2023 6:50:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (1, N'son', N'123', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (8, N'Micah', N'RVV5SR', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (9, N'Rowan', N'VAI6XR', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (12, N'Howard', N'TSR5MR', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (13, N'Tana', N'EHS8CM', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (15, N'Echo', N'IGE8TN', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (16, N'Slade', N'OFO6QS', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (17, N'Devin', N'IBM6RZ', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (18, N'Rowan', N'ZYS9VI', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (19, N'Rafael', N'WZA0IH', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (20, N'Madaline', N'QMW4EN', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (21, N'Vera', N'CZB2VM', 0, 0, 0)

SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'TEE')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'SƠ MI')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'QUẦN')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'PHỤ KIỆN')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (19, 1, 290, N'hang de vo', CAST(N'2022-04-23' AS Date), 19)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1, 'WHITE CRACK ROCK TEE', 'https://product.hstatic.net/1000351433/product/10_511b47b469f04db1bb9264f05c87d7c6_master.jpg', 36.0000, 'TEE', '• Chất liệu: Cotton\n\n• Size : M\n\n• Graphic: In mặt trước\n\n• Kỹ thuật: In', 1, 1);
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (2, 'BLACK CRACK ROCK TEE', 'https://product.hstatic.net/1000351433/product/5_dcb919794666496f924fc62624e4ce12_master.jpg', 45.0000, 'TEE', '• Chất liệu: Cotton\n\n• Size : M\n\n• Graphic: In mặt trước\n\n• Kỹ thuật: In', 1, 1);
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (3, 'SUPERMARKET BADHABITS BOXY TEE', 'https://product.hstatic.net/1000351433/product/4_7a497e70dbd6450bae12c46add24d8d2_master.jpg', 55.0000, 'TEE', '• Chất liệu: Cotton\n\n• Size : S M L XL\n\n• Graphic: In mặt trước\n\n• Kỹ thuật: In', 1, 5);
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (4, 'EGO BOXY TEE', 'https://product.hstatic.net/1000351433/product/3_a70a57e4e85c489081d8fb90d3e0a38f_master.jpg', 55.0000, 'TEE', '• Chất liệu: Cotton\n\n• Size : S M L XL\n\n• Graphic: In mặt trước\n\n• Kỹ thuật: In', 1, 6);
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (5, 'WHITE BAD ICON TEE', 'https://product.hstatic.net/1000351433/product/dsc_9494_0b179f8046c047ee8bc3cf28cbc3ce60_master.jpg', 65.0000, 'TEE', '• Chất liệu: Cotton\n\n• Size : S M L XL\n\n• Graphic: In mặt trước và mặt sau\n\n• Kỹ thuật: In', 1, 7);
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (6, 'GREY RENAISSANCE STAMP TEE', 'https://product.hstatic.net/1000351433/product/1-_2__59bd89ee2fa64a9189b6c754b29f7824_master.jpg', 65.0000, 'TEE', '• Chất liệu: Cotton cao cấp\n\n• Graphic: In mặt trước và mặt sau\n\n• Kỹ thuật: in lụa', 1, 7);
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (7, 'SAND "KHÔ MÁU" SHIRT', 'https://product.hstatic.net/1000351433/product/img_9110_1501bf0eb5e44833988ff56a31a5e0e8_master.jpg', 65.0000, 'SƠ MI', '• Chất liệu: Kaki\n• Kỹ thuật: In\n• Tag áo được may chỉnh chu trước ngực trái\n• Graphic cực BAD in nổi mặt sau áo', 2, 6);
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (8, 'KING CARD SHIRT', 'https://product.hstatic.net/1000351433/product/2__45__0cf0d19610ad44b6aede15e529e366b7_master.jpg', 65.0000, 'SƠ MI', '• Chất liệu: Linen\n\n• Kỹ thuật: In lụa & thêu\n\n• Logo "Bad Habits" thêu mặt trước áo\n\n• Graphic "King Card" in lụa mặt sau áo', 2, 9);
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (9, 'OLD SKOOL FLANNEL YELLOW', 'https://product.hstatic.net/1000351433/product/mat_truoc_e7f7d1f5a826466b9ab85eb03b313885_master.jpg', 45.0000, 'SƠ MI', '• Chất liệu: 70% Poly 28% Rayon 2% Spandex\n\n• Kỹ thuật: Thêu\n\n• Graphic thêu vạt trước áo\n\n• Tag “Exit” mini collection mặt sau áo', 2, 9);
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (10, 'DANH LAM VIỆT NAM SHIRT', 'https://product.hstatic.net/1000351433/product/danh_lam_vn_shirt_72fde4ba5f2a467694feb269a2288260_master.png', 45.0000, 'SƠ MI', '• Chất liệu: Linen\n\n• Graphic: Hình ảnh Danh lam Thắng cảnh Việt Nam\n\n•  Kỹ thuật: in lụa & thêu trực tiếp lên bề mặt vải', 2, 9);
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (11, 'EXPLORER SCOUTS SHIRT - TAN', 'https://product.hstatic.net/1000351433/product/mat_truoc__3__c221628a712e45369c3d7b1b74fb86d7_master.jpg', 65.0000, 'SƠ MI', '• Chất liệu: Vải dù\n• Kỹ thuật In: In lụa & Thêu\n• Túi ngực trái & 2 pad khủy tay được chần gòn họa tiết "Quả Ấu"\n• Nút cố định dùng khi săn tay áo.\n• Pad dán Bad Habits trên túi áo có thể tháo rời.', 2, 1);
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (12, 'BROWN DISSTRESSED CARGO SHORT', 'https://product.hstatic.net/1000351433/product/6_6a9e2da5c5b04dfe919c4ee3e83a0952_master.jpg', 65.0000, 'QUẦN', 'Chất liệu: Nỉ Thiết kế :\nHoạ tiết rách được làm thủ công\nSize : S M L XL\nChi tiết : tên thương hiệu BadHabits được in nổi lên nắp túi', 3, 10);
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (13, 'GREY DISSTRESSED CARGO SHORT', 'https://product.hstatic.net/1000351433/product/1_160423dc8c1d4207827582fa99e29b61_master.jpg', 65.0000, 'QUẦN', 'Chất liệu: Nỉ Thiết kế :\nHoạ tiết rách được làm thủ công\nSize : S M L XL\nChi tiết : tên thương hiệu BadHabits được in nổi lên nắp túi', 3, 10);
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (14, 'GREY DESTROYED SWEAT SHORT', 'https://product.hstatic.net/1000351433/product/1_9d6ca4be3e7b4c5faa44dfcbdc4e3aa2_master.jpg', 65.0000, 'QUẦN', 'Chất liệu: Nỉ Thiết kế :\nHoạ tiết rách được làm thủ công\nSize : S M L XL\nChi tiết : tên thương hiệu BadHabits được in nổi lên nắp túi', 3, 27);
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (15, 'OUTDOOR EVERYDAY CARGO PANTS - TAN', 'https://product.hstatic.net/1000351433/product/cargo_pants_tan_trc_5953a79266304b04a90c49cf1062a330_master.png', 75.0000, 'QUẦN', '• Chất liệu: Dù\n• Tag thêu trực tiếp lên bề mặt vải\n• Thiết kế với 4 dây Strap - dễ dàng tùy chỉnh độ ôm của ống quần', 3, 27);
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (16, 'BLACK BONE CAP', 'https://product.hstatic.net/1000351433/product/dsc_0876_83f093e92caf4c969bc0c189f6c0a2d2_master.jpg', 45.0000, 'PHỤ KIỆN', 'Màu: Đen\nChất liệu: Vải dù', 4, 1);
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (17, 'OUTDOOR PUFFER TOTE - BLACK', 'https://product.hstatic.net/1000351433/product/outdoor_puffer_tote_33c3f6d350f44e7f87a59877284cf61d_master.png', 25.0000, 'PHỤ KIỆN', '• Chất liệu: Dù\n• Bề mặt túi sử dụng kỹ thuật chần bông & họa tiết quả tràm để tạo cảm giác Vintage.\n• Logo Bad Habits thêu trực tiếp lên bề mặt túi', 4, 27);
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (18, 'TACTICAL "FOREST" 2-IN-1 BACKPACK', 'https://product.hstatic.net/1000351433/product/balo_forest_5_0f4864e5ccec4c1998a0db3f48521914_master.png', 45.0000, 'PHỤ KIỆN', '• Chất liệu: Kaki\n• Tag mặt trước thêu trực tiếp lên bề mặt backpack\n• Thiết kế 2-in-1: dễ dàng tháo túi mặt trước thành túi đeo chéo\n• Túi nhỏ phần dây đeo dễ dàng tháo ra - có dây trap để đeo thắt lưng\n• Các chi tiết thiết kế Tactical đáp ứng đầy đủ các nhu cầu khi dã ngoại ngoài trời.', 4, 27);
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 

SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_product] FOREIGN KEY([AccountID])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Account]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Shipping] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Shipping]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_Category]
GO
