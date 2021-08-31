create database [Photo]
GO
drop database [Photo]
USE [Photo]
GO
CREATE TABLE [dbo].[Contact](
	[Address] [varchar](max) NULL,
	[City] [varchar](max) NULL,
	[Country] [varchar](max) NULL,
	[Tel] [varchar](max) NULL,
	[Email] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GalleryName] [varchar](max) NULL,
	[Picture] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Gallery] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery_Image](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GalleryID] [int] NULL,
	[Image] [varchar](max) NULL,
 CONSTRAINT [PK_Gallery_Image] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Introduction](
	[IntroImage] [varchar](max) NULL,
	[IntroCaption] [varchar](max) NULL,
	[About] [varchar](max) NULL,
	[ViewPage] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Contact] ([Address], [City], [Country], [Tel], [Email]) VALUES (N'Hai Hau, Nam Dinh', N'Nam Dinh', N'Viet Nam', N'0832096838', N'nhattm@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Gallery] ON 
GO
INSERT [dbo].[Gallery] ([ID], [GalleryName], [Picture], [Description]) VALUES (1, N'Gallery 1', N'1.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
')
GO
INSERT [dbo].[Gallery] ([ID], [GalleryName], [Picture], [Description]) VALUES (2, N'Gallery 2', N'2.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
')
GO
INSERT [dbo].[Gallery] ([ID], [GalleryName], [Picture], [Description]) VALUES (3, N'Gallery 3', N'3.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
')
GO
INSERT [dbo].[Gallery] ([ID], [GalleryName], [Picture], [Description]) VALUES (4, N'Gallery 4', N'4.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
')
GO
INSERT [dbo].[Gallery] ([ID], [GalleryName], [Picture], [Description]) VALUES (5, N'Gallery 5', N'5.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
')
GO
INSERT [dbo].[Gallery] ([ID], [GalleryName], [Picture], [Description]) VALUES (6, N'Gallery 6', N'6.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
')
GO
INSERT [dbo].[Gallery] ([ID], [GalleryName], [Picture], [Description]) VALUES (7, N'Gallery 7', N'7.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
')
GO
INSERT [dbo].[Gallery] ([ID], [GalleryName], [Picture], [Description]) VALUES (8, N'Gallery 8', N'8.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
')
GO
INSERT [dbo].[Gallery] ([ID], [GalleryName], [Picture], [Description]) VALUES (9, N'Gallery 9', N'5.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
')
GO
SET IDENTITY_INSERT [dbo].[Gallery] OFF
GO
SET IDENTITY_INSERT [dbo].[Gallery_Image] ON 
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (1, 3, N'i284852689410739336._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (2, 5, N'i284852689410739339._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (3, 5, N'i284852689410739343._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (4, 2, N'i284852689410739443._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (5, 1, N'i284852689410739585._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (6, 1, N'i284852689425710823._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (7, 5, N'i284852689425710847._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (8, 5, N'i284852689410739338._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (9, 2, N'i284852689410739388._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (10, 5, N'i284852689410739395._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (11, 2, N'i284852689410739397._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (12, 1, N'i284852689410739397._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (13, 5, N'i284852689410739472._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (14, 2, N'i284852689410739576._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (15, 4, N'i284852689425710873._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (16, 5, N'i284852689425710884._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (17, 3, N'i284852689425710892._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (18, 2, N'i284852689410739497._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (19, 3, N'i284852689410739518._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (20, 2, N'i284852689410739520._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (21, 2, N'i284852689410739525._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (22, 3, N'i284852689410739528._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (23, 1, N'i284852689425710916._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (24, 4, N'i284852689425710922._szw360h1280_.jpg')
GO
INSERT [dbo].[Gallery_Image] ([ID], [GalleryID], [Image]) VALUES (25, 1, N'i284852689425710932._szw360h1280_.jpg')

SET IDENTITY_INSERT [dbo].[Gallery_Image] OFF
GO
INSERT [dbo].[Introduction] ([IntroImage], [IntroCaption], [About], [ViewPage]) VALUES (N'intro_image.jpg', N'Lorem ipsum dolor sit amet
 hehe', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim
', 100)
GO
ALTER TABLE [dbo].[Gallery_Image]  WITH CHECK ADD  CONSTRAINT [FK_Gallery_Image_Gallery] FOREIGN KEY([GalleryID])
REFERENCES [dbo].[Gallery] ([ID])
GO
ALTER TABLE [dbo].[Gallery_Image] CHECK CONSTRAINT [FK_Gallery_Image_Gallery]
GO
USE [master]
GO
