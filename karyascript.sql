USE [karyasampanna]
GO
/****** Object:  Table [dbo].[pandit]    Script Date: 05/11/2013 15:49:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pandit](
	[paid] [int] IDENTITY(1,1) NOT NULL,
	[paname] [varchar](80) NULL,
	[paprice] [int] NULL,
	[description] [varchar](200) NULL,
 CONSTRAINT [pk_paid] PRIMARY KEY CLUSTERED 
(
	[paid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[pandit] ON
INSERT [dbo].[pandit] ([paid], [paname], [paprice], [description]) VALUES (1, N'Asaram Bapu', 5000, NULL)
INSERT [dbo].[pandit] ([paid], [paname], [paprice], [description]) VALUES (2, N'Ravishri Maharaj', 4000, NULL)
INSERT [dbo].[pandit] ([paid], [paname], [paprice], [description]) VALUES (3, N'Swami Ramdev', 7000, NULL)
INSERT [dbo].[pandit] ([paid], [paname], [paprice], [description]) VALUES (4, N'Nemi Suri Maharaj', 4000, NULL)
INSERT [dbo].[pandit] ([paid], [paname], [paprice], [description]) VALUES (5, N'Namra Maharaj', 5000, NULL)
INSERT [dbo].[pandit] ([paid], [paname], [paprice], [description]) VALUES (6, N'Aditya Maharaj', 6000, NULL)
SET IDENTITY_INSERT [dbo].[pandit] OFF
/****** Object:  Table [dbo].[foodpackage]    Script Date: 05/11/2013 15:49:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[foodpackage](
	[fid] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](50) NULL,
	[fprice] [int] NULL,
	[fdescription] [varchar](200) NULL,
 CONSTRAINT [pk_fid] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[foodpackage] ON
INSERT [dbo].[foodpackage] ([fid], [fname], [fprice], [fdescription]) VALUES (1, N'Package 1', 300, NULL)
INSERT [dbo].[foodpackage] ([fid], [fname], [fprice], [fdescription]) VALUES (2, N'Package 2', 250, NULL)
INSERT [dbo].[foodpackage] ([fid], [fname], [fprice], [fdescription]) VALUES (3, N'Package 3', 150, NULL)
INSERT [dbo].[foodpackage] ([fid], [fname], [fprice], [fdescription]) VALUES (4, N'Package 4', 125, NULL)
INSERT [dbo].[foodpackage] ([fid], [fname], [fprice], [fdescription]) VALUES (5, N'Package 5', 110, NULL)
INSERT [dbo].[foodpackage] ([fid], [fname], [fprice], [fdescription]) VALUES (6, N'Package 6', 90, NULL)
SET IDENTITY_INSERT [dbo].[foodpackage] OFF
/****** Object:  Table [dbo].[roles]    Script Date: 05/11/2013 15:49:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[roles](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[rname] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[roles] ON
INSERT [dbo].[roles] ([rid], [rname]) VALUES (1, N'Admin')
INSERT [dbo].[roles] ([rid], [rname]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[roles] OFF
/****** Object:  Table [dbo].[poojasamagri]    Script Date: 05/11/2013 15:49:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[poojasamagri](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[pname] [varchar](50) NULL,
	[price] [int] NULL,
	[description] [varchar](200) NULL,
 CONSTRAINT [pk_pid] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[poojasamagri] ON
INSERT [dbo].[poojasamagri] ([pid], [pname], [price], [description]) VALUES (1, N'Satyanarayan Pooja', 2000, NULL)
INSERT [dbo].[poojasamagri] ([pid], [pname], [price], [description]) VALUES (2, N'Shanti Havan', 1500, NULL)
INSERT [dbo].[poojasamagri] ([pid], [pname], [price], [description]) VALUES (3, N'Navgraha Shanti', 1000, NULL)
INSERT [dbo].[poojasamagri] ([pid], [pname], [price], [description]) VALUES (4, N'Marriage Ceremony', 5000, NULL)
INSERT [dbo].[poojasamagri] ([pid], [pname], [price], [description]) VALUES (5, N'Graha Pravesh', 3000, NULL)
INSERT [dbo].[poojasamagri] ([pid], [pname], [price], [description]) VALUES (6, N'Festival Pooja', 2000, NULL)
SET IDENTITY_INSERT [dbo].[poojasamagri] OFF
/****** Object:  Table [dbo].[Users]    Script Date: 05/11/2013 15:49:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[uid] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[upassword] [varchar](50) NULL,
	[uName] [varchar](80) NULL,
	[uAddress] [varchar](300) NULL,
	[uCountry] [varchar](80) NULL,
	[uState] [varchar](80) NULL,
	[uCity] [varchar](60) NULL,
	[uContact] [varchar](50) NULL,
	[rid] [int] NULL,
 CONSTRAINT [pk_uid] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([uid], [username], [upassword], [uName], [uAddress], [uCountry], [uState], [uCity], [uContact], [rid]) VALUES (2, N'admin', N'admin', N'Admin', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Users] ([uid], [username], [upassword], [uName], [uAddress], [uCountry], [uState], [uCity], [uContact], [rid]) VALUES (3, N'juj', N'hj', N'hkvhk', N'hl', N'jhj', N'lihl', N'lkkhlk', N'7668', 2)
INSERT [dbo].[Users] ([uid], [username], [upassword], [uName], [uAddress], [uCountry], [uState], [uCity], [uContact], [rid]) VALUES (4, N'amish8', N'all', N'amish 44', N'goregaon', N'india', N'maharastra', N'kolapur', N'90766235', 2)
INSERT [dbo].[Users] ([uid], [username], [upassword], [uName], [uAddress], [uCountry], [uState], [uCity], [uContact], [rid]) VALUES (5, N'om', N'2345', N'omk', N'werty', N'asDfg', N'zxcvb', N'tyuiop', N'98765432', 2)
INSERT [dbo].[Users] ([uid], [username], [upassword], [uName], [uAddress], [uCountry], [uState], [uCity], [uContact], [rid]) VALUES (6, N'mitesh', N'mitesh', N'mitesh', N'das', N'dcdc', N'xcdc', N'dccdc', N'8087908000', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[PaymentList]    Script Date: 05/11/2013 15:49:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaymentList](
	[plid] [int] IDENTITY(1,1) NOT NULL,
	[pluid] [int] NULL,
	[plcreditcardno] [varchar](50) NULL,
	[pldate] [date] NULL,
	[amount] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[plid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 05/11/2013 15:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[pack1] [bit] NULL,
	[pack2] [bit] NULL,
	[pack3] [bit] NULL,
	[pack4] [bit] NULL,
	[pack5] [bit] NULL,
	[pack6] [bit] NULL,
	[pack7] [bit] NULL,
	[pack8] [bit] NULL,
	[pack9] [bit] NULL,
	[pack10] [bit] NULL,
	[pack11] [bit] NULL,
	[pack12] [bit] NULL,
	[pack13] [bit] NULL,
	[pack14] [bit] NULL,
	[pack15] [bit] NULL,
	[pack16] [bit] NULL,
	[pack17] [bit] NULL,
	[pack18] [bit] NULL,
	[creditcardno] [bigint] NULL,
	[cvvcode] [int] NULL,
	[amount] [int] NULL,
	[pdate] [datetime] NULL,
	[paid] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Carts] ON
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (2, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16500, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (5, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (7, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (9, 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 156000, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (10, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6658577596876548, 544, 1500, CAST(0x0000A18801718C63 AS DateTime), 1)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (16, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (17, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (18, 3, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 7758799800007890, 655, 43000, CAST(0x0000A189007E2D51 AS DateTime), 1)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (19, 3, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2000, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (20, 3, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7678800000000000, 235, 6000, CAST(0x0000A18B00ED9612 AS DateTime), 1)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (21, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (22, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6788680979086754, 234, 1500, CAST(0x0000A18B00FDA76C AS DateTime), 1)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (23, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (24, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 9000, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (25, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1500, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (26, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (27, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (28, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (29, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (30, 5, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5886578646897564, 448, 7500, CAST(0x0000A18B011D3AAC AS DateTime), 1)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (31, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (32, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (33, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (34, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (35, 3, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (36, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (37, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (38, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (39, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (40, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (41, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (42, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (43, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (44, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (45, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (46, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (47, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (48, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (49, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (50, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (51, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (52, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (53, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Carts] ([cid], [uid], [pack1], [pack2], [pack3], [pack4], [pack5], [pack6], [pack7], [pack8], [pack9], [pack10], [pack11], [pack12], [pack13], [pack14], [pack15], [pack16], [pack17], [pack18], [creditcardno], [cvvcode], [amount], [pdate], [paid]) VALUES (54, 6, 1, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10500, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Carts] OFF
/****** Object:  Table [dbo].[Cart]    Script Date: 05/11/2013 15:49:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[plid] [int] NULL,
	[package] [int] NULL,
	[price] [int] NULL,
	[noofpeople] [int] NULL,
	[totalprice] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK__Cart__plid__1ED998B2]    Script Date: 05/11/2013 15:49:37 ******/
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([plid])
REFERENCES [dbo].[PaymentList] ([plid])
GO
/****** Object:  ForeignKey [FK__Carts__uid__31EC6D26]    Script Date: 05/11/2013 15:49:37 ******/
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD FOREIGN KEY([uid])
REFERENCES [dbo].[Users] ([uid])
GO
/****** Object:  ForeignKey [FK__PaymentLi__pluid__1A14E395]    Script Date: 05/11/2013 15:49:38 ******/
ALTER TABLE [dbo].[PaymentList]  WITH CHECK ADD FOREIGN KEY([pluid])
REFERENCES [dbo].[Users] ([uid])
GO
/****** Object:  ForeignKey [fk_rid]    Script Date: 05/11/2013 15:49:38 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [fk_rid] FOREIGN KEY([rid])
REFERENCES [dbo].[roles] ([rid])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [fk_rid]
GO
