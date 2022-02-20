USE [ServiceBase]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 20.02.2022 19:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[IDGender] [nchar](1) NOT NULL,
	[Phone] [char](30) NOT NULL,
	[Pic] [nvarchar](1000) NOT NULL,
	[DateOfBrith] [date] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DateOfRegistration] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 20.02.2022 19:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Code] [nchar](1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 20.02.2022 19:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Time] [int] NOT NULL,
	[Cost] [money] NOT NULL,
	[Discount] [int] NOT NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceClient]    Script Date: 20.02.2022 19:38:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceClient](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDClient] [int] NOT NULL,
	[StartTimeService] [datetime] NOT NULL,
	[IDService] [int] NOT NULL,
 CONSTRAINT [PK_ServiceClient] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (2, N'Голубев', N'Иосиф', N'Тимофеевич', N'м', N'7(78)972-73-11                ', N'Клиенты\m18.jpg', CAST(N'1982-05-06' AS Date), N'smcnabb@att.net', N'2018-08-18')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (3, N'Ермакова', N'Алла', N'Мироновна', N'ж', N'7(06)437-13-73                ', N'Клиенты\48.jpg', CAST(N'1976-01-22' AS Date), N'whimsy@aol.com', N'2017-02-09')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (4, N'Селиверстов', N'Глеб', N'Максимович', N'м', N'7(20)554-28-68                ', N'Клиенты\m37.jpg', CAST(N'1999-06-20' AS Date), N'jigsaw@sbcglobal.net', N'2016-01-07')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (5, N'Агафонов', N'Юстиниан', N'Олегович', N'м', N'7(303)810-28-78               ', N'Клиенты\m1.jpg', CAST(N'1997-02-02' AS Date), N'staffelb@sbcglobal.net', N'2016-06-08')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (6, N'Колобова', N'Злата', N'Романовна', N'ж', N'7(50)884-07-35                ', N'Клиенты\18.jpg', CAST(N'1994-08-25' AS Date), N'sinkou@aol.com', N'2016-12-03')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (7, N'Сысоева', N'Дарина', N'Ярославовна', N'ж', N'7(0698)387-96-04              ', N'Клиенты\32.jpg', CAST(N'1982-02-03' AS Date), N'treit@verizon.net', N'2016-05-13')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (8, N'Некрасов', N'Варлам', N'Михайлович', N'м', N'7(019)258-06-35               ', N'Клиенты\m42.jpg', CAST(N'2000-11-12' AS Date), N'dogdude@verizon.net', N'2017-12-03')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (9, N'Крюков', N'Наум', N'Ильяович', N'м', N'7(81)657-88-92                ', N'Клиенты\m30.jpg', CAST(N'1993-11-17' AS Date), N'floxy@hotmail.com', N'2017-02-01')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (10, N'Сидорова', N'Татьяна', N'Михайловна', N'ж', N'7(51)732-91-79                ', N'Клиенты\42.jpg', CAST(N'1974-04-24' AS Date), N'tbeck@mac.com', N'2018-10-03')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (11, N'Трофимова', N'Альжбета', N'Якововна', N'ж', N'7(1084)658-92-95              ', N'Клиенты\25.jpg', CAST(N'1988-10-22' AS Date), N'gbacon@mac.com', N'2017-09-21')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (12, N'Новиков', N'Адриан', N'Аркадьевич', N'м', N'7(70)572-33-62                ', N'Клиенты\m40.jpg', CAST(N'1974-01-15' AS Date), N'multiplx@verizon.net', N'2018-11-23')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (13, N'Мишина', N'Иветта', N'Андреевна', N'ж', N'7(3926)244-81-96              ', N'Клиенты\30.jpg', CAST(N'2002-10-05' AS Date), N'aukjan@yahoo.com', N'2016-01-24')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (14, N'Шестаков', N'Геннадий', N'Рубенович', N'м', N'7(2066)037-11-60              ', N'Клиенты\m41.jpg', CAST(N'2001-07-01' AS Date), N'tokuhirom@live.com', N'2018-12-08')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (15, N'Зуев', N'Матвей', N'Иванович', N'м', N'7(5383)893-04-66              ', N'Клиенты\m38.jpg', CAST(N'1981-03-28' AS Date), N'brickbat@verizon.net', N'2018-12-18')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (16, N'Турова', N'Георгина', N'Семёновна', N'ж', N'7(555)321-42-99               ', N'Клиенты\27.jpg', CAST(N'1974-05-28' AS Date), N'yruan@optonline.net', N'2018-02-22')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (17, N'Анисимов', N'Валентин', N'Пантелеймонович', N'м', N'7(700)326-70-24               ', N'Клиенты\m99.jpg', CAST(N'2000-12-10' AS Date), N'aaribaud@hotmail.com', N'2018-01-20')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (18, N'Анисимова', N'Тамара', N'Витальевна', N'ж', N'7(66)128-04-10                ', N'Клиенты\2.jpg', CAST(N'1988-06-16' AS Date), N'schwaang@mac.com', N'2016-02-25')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (19, N'Колобов', N'Орест', N'Юлианович', N'м', N'7(1680)508-58-26              ', N'Клиенты\m27.jpg', CAST(N'2001-07-14' AS Date), N'parkes@verizon.net', N'2017-01-01')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (20, N'Филатов', N'Аристарх', N'Дмитриевич', N'м', N'7(696)235-29-24               ', N'Клиенты\m43.jpg', CAST(N'1989-05-29' AS Date), N'hampton@att.net', N'2017-01-11')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (21, N'Орлова', N'Влада', N'Мартыновна', N'ж', N'7(2506)433-38-35              ', N'Клиенты\22.jpg', CAST(N'1990-06-26' AS Date), N'rnelson@yahoo.ca', N'2016-03-21')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (22, N'Алексеева', N'Элина', N'Матвеевна', N'ж', N'7(8086)245-64-81              ', N'Клиенты\1.jpg', CAST(N'2002-05-07' AS Date), N'pthomsen@verizon.net', N'2018-03-28')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (23, N'Бобров', N'Агафон', N'Лаврентьевич', N'м', N'7(2159)507-39-57              ', N'Клиенты\m35.jpg', CAST(N'1995-07-29' AS Date), N'petersen@comcast.net', N'2017-05-09')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (24, N'Бирюкова', N'Инара', N'Улебовна', N'ж', N'7(098)346-50-58               ', N'Клиенты\5.jpg', CAST(N'1978-07-21' AS Date), N'smpeters@hotmail.com', N'2017-10-01')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (25, N'Панфилов', N'Марк', N'Рудольфович', N'м', N'7(764)282-55-22               ', N'Клиенты\m45.jpg', CAST(N'1991-04-13' AS Date), N'cremonini@optonline.net', N'2016-02-23')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (26, N'Колесникова', N'Алина', N'Еремеевна', N'ж', N'7(74)977-39-71                ', N'Клиенты\40.jpg', CAST(N'2001-04-19' AS Date), N'gfxguy@outlook.com', N'2017-01-18')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (27, N'Морозов', N'Наум', N'Валерьянович', N'м', N'7(636)050-96-13               ', N'Клиенты\m49.jpg', CAST(N'1985-07-04' AS Date), N'salesgeek@mac.com', N'2016-05-02')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (28, N'Горбачёв', N'Давид', N'Тимурович', N'м', N'7(53)602-85-41                ', N'Клиенты\m36.jpg', CAST(N'1983-05-22' AS Date), N'hedwig@att.net', N'2018-12-17')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (29, N'Васильев', N'Оскар', N'Богданович', N'м', N'7(585)801-94-29               ', N'Клиенты\m15.jpg', CAST(N'1971-01-30' AS Date), N'miturria@verizon.net', N'2017-05-28')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (30, N'Ершова', N'Номи', N'Андреевна', N'ж', N'7(7757)315-90-99              ', N'Клиенты\14.jpg', CAST(N'2001-09-13' AS Date), N'miltchev@mac.com', N'2016-06-30')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (31, N'Медведев', N'Святослав', N'Юлианович', N'м', N'7(3520)435-21-20              ', N'Клиенты\m13.jpg', CAST(N'1972-10-04' AS Date), N'hllam@comcast.net', N'2018-10-13')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (32, N'Баранова', N'Эльмира', N'Дмитриевна', N'ж', N'7(9240)643-15-50              ', N'Клиенты\4.jpg', CAST(N'1977-01-15' AS Date), N'jgmyers@comcast.net', N'2016-07-08')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (33, N'Попова', N'Харита', N'Якуновна', N'ж', N'7(335)386-81-06               ', N'Клиенты\36.jpg', CAST(N'1997-12-16' AS Date), N'firstpr@verizon.net', N'2016-07-05')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (34, N'Кудряшов', N'Аверкий', N'Константинович', N'м', N'7(88)732-96-30                ', N'Клиенты\m33.jpg', CAST(N'1991-07-26' AS Date), N'nanop@msn.com', N'2018-03-08')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (35, N'Горшкова', N'Марта', N'Иосифовна', N'ж', N'7(544)650-59-03               ', N'Клиенты\9.jpg', CAST(N'2001-02-13' AS Date), N'gbacon@mac.com', N'2016-08-04')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (36, N'Кудрявцев', N'Богдан', N'Христофорович', N'м', N'7(20)131-84-09                ', N'Клиенты\m31.jpg', CAST(N'1988-02-27' AS Date), N'lukka@hotmail.com', N'2016-10-07')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (37, N'Гусев', N'Яков', N'Авксентьевич', N'м', N'7(0972)781-11-37              ', N'Клиенты\m20.jpg', CAST(N'1995-12-10' AS Date), N'jdhedden@icloud.com', N'2017-11-20')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (38, N'Крюкова', N'Авигея', N'Святославовна', N'ж', N'7(499)318-88-53               ', N'Клиенты\19.jpg', CAST(N'2000-08-10' AS Date), N'simone@gmail.com', N'2018-01-03')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (39, N'Степанова', N'Амелия', N'Робертовна', N'ж', N'7(1217)441-28-42              ', N'Клиенты\15.jpg', CAST(N'1970-06-06' AS Date), N'rasca@hotmail.com', N'2017-09-27')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (40, N'Суворова', N'Божена', N'Анатольевна', N'ж', N'7(347)895-86-57               ', N'Клиенты\34.jpg', CAST(N'1981-03-09' AS Date), N'attwood@aol.com', N'2016-01-28')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (41, N'Борисов', N'Аввакум', N'Артемович', N'м', N'7(2296)930-08-88              ', N'Клиенты\m12.jpg', CAST(N'1974-04-25' AS Date), N'chlim@live.com', N'2017-03-11')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (42, N'Бобылёв', N'Георгий', N'Витальевич', N'м', N'7(88)685-13-51                ', N'Клиенты\m11.jpg', CAST(N'1983-12-19' AS Date), N'csilvers@mac.com', N'2018-04-06')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (43, N'Дроздов', N'Вольдемар', N'Артемович', N'м', N'7(307)456-99-05               ', N'Клиенты\m21.jpg', CAST(N'1976-02-07' AS Date), N'smpeters@me.com', N'2017-07-18')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (44, N'Беляева', N'Сабрина', N'Федосеевна', N'ж', N'7(6580)534-32-58              ', N'Клиенты\47.jpg', CAST(N'1972-07-26' AS Date), N'agapow@gmail.com', N'2017-06-14')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (45, N'Блохин', N'Пантелеймон', N'Феликсович', N'м', N'7(9524)556-48-98              ', N'Клиенты\m8.jpg', CAST(N'1978-03-06' AS Date), N'balchen@comcast.net', N'2018-02-14')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (46, N'Шашкова', N'Гелла', N'Эдуардовна', N'ж', N'7(57)446-21-04                ', N'Клиенты\43.jpg', CAST(N'1979-02-24' AS Date), N'jadavis@mac.com', N'2016-11-16')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (47, N'Калашников', N'Артур', N'Юрьевич', N'м', N'7(147)947-47-21               ', N'Клиенты\m10.jpg', CAST(N'1972-12-13' AS Date), N'oevans@aol.com', N'2017-08-20')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (48, N'Корнилова', N'Анэля', N'Михайловна', N'ж', N'7(20)980-01-60                ', N'Клиенты\26.jpg', CAST(N'1973-04-02' AS Date), N'jonathan@aol.com', N'2016-05-22')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (49, N'Гущина', N'Янита', N'Федоровна', N'ж', N'7(4544)716-68-96              ', N'Клиенты\11.jpg', CAST(N'1999-03-02' AS Date), N'lishoy@att.net', N'2018-02-01')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (50, N'Волков', N'Людвиг', N'Витальевич', N'м', N'7(8459)592-05-58              ', N'Клиенты\m50.jpg', CAST(N'1977-12-27' AS Date), N'jrkorson@msn.com', N'2016-04-27')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (51, N'Князев', N'Терентий', N'Валерьевич', N'м', N'7(98)397-23-23                ', N'Клиенты\m26.jpg', CAST(N'1991-06-19' AS Date), N'rjones@aol.com', N'2018-06-25')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (52, N'Силин', N'Гаянэ', N'Анатольевич', N'м', N'7(4547)615-22-69              ', N'Клиенты\m46.jpg', CAST(N'1976-05-27' AS Date), N'multiplx@comcast.net', N'2017-05-05')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (53, N'Казаков', N'Дмитрий', N'Русланович', N'м', N'7(51)682-19-40                ', N'Клиенты\m44.jpg', CAST(N'1978-12-15' AS Date), N'ozawa@verizon.net', N'2016-05-21')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (54, N'Гусева', N'Роза', N'Дмитриевна', N'ж', N'7(23)064-51-84                ', N'Клиенты\10.jpg', CAST(N'1999-02-13' AS Date), N'martyloo@live.com', N'2017-12-12')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (55, N'Мамонтова', N'Марфа', N'Мироновна', N'ж', N'7(38)095-64-18                ', N'Клиенты\29.jpg', CAST(N'1984-10-19' AS Date), N'rfoley@verizon.net', N'2018-02-27')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (56, N'Галкин', N'Эрик', N'Онисимович', N'м', N'7(759)873-77-39               ', N'Клиенты\m16.jpg', CAST(N'1975-01-18' AS Date), N'snunez@verizon.net', N'2016-07-19')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (57, N'Архипова', N'Прасковья', N'Валерьевна', N'ж', N'7(86)540-10-21                ', N'Клиенты\33.jpg', CAST(N'1979-01-09' AS Date), N'cgcra@live.com', N'2018-07-23')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (58, N'Овчинникова', N'Лаура', N'Еремеевна', N'ж', N'7(85)829-33-79                ', N'Клиенты\35.jpg', CAST(N'1992-04-03' AS Date), N'carcus@yahoo.ca', N'2018-11-24')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (59, N'Андреева', N'Патрисия', N'Валерьевна', N'ж', N'7(9648)953-81-26              ', N'Клиенты\37.jpg', CAST(N'1993-11-18' AS Date), N'jigsaw@aol.com', N'2016-07-17')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (60, N'Авдеев', N'Самуил', N'Улебович', N'м', N'7(3168)043-63-31              ', N'Клиенты\m96.jpg', CAST(N'1996-07-04' AS Date), N'cliffordj@mac.com', N'2016-02-11')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (61, N'Бурова', N'Светлана', N'Лукьевна', N'ж', N'7(358)173-82-21               ', N'Клиенты\39.jpg', CAST(N'1979-01-04' AS Date), N'wsnyder@aol.com', N'2016-10-13')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (62, N'Ершов', N'Глеб', N'Федорович', N'м', N'7(2608)298-40-82              ', N'Клиенты\m23.jpg', CAST(N'1970-06-14' AS Date), N'sjava@aol.com', N'2016-09-14')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (63, N'Игнатов', N'Захар', N'Павлович', N'м', N'7(578)574-73-36               ', N'Клиенты\m98.jpg', CAST(N'1998-10-07' AS Date), N'dieman@icloud.com', N'2017-11-10')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (64, N'Комиссарова', N'Амалия', N'Робертовна', N'ж', N'7(22)647-46-32                ', N'Клиенты\17.jpg', CAST(N'1971-08-18' AS Date), N'jorgb@msn.com', N'2017-08-04')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (65, N'Быков', N'Трофим', N'Константинович', N'м', N'7(3414)460-12-05              ', N'Клиенты\m14.jpg', CAST(N'1994-12-20' AS Date), N'jguyer@aol.com', N'2016-04-17')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (66, N'Кузьмин', N'Леонтий', N'Валерьянович', N'м', N'7(1340)148-90-68              ', N'Клиенты\m17.jpg', CAST(N'2000-05-05' AS Date), N'msloan@hotmail.com', N'2017-10-12')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (67, N'Белозёрова', N'Диана', N'Антоновна', N'ж', N'7(9900)174-59-87              ', N'Клиенты\7.jpg', CAST(N'1989-02-27' AS Date), N'dialworld@aol.com', N'2017-01-30')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (68, N'Блинов', N'Евгений', N'Мэлсович', N'м', N'7(0852)321-82-64              ', N'Клиенты\m7.jpg', CAST(N'1994-01-05' AS Date), N'moxfulder@outlook.com', N'2017-05-07')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (69, N'Лазарев', N'Алексей', N'Богданович', N'м', N'7(0055)737-37-48              ', N'Клиенты\m48.jpg', CAST(N'1977-03-10' AS Date), N'claesjac@me.com', N'2017-01-02')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (70, N'Афанасьева', N'Розалия', N'Макаровна', N'ж', N'7(0661)413-23-32              ', N'Клиенты\31.jpg', CAST(N'1977-05-01' AS Date), N'malattia@hotmail.com', N'2017-09-06')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (71, N'Дементьева', N'Эдита', N'Онисимовна', N'ж', N'7(198)922-28-76               ', N'Клиенты\38.jpg', CAST(N'1975-09-17' AS Date), N'frosal@hotmail.com', N'2018-11-24')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (72, N'Калинин', N'Петр', N'Иванович', N'м', N'7(90)316-07-17                ', N'Клиенты\m47.jpg', CAST(N'1993-09-08' AS Date), N'aschmitz@hotmail.com', N'2016-05-26')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (73, N'Андреев', N'Станислав', N'Максович', N'м', N'7(02)993-91-28                ', N'Клиенты\m3.jpg', CAST(N'1975-10-10' AS Date), N'budinger@mac.com', N'2017-12-26')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (74, N'Киселёв', N'Устин', N'Яковлевич', N'м', N'7(83)334-52-76                ', N'Клиенты\m25.jpg', CAST(N'1985-01-08' AS Date), N'dalamb@verizon.net', N'2018-06-21')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (75, N'Гордеев', N'Павел', N'Семенович', N'м', N'7(5243)599-66-72              ', N'Клиенты\m19.jpg', CAST(N'1984-09-06' AS Date), N'dawnsong@verizon.net', N'2016-07-19')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (76, N'Горбачёва', N'Никки', N'Еремеевна', N'ж', N'7(94)789-69-20                ', N'Клиенты\8.jpg', CAST(N'1987-04-21' AS Date), N'chinthaka@att.net', N'2018-08-16')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (77, N'Копылов', N'Касьян', N'Робертович', N'м', N'7(5774)679-82-06              ', N'Клиенты\m29.jpg', CAST(N'1983-08-04' AS Date), N'crobles@sbcglobal.net', N'2018-03-18')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (78, N'Ефремов', N'Витольд', N'Авксентьевич', N'м', N'7(93)922-14-03                ', N'Клиенты\m28.jpg', CAST(N'1975-12-02' AS Date), N'kwilliams@yahoo.ca', N'2018-04-09')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (79, N'Баранов', N'Михаил', N'Романович', N'м', N'7(750)985-94-13               ', N'Клиенты\m5.jpg', CAST(N'1997-07-12' AS Date), N'bigmauler@outlook.com', N'2018-10-07')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (80, N'Дмитриева', N'Элина', N'Даниловна', N'ж', N'7(787)140-48-84               ', N'Клиенты\12.jpg', CAST(N'1988-12-10' AS Date), N'vmalik@live.com', N'2017-02-11')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (81, N'Федотов', N'Осип', N'Анатольевич', N'м', N'7(590)702-33-06               ', N'Клиенты\m9.jpg', CAST(N'1971-04-13' AS Date), N'breegster@hotmail.com', N'2018-07-23')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (82, N'Быкова', N'Тала', N'Георгьевна', N'ж', N'7(13)915-53-53                ', N'Клиенты\6.jpg', CAST(N'2000-02-22' AS Date), N'ganter@optonline.net', N'2016-08-13')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (83, N'Дементьев', N'Вадим', N'Ростиславович', N'м', N'7(79)330-46-15                ', N'Клиенты\m39.jpg', CAST(N'1993-07-10' AS Date), N'jacks@aol.com', N'2018-03-05')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (84, N'Евсеев', N'Макар', N'Васильевич', N'м', N'7(2141)077-85-70              ', N'Клиенты\m22.jpg', CAST(N'1977-09-13' AS Date), N'parsimony@sbcglobal.net', N'2018-12-05')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (85, N'Абрамов', N'Станислав', N'Филатович', N'м', N'7(6545)478-87-79              ', N'Клиенты\m32.jpg', CAST(N'1989-05-18' AS Date), N'solomon@att.net', N'2016-12-08')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (86, N'Артемьева', N'Лиза', N'Максимовна', N'ж', N'7(696)972-70-21               ', N'Клиенты\3.jpg', CAST(N'1996-05-17' AS Date), N'snunez@yahoo.ca', N'2018-10-07')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (87, N'Кузьмина', N'Дэнна', N'Витальевна', N'ж', N'7(9940)977-45-73              ', N'Клиенты\20.jpg', CAST(N'1993-08-24' AS Date), N'nichoj@mac.com', N'2016-03-27')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (88, N'Ефимова', N'Магда', N'Платоновна', N'ж', N'7(9261)386-15-92              ', N'Клиенты\16.jpg', CAST(N'1995-08-16' AS Date), N'rbarreira@me.com', N'2017-08-01')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (89, N'Ефимов', N'Альберт', N'Проклович', N'м', N'7(416)375-97-19               ', N'Клиенты\m6.jpg', CAST(N'1997-10-29' AS Date), N'houle@live.com', N'2018-06-21')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (90, N'Лазарева', N'Эльвина', N'Робертовна', N'ж', N'7(5564)609-81-37              ', N'Клиенты\28.jpg', CAST(N'1996-02-16' AS Date), N'ahuillet@comcast.net', N'2018-04-11')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (91, N'Воронова', N'Изабелла', N'Вячеславовна', N'ж', N'7(17)433-44-98                ', N'Клиенты\21.jpg', CAST(N'1999-09-24' AS Date), N'kildjean@sbcglobal.net', N'2017-12-21')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (92, N'Куликова', N'Эвелина', N'Вячеславовна', N'ж', N'7(0236)682-42-78              ', N'Клиенты\23.jpg', CAST(N'1997-11-14' AS Date), N'ilikered@hotmail.com', N'2018-02-01')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (93, N'Егорова', N'Амалия', N'Дамировна', N'ж', N'7(7486)408-12-26              ', N'Клиенты\13.jpg', CAST(N'1999-09-28' AS Date), N'drezet@yahoo.com', N'2016-06-30')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (94, N'Александров', N'Станислав', N'Эдуардович', N'м', N'7(18)164-05-12                ', N'Клиенты\m2.jpg', CAST(N'1981-07-04' AS Date), N'bigmauler@aol.com', N'2018-11-08')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (95, N'Цветков', N'Демьян', N'Львович', N'м', N'7(93)546-43-73                ', N'Клиенты\m4.jpg', CAST(N'1996-03-29' AS Date), N'hauma@icloud.com', N'2016-02-12')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (96, N'Устинова', N'Юнона', N'Валентиновна', N'ж', N'7(33)367-13-07                ', N'Клиенты\44.jpg', CAST(N'1982-08-08' AS Date), N'kempsonc@live.com', N'2017-05-28')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (97, N'Костина', N'Любава', N'Авксентьевна', N'ж', N'7(6419)959-21-87              ', N'Клиенты\41.jpg', CAST(N'1972-07-13' AS Date), N'gordonjcp@hotmail.com', N'2016-02-26')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (98, N'Смирнов', N'Мартын', N'Арсеньевич', N'м', N'7(6251)589-02-43              ', N'Клиенты\m34.jpg', CAST(N'1996-06-25' AS Date), N'haddawy@live.com', N'2017-02-07')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (99, N'Федотова', N'Сандра', N'Владленовна', N'ж', N'7(126)195-25-86               ', N'Клиенты\24.jpg', CAST(N'1985-03-29' AS Date), N'penna@verizon.net', N'2016-11-08')
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (100, N'Журавлёв', N'Леонтий', N'Яковлевич', N'м', N'7(4403)308-56-96              ', N'Клиенты\m24.jpg', CAST(N'2000-03-02' AS Date), N'cmdrgravy@me.com', N'2018-01-15')
GO
INSERT [dbo].[Client] ([ID], [LastName], [FirstName], [Patronymic], [IDGender], [Phone], [Pic], [DateOfBrith], [Email], [DateOfRegistration]) VALUES (101, N'Большаков', N'Вадим', N'Данилович', N'м', N'7(386)641-13-37               ', N'Клиенты\m97.jpg', CAST(N'1970-05-15' AS Date), N'uncle@gmail.com', N'2018-08-04')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
INSERT [dbo].[Gender] ([Code], [Title]) VALUES (N'Ж', N'Женский')
INSERT [dbo].[Gender] ([Code], [Title]) VALUES (N'М', N'Мужской')
GO
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (1, N'Снятие лака', 2100, 1240.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (2, N'Наращивание ногтей гелем', 2400, 1540.0000, 10)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (3, N'Ультразвуковой пилинг', 2700, 1440.0000, 20)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (4, N'Спортивный массаж', 1800, 1650.0000, 15)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (5, N'Массаж ЖИВА', 3300, 2330.0000, 25)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (6, N'Комбинированный маникюр', 3600, 2390.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (7, N'Урок в группе испанского языка для школьников', 7200, 1910.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (8, N'Стрижка челки', 2100, 1930.0000, 10)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (9, N'Озонотерапия', 2100, 1740.0000, 20)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (10, N'Оформление бровей', 2100, 2280.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (11, N'Окрашивание бровей', 3600, 1120.0000, 10)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (12, N'Моментальный лифтинг', 3000, 2020.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (13, N'Гавайский массаж Ломи-Ломи', 2100, 1040.0000, 15)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (14, N'Депиляция воском', 1800, 2330.0000, 15)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (15, N'Покрытие ногтей', 2400, 2410.0000, 15)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (16, N'Полировка с маслом', 1200, 1280.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (17, N'Художественное оформление ресниц', 3000, 2040.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (18, N'Классический маникюр', 3300, 1680.0000, 20)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (19, N'Лечебное покрытие ногтей', 1800, 1220.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (20, N'Татуаж', 3600, 1330.0000, 20)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (21, N'Инъекционные методики', 2400, 1660.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (22, N'Эстетическая лазерная шлифовка кожи', 2400, 1750.0000, 25)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (23, N'Мезотерапия', 2400, 2040.0000, 20)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (24, N'Наращивание ресниц кукольного эффекта', 2100, 2120.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (25, N'Детская стрижка', 2100, 2330.0000, 20)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (26, N'Индивидуальный урок китайского языка с преподавателем-носителем языка', 5400, 1480.0000, 20)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (27, N'Наращивание ресниц лисьего эффекта', 1800, 1370.0000, 25)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (28, N'Пирсинг', 3300, 1330.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (29, N'Замена масла в вариаторе', 7200, 4720.0000, 5)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (30, N'Покраска ресниц', 1800, 2400.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (31, N'Микротоковая терапия', 2700, 2410.0000, 5)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (32, N'Европейский маникюр', 3600, 1990.0000, 5)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (33, N'Консультация врача-косметолога', 3600, 2350.0000, 5)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (34, N'Полировка ногтей', 3000, 2310.0000, 15)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (35, N'Декорирование ресниц стразами', 3000, 1920.0000, 15)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (36, N'Химический пилинг', 1500, 1880.0000, 15)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (37, N'Мужская стрижка', 3000, 1690.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (38, N'Укрепление ногтей гелем', 2700, 1260.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (39, N'Стрижка с покраской', 1500, 2300.0000, 10)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (40, N'Прессотерапия', 2400, 2350.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (41, N'Наращивание ресниц', 2400, 1430.0000, 5)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (42, N'Удаление доброкачественных образований кожи', 900, 1910.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (43, N'Коррекция нарощенных ресниц', 2700, 1310.0000, 5)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (44, N'Фонофорез лица', 1200, 1120.0000, 5)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (45, N'Стрижка бороды машинкой', 2700, 1750.0000, 10)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (46, N'Шугаринг', 1800, 1400.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (47, N'Реконструкция и лечение волос и кожи головы', 3300, 2360.0000, 15)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (48, N'Макияж', 1800, 2470.0000, 20)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (49, N'ИК-сауна', 2700, 1160.0000, 20)
INSERT [dbo].[Service] ([ID], [Title], [Time], [Cost], [Discount]) VALUES (50, N'Моделирование ресниц', 2700, 2140.0000, 0)
GO
SET IDENTITY_INSERT [dbo].[ServiceClient] ON 

INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (1, 57, CAST(N'2019-10-21T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (2, 12, CAST(N'2019-08-19T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (3, 39, CAST(N'2019-03-04T00:00:00.000' AS DateTime), 49)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (4, 81, CAST(N'2019-06-07T00:00:00.000' AS DateTime), 49)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (5, 57, CAST(N'2019-08-25T00:00:00.000' AS DateTime), 40)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (6, 29, CAST(N'2019-12-25T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (7, 69, CAST(N'2019-01-01T00:00:00.000' AS DateTime), 28)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (8, 77, CAST(N'2019-10-17T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (9, 38, CAST(N'2019-01-17T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (10, 31, CAST(N'2019-09-11T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (11, 87, CAST(N'2019-10-02T00:00:00.000' AS DateTime), 48)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (12, 47, CAST(N'2019-03-28T00:00:00.000' AS DateTime), 46)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (13, 57, CAST(N'2019-12-11T00:00:00.000' AS DateTime), 21)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (14, 37, CAST(N'2019-06-21T00:00:00.000' AS DateTime), 22)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (15, 12, CAST(N'2019-12-15T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (16, 29, CAST(N'2019-05-25T00:00:00.000' AS DateTime), 27)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (17, 6, CAST(N'2019-05-26T00:00:00.000' AS DateTime), 49)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (18, 20, CAST(N'2019-04-27T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (19, 15, CAST(N'2019-09-14T00:00:00.000' AS DateTime), 34)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (20, 6, CAST(N'2019-09-06T00:00:00.000' AS DateTime), 17)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (21, 54, CAST(N'2019-10-12T00:00:00.000' AS DateTime), 17)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (22, 31, CAST(N'2019-05-06T00:00:00.000' AS DateTime), 47)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (23, 69, CAST(N'2019-01-04T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (24, 47, CAST(N'2019-10-01T00:00:00.000' AS DateTime), 49)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (25, 25, CAST(N'2019-12-21T00:00:00.000' AS DateTime), 28)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (26, 75, CAST(N'2019-08-31T00:00:00.000' AS DateTime), 40)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (27, 15, CAST(N'2019-06-22T00:00:00.000' AS DateTime), 22)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (28, 86, CAST(N'2019-04-28T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (29, 5, CAST(N'2019-11-06T00:00:00.000' AS DateTime), 40)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (30, 34, CAST(N'2019-12-21T00:00:00.000' AS DateTime), 44)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (31, 32, CAST(N'2019-11-22T00:00:00.000' AS DateTime), 46)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (32, 17, CAST(N'2019-01-20T00:00:00.000' AS DateTime), 28)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (33, 56, CAST(N'2019-09-07T00:00:00.000' AS DateTime), 42)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (34, 39, CAST(N'2019-11-13T00:00:00.000' AS DateTime), 31)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (35, 58, CAST(N'2019-06-23T00:00:00.000' AS DateTime), 24)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (36, 79, CAST(N'2019-01-28T00:00:00.000' AS DateTime), 27)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (37, 10, CAST(N'2019-06-07T00:00:00.000' AS DateTime), 49)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (38, 81, CAST(N'2019-01-30T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (39, 56, CAST(N'2019-09-28T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (40, 17, CAST(N'2019-11-15T00:00:00.000' AS DateTime), 44)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (41, 47, CAST(N'2019-06-07T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (42, 34, CAST(N'2019-05-11T00:00:00.000' AS DateTime), 47)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (43, 69, CAST(N'2019-01-17T00:00:00.000' AS DateTime), 33)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (44, 9, CAST(N'2019-10-07T00:00:00.000' AS DateTime), 46)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (45, 86, CAST(N'2019-05-04T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (46, 90, CAST(N'2019-03-09T00:00:00.000' AS DateTime), 13)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (47, 85, CAST(N'2019-09-11T00:00:00.000' AS DateTime), 35)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (48, 53, CAST(N'2019-10-02T00:00:00.000' AS DateTime), 24)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (49, 39, CAST(N'2019-05-31T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (50, 87, CAST(N'2019-02-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (51, 2, CAST(N'2019-11-09T00:00:00.000' AS DateTime), 36)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (52, 48, CAST(N'2019-01-17T00:00:00.000' AS DateTime), 30)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (53, 58, CAST(N'2019-02-11T00:00:00.000' AS DateTime), 16)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (54, 25, CAST(N'2019-12-20T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (55, 69, CAST(N'2019-05-29T00:00:00.000' AS DateTime), 19)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (56, 53, CAST(N'2019-03-23T00:00:00.000' AS DateTime), 30)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (57, 79, CAST(N'2019-05-22T00:00:00.000' AS DateTime), 22)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (58, 96, CAST(N'2019-03-01T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (59, 25, CAST(N'2019-02-13T00:00:00.000' AS DateTime), 43)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (60, 20, CAST(N'2019-08-04T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (61, 87, CAST(N'2019-02-26T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (62, 39, CAST(N'2019-12-09T00:00:00.000' AS DateTime), 11)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (63, 31, CAST(N'2019-03-19T00:00:00.000' AS DateTime), 31)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (64, 38, CAST(N'2019-01-11T00:00:00.000' AS DateTime), 18)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (65, 10, CAST(N'2019-12-23T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (66, 9, CAST(N'2019-12-18T00:00:00.000' AS DateTime), 41)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (67, 86, CAST(N'2019-03-21T00:00:00.000' AS DateTime), 25)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (68, 39, CAST(N'2019-07-30T00:00:00.000' AS DateTime), 27)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (69, 81, CAST(N'2019-06-26T00:00:00.000' AS DateTime), 33)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (70, 96, CAST(N'2019-11-04T00:00:00.000' AS DateTime), 40)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (71, 32, CAST(N'2019-01-27T00:00:00.000' AS DateTime), 30)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (72, 17, CAST(N'2019-06-24T00:00:00.000' AS DateTime), 17)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (73, 57, CAST(N'2019-05-19T00:00:00.000' AS DateTime), 20)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (74, 87, CAST(N'2019-06-17T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (75, 6, CAST(N'2019-03-01T00:00:00.000' AS DateTime), 22)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (76, 85, CAST(N'2019-01-27T00:00:00.000' AS DateTime), 38)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (77, 21, CAST(N'2019-01-19T00:00:00.000' AS DateTime), 23)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (78, 95, CAST(N'2019-11-29T00:00:00.000' AS DateTime), 47)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (79, 98, CAST(N'2019-07-23T00:00:00.000' AS DateTime), 32)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (80, 48, CAST(N'2019-09-13T00:00:00.000' AS DateTime), 30)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (81, 25, CAST(N'2019-04-29T00:00:00.000' AS DateTime), 43)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (82, 85, CAST(N'2019-11-13T00:00:00.000' AS DateTime), 49)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (83, 53, CAST(N'2019-01-22T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (84, 58, CAST(N'2019-05-20T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (85, 23, CAST(N'2019-11-30T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (86, 54, CAST(N'2019-05-07T00:00:00.000' AS DateTime), 21)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (87, 86, CAST(N'2019-09-20T00:00:00.000' AS DateTime), 11)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (88, 10, CAST(N'2019-09-20T00:00:00.000' AS DateTime), 25)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (89, 85, CAST(N'2019-08-08T00:00:00.000' AS DateTime), 43)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (90, 75, CAST(N'2019-07-12T00:00:00.000' AS DateTime), 27)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (91, 45, CAST(N'2019-01-13T00:00:00.000' AS DateTime), 21)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (92, 79, CAST(N'2019-01-11T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (93, 81, CAST(N'2019-07-21T00:00:00.000' AS DateTime), 39)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (94, 47, CAST(N'2019-11-26T00:00:00.000' AS DateTime), 34)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (95, 95, CAST(N'2019-10-10T00:00:00.000' AS DateTime), 11)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (96, 86, CAST(N'2019-06-13T00:00:00.000' AS DateTime), 33)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (97, 89, CAST(N'2019-10-05T00:00:00.000' AS DateTime), 31)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (98, 25, CAST(N'2019-10-24T00:00:00.000' AS DateTime), 44)
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (99, 21, CAST(N'2019-06-24T00:00:00.000' AS DateTime), 43)
GO
INSERT [dbo].[ServiceClient] ([ID], [IDClient], [StartTimeService], [IDService]) VALUES (100, 79, CAST(N'2019-10-31T00:00:00.000' AS DateTime), 23)
SET IDENTITY_INSERT [dbo].[ServiceClient] OFF
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Gender] FOREIGN KEY([IDGender])
REFERENCES [dbo].[Gender] ([Code])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Gender]
GO
ALTER TABLE [dbo].[ServiceClient]  WITH CHECK ADD  CONSTRAINT [FK_ServiceClient_Client] FOREIGN KEY([IDClient])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[ServiceClient] CHECK CONSTRAINT [FK_ServiceClient_Client]
GO
ALTER TABLE [dbo].[ServiceClient]  WITH CHECK ADD  CONSTRAINT [FK_ServiceClient_Service] FOREIGN KEY([IDService])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[ServiceClient] CHECK CONSTRAINT [FK_ServiceClient_Service]
GO
