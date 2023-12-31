USE [DEMO_SWP]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 26-Jul-23 12:46:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Course_name] [nvarchar](1000) NULL,
	[Description] [nvarchar](4000) NULL,
	[Type_ID] [int] NULL,
	[Price] [numeric](10, 2) NULL,
	[Public_Date] [nvarchar](50) NULL,
	[Mentor_ID] [int] NULL,
	[Image] [nvarchar](1000) NULL,
	[Status] [int] NULL,
	[URL] [nvarchar](2000) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseModule]    Script Date: 26-Jul-23 12:46:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseModule](
	[ModuleID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NULL,
	[ModuleName] [nvarchar](1000) NULL,
	[Link] [nvarchar](2000) NULL,
 CONSTRAINT [PK_CourseModule] PRIMARY KEY CLUSTERED 
(
	[ModuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseType]    Script Date: 26-Jul-23 12:46:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type_Name] [nvarchar](1000) NULL,
	[Date_Create_Course] [nvarchar](100) NULL,
	[Status] [int] NULL,
	[Description] [nvarchar](2000) NULL,
	[Modified_date] [nvarchar](50) NULL,
 CONSTRAINT [PK_CourseType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 26-Jul-23 12:46:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Customer_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 26-Jul-23 12:46:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NOT NULL,
	[Description] [nvarchar](2000) NOT NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlashCardDetail]    Script Date: 26-Jul-23 12:46:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlashCardDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Fl_ID] [int] NULL,
	[Question] [nvarchar](4000) NULL,
	[Answer] [nvarchar](4000) NULL,
 CONSTRAINT [PK_FlashCardDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flashcards]    Script Date: 26-Jul-23 12:46:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flashcards](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](3000) NULL,
	[Author] [int] NULL,
	[URL] [nvarchar](3000) NULL,
 CONSTRAINT [PK_Flashcards] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mentor]    Script Date: 26-Jul-23 12:46:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mentor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Skills] [nvarchar](250) NULL,
	[Job] [nvarchar](250) NULL,
	[UserID] [int] NOT NULL,
	[Amount] [float] NULL,
 CONSTRAINT [PK_Mentor_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 26-Jul-23 12:46:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewsID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](1000) NOT NULL,
	[Image] [nvarchar](200) NOT NULL,
	[Create_Date] [nvarchar](50) NOT NULL,
	[NewsContent] [nvarchar](max) NOT NULL,
	[Create_By] [nvarchar](100) NOT NULL,
	[Status] [int] NOT NULL,
	[Type] [int] NULL,
	[URL] [nvarchar](2000) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[NewsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsType]    Script Date: 26-Jul-23 12:46:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type_name] [nvarchar](1000) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[URL] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 26-Jul-23 12:46:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Total_Money] [numeric](18, 2) NULL,
	[Payment_Method] [nvarchar](50) NULL,
	[Date] [date] NULL,
	[OrderCode] [nvarchar](50) NULL,
	[CourseID] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 26-Jul-23 12:46:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [int] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 26-Jul-23 12:46:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Full_name] [nvarchar](50) NULL,
	[E-mail] [nvarchar](50) NULL,
	[Role] [int] NULL,
	[Phone] [char](10) NULL,
	[Date of Birth] [nvarchar](15) NULL,
	[Verified] [bit] NULL,
	[Avatar] [nvarchar](150) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([ID], [Course_name], [Description], [Type_ID], [Price], [Public_Date], [Mentor_ID], [Image], [Status], [URL]) VALUES (1, N'Learn Python', N'<p>Python is a general-purpose, versatile and popular programming language. It&rsquo;s great as a first language because it is concise and easy to read, and it is also a good language to have in any programmer&rsquo;s stack as it can be used for everything from web development to software development and scientific applications.</p>

<h3>Take-Away Skills:</h3>

<p>This course is a great introduction to both fundamental programming concepts and the Python programming language. By the end, you&rsquo;ll be comfortable programming in Python and taking your skills off the Codecademy platform and onto your own computer.</p>
', 2, CAST(500.00 AS Numeric(10, 2)), N'21/07/2023', 1, N'assets/img/OIP (2).jpg', 1, N'learn-python')
INSERT [dbo].[Course] ([ID], [Course_name], [Description], [Type_ID], [Price], [Public_Date], [Mentor_ID], [Image], [Status], [URL]) VALUES (2, N'Basic Blockchain', N'<p>Kh&oacute;a học c&oacute; c&aacute;c giảng vi&ecirc;n l&agrave; c&aacute;c chuy&ecirc;n gia h&agrave;ng đầu c&oacute; kinh nghiệm l&agrave;m việc với rất nhiều c&aacute;c dự &aacute;n Blockchain sẽ trực tiếp giảng dạy v&agrave; dẫn dắt học vi&ecirc;n tham gia c&aacute;c dự &aacute;n chuy&ecirc;n nghiệp. Sau khi tốt nghiệp, c&aacute;c bạn sẽ tự tin trở th&agrave;nh một Developer Blockchain.</p>

<p>Đối tượng tham gia</p>

<ul>
	<li>Sinh vi&ecirc;n CNTT ở c&aacute;c trường Đại học, Cao đẳng</li>
	<li>Người đang l&agrave;m trong ng&agrave;nh CNTT muốn t&igrave;m hiểu về Blockchain</li>
	<li>Người muốn chuyển ng&agrave;nh, t&igrave;m kiếm một c&ocirc;ng việc ổn định với mức thu nhập cao</li>
	<li>Người c&oacute; &yacute; tưởng v&agrave; muốn tự tay x&acirc;y dựng ứng dụng Blockchain cho ri&ecirc;ng m&igrave;nh</li>
</ul>
', 3, CAST(999.00 AS Numeric(10, 2)), N'25/07/2023', 2, N'assets/img/artboard-1-copy-2-100.jpg', 1, N'basic-blockchain')
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseModule] ON 

INSERT [dbo].[CourseModule] ([ModuleID], [CourseID], [ModuleName], [Link]) VALUES (1, 1, N'Tutorial #1', N'https://www.youtube.com/embed/2dmBp5RydwE')
INSERT [dbo].[CourseModule] ([ModuleID], [CourseID], [ModuleName], [Link]) VALUES (2, 1, N'Tutorial #2', N'https://www.youtube.com/embed/9uO8xevFuiE')
INSERT [dbo].[CourseModule] ([ModuleID], [CourseID], [ModuleName], [Link]) VALUES (3, 1, N'Tutorial #3', N'https://www.youtube.com/embed/957sccX2HGA')
INSERT [dbo].[CourseModule] ([ModuleID], [CourseID], [ModuleName], [Link]) VALUES (4, 1, N'Tutorial #4', N'https://www.youtube.com/embed/90qeRej1-CY')
INSERT [dbo].[CourseModule] ([ModuleID], [CourseID], [ModuleName], [Link]) VALUES (5, 1, N'Tutorial #5', N'https://www.youtube.com/embed/FP3Qds65Jhc')
INSERT [dbo].[CourseModule] ([ModuleID], [CourseID], [ModuleName], [Link]) VALUES (6, 2, N'Trở thành blockchain dev từ con số 0', N'https://www.youtube.com/embed/yXUMvyr6n3Y')
INSERT [dbo].[CourseModule] ([ModuleID], [CourseID], [ModuleName], [Link]) VALUES (7, 2, N'Ngắn gọn thôi: Blockchain là gì?', N'https://www.youtube.com/embed/FUnF0OwwUbQ')
INSERT [dbo].[CourseModule] ([ModuleID], [CourseID], [ModuleName], [Link]) VALUES (8, 2, N'Bitcoin & Ethereum', N'https://www.youtube.com/embed/43Uf6ollNfA')
INSERT [dbo].[CourseModule] ([ModuleID], [CourseID], [ModuleName], [Link]) VALUES (9, 2, N'Cryptographic hash: Thuật toán băm trên blockchain', N'https://www.youtube.com/embed/jt5VvVn_Gq8')
INSERT [dbo].[CourseModule] ([ModuleID], [CourseID], [ModuleName], [Link]) VALUES (10, 2, N'Wallet là gì?', N'https://www.youtube.com/embed/Wzp-aM8PVUc')
INSERT [dbo].[CourseModule] ([ModuleID], [CourseID], [ModuleName], [Link]) VALUES (11, 2, N'Blockchain Address - Địa chỉ ví', N'https://www.youtube.com/embed/hDN-3UpxlaE')
INSERT [dbo].[CourseModule] ([ModuleID], [CourseID], [ModuleName], [Link]) VALUES (12, 2, N'Blockchain Transactions', N'https://www.youtube.com/embed/wctoXZHdX8k')
SET IDENTITY_INSERT [dbo].[CourseModule] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseType] ON 

INSERT [dbo].[CourseType] ([ID], [Type_Name], [Date_Create_Course], [Status], [Description], [Modified_date]) VALUES (1, N'C', N'21/07/2023', 1, N'Welcome to the Fcourse free interactive C tutorial .Whether you are an experienced programmer or not, this website is intended for everyone who wishes to learn the C programming language. There is no need to download anything - Just click on the chapter you wish to begin from, and follow the instructions. Good luck!', NULL)
INSERT [dbo].[CourseType] ([ID], [Type_Name], [Date_Create_Course], [Status], [Description], [Modified_date]) VALUES (2, N'Python', N'21/07/2023', 1, N'Learn the basics of the world’s fastest growing and most popular programming language used by software engineers, analysts, data scientists, and machine learning engineers alike.', NULL)
INSERT [dbo].[CourseType] ([ID], [Type_Name], [Date_Create_Course], [Status], [Description], [Modified_date]) VALUES (3, N'Blockchain', N'25/07/2023', 1, N'The course has instructors who are leading experts with experience working with many Blockchain projects who will directly teach and lead students to participate in professional projects. After graduation, you will confidently become a Blockchain Developer.', NULL)
SET IDENTITY_INSERT [dbo].[CourseType] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [Address], [UserID]) VALUES (1, N'Thanh Hóa', 2)
INSERT [dbo].[Customer] ([ID], [Address], [UserID]) VALUES (2, N'Thanh Hóa', 3)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Mentor] ON 

INSERT [dbo].[Mentor] ([ID], [Skills], [Job], [UserID], [Amount]) VALUES (1, NULL, NULL, 4, 1360)
INSERT [dbo].[Mentor] ([ID], [Skills], [Job], [UserID], [Amount]) VALUES (2, NULL, NULL, 6, 0)
INSERT [dbo].[Mentor] ([ID], [Skills], [Job], [UserID], [Amount]) VALUES (3, NULL, NULL, 7, 0)
SET IDENTITY_INSERT [dbo].[Mentor] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [CustomerID], [Status], [Total_Money], [Payment_Method], [Date], [OrderCode], [CourseID]) VALUES (18, 2, 1, CAST(500.00 AS Numeric(18, 2)), N'Pay TpBank', CAST(N'2023-07-26' AS Date), N'learnpytho493393', 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[Roles] ([ID], [Description], [Name]) VALUES (1, N'Adnin', N'Admin')
INSERT [dbo].[Roles] ([ID], [Description], [Name]) VALUES (2, N'Mentor', N'Mentor')
INSERT [dbo].[Roles] ([ID], [Description], [Name]) VALUES (3, N'Customer', N'Customer')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [Username], [Password], [Full_name], [E-mail], [Role], [Phone], [Date of Birth], [Verified], [Avatar], [Status]) VALUES (2, N'tung020802@gmail.com', N'', N'Trung Kiên', N'tung020802@gmail.com', 3, N'0943494158', N'2002-09-07', 0, N'assets/img/358438451_737618651497686_7008557648730659265_n.jpg', 1)
INSERT [dbo].[User] ([ID], [Username], [Password], [Full_name], [E-mail], [Role], [Phone], [Date of Birth], [Verified], [Avatar], [Status]) VALUES (3, N'truggkien7902@gmail.com', N'', N'Trung Kiên', N'truggkien7902@gmail.com', 3, N'0911781973', N'2002-09-07', 0, N'assets/img/358438451_737618651497686_7008557648730659265_n.jpg', 1)
INSERT [dbo].[User] ([ID], [Username], [Password], [Full_name], [E-mail], [Role], [Phone], [Date of Birth], [Verified], [Avatar], [Status]) VALUES (4, N'benjamin', N'74b8ecadc4d19d318a5c3f0bf0f67ea2', N'Benjamin', N'benjamin@fcourse.com', 2, N'0943494158', N'2002-09-07', 1, NULL, 1)
INSERT [dbo].[User] ([ID], [Username], [Password], [Full_name], [E-mail], [Role], [Phone], [Date of Birth], [Verified], [Avatar], [Status]) VALUES (5, N'admin', N'c4ca4238a0b923820dcc509a6f75849b', N'ADMIN', N'admin@fcourse.com', 1, N'0943494158', N'2002-09-07', 1, NULL, 1)
INSERT [dbo].[User] ([ID], [Username], [Password], [Full_name], [E-mail], [Role], [Phone], [Date of Birth], [Verified], [Avatar], [Status]) VALUES (6, N'quanit', N'74b8ecadc4d19d318a5c3f0bf0f67ea2', N'Quân IT', N'quanit@fcourse.com', 2, N'0948000761', N'2002-09-07', 1, NULL, 1)
INSERT [dbo].[User] ([ID], [Username], [Password], [Full_name], [E-mail], [Role], [Phone], [Date of Birth], [Verified], [Avatar], [Status]) VALUES (7, N'eqw', N'74b8ecadc4d19d318a5c3f0bf0f67ea2', N'Quân IT', N'qwe@dqdqw.com', 2, N'0948000761', N'2002-09-07', 1, N'assets/img/358438451_737618651497686_7008557648730659265_n.jpg', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_CourseType] FOREIGN KEY([Type_ID])
REFERENCES [dbo].[CourseType] ([ID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_CourseType]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Mentor] FOREIGN KEY([Mentor_ID])
REFERENCES [dbo].[Mentor] ([ID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Mentor]
GO
ALTER TABLE [dbo].[CourseModule]  WITH CHECK ADD  CONSTRAINT [FK_CourseModule_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([ID])
GO
ALTER TABLE [dbo].[CourseModule] CHECK CONSTRAINT [FK_CourseModule_Course]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_User1] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_User1]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Course1] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([ID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Course1]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_User]
GO
ALTER TABLE [dbo].[FlashCardDetail]  WITH CHECK ADD  CONSTRAINT [FK_FlashCardDetail_Flashcards1] FOREIGN KEY([Fl_ID])
REFERENCES [dbo].[Flashcards] ([ID])
GO
ALTER TABLE [dbo].[FlashCardDetail] CHECK CONSTRAINT [FK_FlashCardDetail_Flashcards1]
GO
ALTER TABLE [dbo].[Flashcards]  WITH CHECK ADD  CONSTRAINT [FK_Flashcards_User] FOREIGN KEY([Author])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Flashcards] CHECK CONSTRAINT [FK_Flashcards_User]
GO
ALTER TABLE [dbo].[Mentor]  WITH CHECK ADD  CONSTRAINT [FK_Mentor_User1] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Mentor] CHECK CONSTRAINT [FK_Mentor_User1]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_NewsType] FOREIGN KEY([Type])
REFERENCES [dbo].[NewsType] ([ID])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_NewsType]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Roles] FOREIGN KEY([Role])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Roles]
GO
