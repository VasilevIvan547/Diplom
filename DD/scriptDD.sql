USE [Autoservis]
GO
/****** Object:  Table [dbo].[Автомобиль]    Script Date: 01.06.2022 12:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Автомобиль](
	[КодАвтомобиля] [int] IDENTITY(1,1) NOT NULL,
	[МаркаАвтомобиля] [nvarchar](50) NULL,
	[Цвет] [nvarchar](50) NULL,
	[РегистрационныйЗнак] [nvarchar](50) NULL,
	[ККодКлиента] [int] NULL,
 CONSTRAINT [PK_Автомобиль] PRIMARY KEY CLUSTERED 
(
	[КодАвтомобиля] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заказ]    Script Date: 01.06.2022 12:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заказ](
	[КодЗаказа] [int] IDENTITY(1,1) NOT NULL,
	[КодКлиента] [int] NULL,
	[ДатаНачала] [datetime] NULL,
	[Стоимость] [int] NULL,
	[КодАвтомобиля] [int] NULL,
	[Предоплата] [int] NULL,
	[КодУслугиЗаказ] [int] NULL,
	[ДатаОкончания] [date] NULL,
 CONSTRAINT [PK_Заказ] PRIMARY KEY CLUSTERED 
(
	[КодЗаказа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Клиент]    Script Date: 01.06.2022 12:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Клиент](
	[КодКлиента] [int] IDENTITY(1,1) NOT NULL,
	[ФИО] [nvarchar](50) NULL,
	[НомерТелефона] [nvarchar](50) NULL,
 CONSTRAINT [PK_Клиент] PRIMARY KEY CLUSTERED 
(
	[КодКлиента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Мастер]    Script Date: 01.06.2022 12:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Мастер](
	[КодМастера] [int] NOT NULL,
	[ФИО] [nvarchar](50) NULL,
	[Город] [nvarchar](50) NULL,
	[Улица] [nvarchar](50) NULL,
	[Дом] [nvarchar](50) NULL,
	[Квартира] [nvarchar](50) NULL,
 CONSTRAINT [PK_Мастер] PRIMARY KEY CLUSTERED 
(
	[КодМастера] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Пользователь]    Script Date: 01.06.2022 12:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пользователь](
	[КодПользователя] [int] IDENTITY(1,1) NOT NULL,
	[Логин] [nvarchar](50) NULL,
	[Пароль] [nvarchar](50) NULL,
	[КодРоли] [int] NULL,
 CONSTRAINT [PK_Пользователь] PRIMARY KEY CLUSTERED 
(
	[КодПользователя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Роль]    Script Date: 01.06.2022 12:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Роль](
	[КодРоли] [int] NOT NULL,
	[Роль] [nvarchar](50) NULL,
 CONSTRAINT [PK_Роль] PRIMARY KEY CLUSTERED 
(
	[КодРоли] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Статус]    Script Date: 01.06.2022 12:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Статус](
	[КодСтатуса] [int] NOT NULL,
	[Статус] [nvarchar](50) NULL,
 CONSTRAINT [PK_Статус] PRIMARY KEY CLUSTERED 
(
	[КодСтатуса] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Услуга]    Script Date: 01.06.2022 12:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Услуга](
	[КодУслуги] [int] IDENTITY(1,1) NOT NULL,
	[Название] [nvarchar](50) NULL,
	[Цена] [int] NULL,
 CONSTRAINT [PK_Услуга] PRIMARY KEY CLUSTERED 
(
	[КодУслуги] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[УслугаЗаказа]    Script Date: 01.06.2022 12:01:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[УслугаЗаказа](
	[КУслугиЗаказа] [int] IDENTITY(1,1) NOT NULL,
	[ВыполняетРаботу] [int] NULL,
	[КодУслуги] [int] NULL,
	[Стоимость] [int] NULL,
	[КодКлиента] [int] NULL,
	[ККодСтатуса] [int] NULL,
 CONSTRAINT [PK_УслугаЗаказа] PRIMARY KEY CLUSTERED 
(
	[КУслугиЗаказа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Автомобиль] ON 

INSERT [dbo].[Автомобиль] ([КодАвтомобиля], [МаркаАвтомобиля], [Цвет], [РегистрационныйЗнак], [ККодКлиента]) VALUES (1, N'Пежо', N'Черный', N'к234ку', 1)
INSERT [dbo].[Автомобиль] ([КодАвтомобиля], [МаркаАвтомобиля], [Цвет], [РегистрационныйЗнак], [ККодКлиента]) VALUES (3, N'БМВ', N'Синий', N'с323па', 1)
INSERT [dbo].[Автомобиль] ([КодАвтомобиля], [МаркаАвтомобиля], [Цвет], [РегистрационныйЗнак], [ККодКлиента]) VALUES (4, N'Мерседес', N'Белый', N'к233кк', NULL)
INSERT [dbo].[Автомобиль] ([КодАвтомобиля], [МаркаАвтомобиля], [Цвет], [РегистрационныйЗнак], [ККодКлиента]) VALUES (6, N'Мерседес', N'Чёрный', N'м322аа', 0)
SET IDENTITY_INSERT [dbo].[Автомобиль] OFF
GO
SET IDENTITY_INSERT [dbo].[Заказ] ON 

INSERT [dbo].[Заказ] ([КодЗаказа], [КодКлиента], [ДатаНачала], [Стоимость], [КодАвтомобиля], [Предоплата], [КодУслугиЗаказ], [ДатаОкончания]) VALUES (2021, 1, CAST(N'2022-03-03T00:00:00.000' AS DateTime), -369, 1, 3331, NULL, NULL)
INSERT [dbo].[Заказ] ([КодЗаказа], [КодКлиента], [ДатаНачала], [Стоимость], [КодАвтомобиля], [Предоплата], [КодУслугиЗаказ], [ДатаОкончания]) VALUES (2022, 1, CAST(N'2022-05-20T00:00:00.000' AS DateTime), 2457, 3, 789, NULL, CAST(N'2022-05-25' AS Date))
INSERT [dbo].[Заказ] ([КодЗаказа], [КодКлиента], [ДатаНачала], [Стоимость], [КодАвтомобиля], [Предоплата], [КодУслугиЗаказ], [ДатаОкончания]) VALUES (2023, 0, CAST(N'2022-02-22T00:00:00.000' AS DateTime), 2839, 6, 444, NULL, CAST(N'2022-02-25' AS Date))
SET IDENTITY_INSERT [dbo].[Заказ] OFF
GO
SET IDENTITY_INSERT [dbo].[Клиент] ON 

INSERT [dbo].[Клиент] ([КодКлиента], [ФИО], [НомерТелефона]) VALUES (0, N'Васильков Василь Василькович', N'798454215474')
INSERT [dbo].[Клиент] ([КодКлиента], [ФИО], [НомерТелефона]) VALUES (1, N'Иванов Иван Иванович', N'79851282524')
INSERT [dbo].[Клиент] ([КодКлиента], [ФИО], [НомерТелефона]) VALUES (2, N'Серёгин Сергей Сергеевич', N'79854512145')
SET IDENTITY_INSERT [dbo].[Клиент] OFF
GO
INSERT [dbo].[Мастер] ([КодМастера], [ФИО], [Город], [Улица], [Дом], [Квартира]) VALUES (1, N'Паренко', N'1', N'1', N'1', N'1')
INSERT [dbo].[Мастер] ([КодМастера], [ФИО], [Город], [Улица], [Дом], [Квартира]) VALUES (2, N'Шевченко Андрей Михайлович', N'Шатура', N'Октяборьская', N'3', N'12')
GO
SET IDENTITY_INSERT [dbo].[Пользователь] ON 

INSERT [dbo].[Пользователь] ([КодПользователя], [Логин], [Пароль], [КодРоли]) VALUES (1, N'1', N'1', 1)
INSERT [dbo].[Пользователь] ([КодПользователя], [Логин], [Пароль], [КодРоли]) VALUES (2, N'2', N'2', 2)
INSERT [dbo].[Пользователь] ([КодПользователя], [Логин], [Пароль], [КодРоли]) VALUES (3, N'111', N'111', 1)
INSERT [dbo].[Пользователь] ([КодПользователя], [Логин], [Пароль], [КодРоли]) VALUES (4, N'11111', N'11111', 1)
INSERT [dbo].[Пользователь] ([КодПользователя], [Логин], [Пароль], [КодРоли]) VALUES (5, N'12', N'12', 2)
INSERT [dbo].[Пользователь] ([КодПользователя], [Логин], [Пароль], [КодРоли]) VALUES (6, N'333', N'333', NULL)
INSERT [dbo].[Пользователь] ([КодПользователя], [Логин], [Пароль], [КодРоли]) VALUES (7, N'3333', N'3333', NULL)
INSERT [dbo].[Пользователь] ([КодПользователя], [Логин], [Пароль], [КодРоли]) VALUES (8, N'222', N'222', NULL)
INSERT [dbo].[Пользователь] ([КодПользователя], [Логин], [Пароль], [КодРоли]) VALUES (9, N'8', N'8', NULL)
INSERT [dbo].[Пользователь] ([КодПользователя], [Логин], [Пароль], [КодРоли]) VALUES (10, N'7', N'7', NULL)
INSERT [dbo].[Пользователь] ([КодПользователя], [Логин], [Пароль], [КодРоли]) VALUES (11, N'77', N'77', NULL)
INSERT [dbo].[Пользователь] ([КодПользователя], [Логин], [Пароль], [КодРоли]) VALUES (12, N'332', N'332', NULL)
INSERT [dbo].[Пользователь] ([КодПользователя], [Логин], [Пароль], [КодРоли]) VALUES (13, N'6', N'6', NULL)
INSERT [dbo].[Пользователь] ([КодПользователя], [Логин], [Пароль], [КодРоли]) VALUES (1005, N'88', N'88', 1)
SET IDENTITY_INSERT [dbo].[Пользователь] OFF
GO
INSERT [dbo].[Роль] ([КодРоли], [Роль]) VALUES (1, N'Администратор')
INSERT [dbo].[Роль] ([КодРоли], [Роль]) VALUES (2, N'Пользователь')
GO
INSERT [dbo].[Статус] ([КодСтатуса], [Статус]) VALUES (1, N'Выполнен')
INSERT [dbo].[Статус] ([КодСтатуса], [Статус]) VALUES (2, N'Принят')
INSERT [dbo].[Статус] ([КодСтатуса], [Статус]) VALUES (3, N'Принят, ожидается оплата')
INSERT [dbo].[Статус] ([КодСтатуса], [Статус]) VALUES (4, N'Выполнение')
GO
SET IDENTITY_INSERT [dbo].[Услуга] ON 

INSERT [dbo].[Услуга] ([КодУслуги], [Название], [Цена]) VALUES (1, N'Диагностика', 1500)
INSERT [dbo].[Услуга] ([КодУслуги], [Название], [Цена]) VALUES (2, N'Замена двигателя', 3331)
SET IDENTITY_INSERT [dbo].[Услуга] OFF
GO
SET IDENTITY_INSERT [dbo].[УслугаЗаказа] ON 

INSERT [dbo].[УслугаЗаказа] ([КУслугиЗаказа], [ВыполняетРаботу], [КодУслуги], [Стоимость], [КодКлиента], [ККодСтатуса]) VALUES (4029, 2, 2, 1, 1, 3)
INSERT [dbo].[УслугаЗаказа] ([КУслугиЗаказа], [ВыполняетРаботу], [КодУслуги], [Стоимость], [КодКлиента], [ККодСтатуса]) VALUES (4030, 2, 2, 3331, 1, 4)
INSERT [dbo].[УслугаЗаказа] ([КУслугиЗаказа], [ВыполняетРаботу], [КодУслуги], [Стоимость], [КодКлиента], [ККодСтатуса]) VALUES (4031, 1, 2, 3331, 0, 1)
SET IDENTITY_INSERT [dbo].[УслугаЗаказа] OFF
GO
ALTER TABLE [dbo].[Автомобиль]  WITH CHECK ADD  CONSTRAINT [FK_Автомобиль_Клиент] FOREIGN KEY([ККодКлиента])
REFERENCES [dbo].[Клиент] ([КодКлиента])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Автомобиль] CHECK CONSTRAINT [FK_Автомобиль_Клиент]
GO
ALTER TABLE [dbo].[Заказ]  WITH CHECK ADD  CONSTRAINT [FK_Заказ_Автомобиль] FOREIGN KEY([КодАвтомобиля])
REFERENCES [dbo].[Автомобиль] ([КодАвтомобиля])
GO
ALTER TABLE [dbo].[Заказ] CHECK CONSTRAINT [FK_Заказ_Автомобиль]
GO
ALTER TABLE [dbo].[Заказ]  WITH CHECK ADD  CONSTRAINT [FK_Заказ_Клиент1] FOREIGN KEY([КодКлиента])
REFERENCES [dbo].[Клиент] ([КодКлиента])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Заказ] CHECK CONSTRAINT [FK_Заказ_Клиент1]
GO
ALTER TABLE [dbo].[Пользователь]  WITH CHECK ADD  CONSTRAINT [FK_Пользователь_Роль] FOREIGN KEY([КодРоли])
REFERENCES [dbo].[Роль] ([КодРоли])
GO
ALTER TABLE [dbo].[Пользователь] CHECK CONSTRAINT [FK_Пользователь_Роль]
GO
ALTER TABLE [dbo].[УслугаЗаказа]  WITH CHECK ADD  CONSTRAINT [FK_УслугаЗаказа_Клиент] FOREIGN KEY([КодКлиента])
REFERENCES [dbo].[Клиент] ([КодКлиента])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[УслугаЗаказа] CHECK CONSTRAINT [FK_УслугаЗаказа_Клиент]
GO
ALTER TABLE [dbo].[УслугаЗаказа]  WITH CHECK ADD  CONSTRAINT [FK_УслугаЗаказа_Мастер] FOREIGN KEY([ВыполняетРаботу])
REFERENCES [dbo].[Мастер] ([КодМастера])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[УслугаЗаказа] CHECK CONSTRAINT [FK_УслугаЗаказа_Мастер]
GO
ALTER TABLE [dbo].[УслугаЗаказа]  WITH CHECK ADD  CONSTRAINT [FK_УслугаЗаказа_Статус] FOREIGN KEY([ККодСтатуса])
REFERENCES [dbo].[Статус] ([КодСтатуса])
GO
ALTER TABLE [dbo].[УслугаЗаказа] CHECK CONSTRAINT [FK_УслугаЗаказа_Статус]
GO
ALTER TABLE [dbo].[УслугаЗаказа]  WITH CHECK ADD  CONSTRAINT [FK_УслугаЗаказа_Услуга] FOREIGN KEY([КодУслуги])
REFERENCES [dbo].[Услуга] ([КодУслуги])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[УслугаЗаказа] CHECK CONSTRAINT [FK_УслугаЗаказа_Услуга]
GO
