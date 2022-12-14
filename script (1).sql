USE master
GO
CREATE DATABASE NestSongAn
GO
USE [NestSongAn]
GO
/****** Object:  Table [dbo].[tb_Cart]    Script Date: 9/20/2022 1:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Cart](
	[cart_ID] [int] IDENTITY(1,1) NOT NULL,
	[user_ID] [int] NULL,
	[user_Fullname] [nvarchar](500) NULL,
	[phoneNumber] [char](10) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](300) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_tb_Cart] PRIMARY KEY CLUSTERED 
(
	[cart_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_CartDetail]    Script Date: 9/20/2022 1:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_CartDetail](
	[cartDetail_ID] [int] IDENTITY(1,1) NOT NULL,
	[cart_ID] [int] NULL,
	[product_ID] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_tb_CartDetail] PRIMARY KEY CLUSTERED 
(
	[cartDetail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Category]    Script Date: 9/20/2022 1:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Category](
	[category_ID] [int] NOT NULL,
	[product_ID] [int] NULL,
 CONSTRAINT [PK_tb_Category] PRIMARY KEY CLUSTERED 
(
	[category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Order]    Script Date: 9/20/2022 1:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Order](
	[order_ID] [int] IDENTITY(1,1) NOT NULL,
	[user_ID] [int] NULL,
	[user_fullName] [nvarchar](300) NULL,
	[userName] [nvarchar](50) NULL,
	[phoneNumber] [char](10) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nchar](10) NULL,
	[Status] [int] NULL,
	[order_Date] [date] NULL,
 CONSTRAINT [PK_tb_Order] PRIMARY KEY CLUSTERED 
(
	[order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_OrderDetail]    Script Date: 9/20/2022 1:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_OrderDetail](
	[orderDetail_ID] [int] IDENTITY(1,1) NOT NULL,
	[product_ID] [int] NULL,
	[order_ID] [int] NULL,
	[product_Name] [nvarchar](200) NULL,
	[quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[Context] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tb_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[orderDetail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Payment]    Script Date: 9/20/2022 1:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Payment](
	[payment_ID] [int] IDENTITY(1,1) NOT NULL,
	[payment_Type] [nvarchar](50) NULL,
	[order_ID] [int] NULL,
	[totalPrice] [decimal](18, 0) NULL,
	[user_ID] [int] NULL,
	[userName] [varchar](15) NULL,
	[cardNumber] [char](15) NULL,
	[validFrom] [date] NULL,
	[payment_Date] [date] NULL,
 CONSTRAINT [PK_tb_Payment] PRIMARY KEY CLUSTERED 
(
	[payment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Product]    Script Date: 9/20/2022 1:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Product](
	[product_ID] [int] IDENTITY(1,1) NOT NULL,
	[product_Name] [nvarchar](200) NULL,
	[product_Type] [nchar](10) NULL,
	[Price] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
	[category_ID] [int] NULL,
	[user_ID] [int] NULL,
 CONSTRAINT [PK_tb_Product] PRIMARY KEY CLUSTERED 
(
	[product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Role]    Script Date: 9/20/2022 1:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Role](
	[role_ID] [int] IDENTITY(1,1) NOT NULL,
	[role_Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Role] PRIMARY KEY CLUSTERED 
(
	[role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_User]    Script Date: 9/20/2022 1:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_User](
	[user_ID] [int] IDENTITY(1,1) NOT NULL,
	[user_Fullname] [nvarchar](500) NULL,
	[userName] [varchar](15) NULL,
	[passWord] [nvarchar](50) NULL,
	[phoneNumber] [char](10) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](300) NULL,
	[role_ID] [int] NULL,
 CONSTRAINT [PK_tb_User] PRIMARY KEY CLUSTERED 
(
	[user_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_Cart]  WITH CHECK ADD  CONSTRAINT [FK_tb_Cart_tb_User] FOREIGN KEY([user_ID])
REFERENCES [dbo].[tb_User] ([user_ID])
GO
ALTER TABLE [dbo].[tb_Cart] CHECK CONSTRAINT [FK_tb_Cart_tb_User]
GO
ALTER TABLE [dbo].[tb_CartDetail]  WITH CHECK ADD  CONSTRAINT [FK_tb_CartDetail_tb_Cart] FOREIGN KEY([cart_ID])
REFERENCES [dbo].[tb_Cart] ([cart_ID])
GO
ALTER TABLE [dbo].[tb_CartDetail] CHECK CONSTRAINT [FK_tb_CartDetail_tb_Cart]
GO
ALTER TABLE [dbo].[tb_CartDetail]  WITH CHECK ADD  CONSTRAINT [FK_tb_CartDetail_tb_Product] FOREIGN KEY([product_ID])
REFERENCES [dbo].[tb_Product] ([product_ID])
GO
ALTER TABLE [dbo].[tb_CartDetail] CHECK CONSTRAINT [FK_tb_CartDetail_tb_Product]
GO
ALTER TABLE [dbo].[tb_Category]  WITH CHECK ADD  CONSTRAINT [FK_tb_Category_tb_Product] FOREIGN KEY([product_ID])
REFERENCES [dbo].[tb_Product] ([product_ID])
GO
ALTER TABLE [dbo].[tb_Category] CHECK CONSTRAINT [FK_tb_Category_tb_Product]
GO
ALTER TABLE [dbo].[tb_Order]  WITH CHECK ADD  CONSTRAINT [FK_tb_Order_tb_User] FOREIGN KEY([user_ID])
REFERENCES [dbo].[tb_User] ([user_ID])
GO
ALTER TABLE [dbo].[tb_Order] CHECK CONSTRAINT [FK_tb_Order_tb_User]
GO
ALTER TABLE [dbo].[tb_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_tb_OrderDetail_tb_Order] FOREIGN KEY([order_ID])
REFERENCES [dbo].[tb_Order] ([order_ID])
GO
ALTER TABLE [dbo].[tb_OrderDetail] CHECK CONSTRAINT [FK_tb_OrderDetail_tb_Order]
GO
ALTER TABLE [dbo].[tb_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_tb_OrderDetail_tb_Product] FOREIGN KEY([product_ID])
REFERENCES [dbo].[tb_Product] ([product_ID])
GO
ALTER TABLE [dbo].[tb_OrderDetail] CHECK CONSTRAINT [FK_tb_OrderDetail_tb_Product]
GO
ALTER TABLE [dbo].[tb_Payment]  WITH CHECK ADD  CONSTRAINT [FK_tb_Payment_tb_Order] FOREIGN KEY([order_ID])
REFERENCES [dbo].[tb_Order] ([order_ID])
GO
ALTER TABLE [dbo].[tb_Payment] CHECK CONSTRAINT [FK_tb_Payment_tb_Order]
GO
ALTER TABLE [dbo].[tb_Payment]  WITH CHECK ADD  CONSTRAINT [FK_tb_Payment_tb_User] FOREIGN KEY([user_ID])
REFERENCES [dbo].[tb_User] ([user_ID])
GO
ALTER TABLE [dbo].[tb_Payment] CHECK CONSTRAINT [FK_tb_Payment_tb_User]
GO
ALTER TABLE [dbo].[tb_Product]  WITH CHECK ADD  CONSTRAINT [FK_tb_Product_tb_User] FOREIGN KEY([user_ID])
REFERENCES [dbo].[tb_User] ([user_ID])
GO
ALTER TABLE [dbo].[tb_Product] CHECK CONSTRAINT [FK_tb_Product_tb_User]
GO
ALTER TABLE [dbo].[tb_User]  WITH CHECK ADD  CONSTRAINT [FK_tb_User_tb_Role] FOREIGN KEY([role_ID])
REFERENCES [dbo].[tb_Role] ([role_ID])
GO
ALTER TABLE [dbo].[tb_User] CHECK CONSTRAINT [FK_tb_User_tb_Role]
GO
