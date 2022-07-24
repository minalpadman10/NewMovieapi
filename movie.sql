USE [master]
GO
/****** Object:  Database [mymovieDB]    Script Date: 7/24/2022 10:17:37 AM ******/
CREATE DATABASE [mymovieDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'mymovieDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\mymovieDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'mymovieDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\mymovieDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [mymovieDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mymovieDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mymovieDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [mymovieDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [mymovieDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [mymovieDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [mymovieDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [mymovieDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [mymovieDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [mymovieDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [mymovieDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [mymovieDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [mymovieDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [mymovieDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [mymovieDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [mymovieDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [mymovieDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [mymovieDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [mymovieDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [mymovieDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [mymovieDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [mymovieDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [mymovieDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [mymovieDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [mymovieDB] SET RECOVERY FULL 
GO
ALTER DATABASE [mymovieDB] SET  MULTI_USER 
GO
ALTER DATABASE [mymovieDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [mymovieDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [mymovieDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [mymovieDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [mymovieDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [mymovieDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'mymovieDB', N'ON'
GO
ALTER DATABASE [mymovieDB] SET QUERY_STORE = OFF
GO
USE [mymovieDB]
GO
/****** Object:  Table [dbo].[AddMovie]    Script Date: 7/24/2022 10:17:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddMovie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [nvarchar](100) NULL,
	[MovieImage] [nvarchar](100) NULL,
 CONSTRAINT [PK_AddMovie] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinalBooking]    Script Date: 7/24/2022 10:17:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinalBooking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [nvarchar](100) NULL,
	[NoOfTickets] [int] NULL,
	[Gender] [varchar](100) NULL,
	[Age] [int] NULL,
	[Date] [date] NULL,
	[Time] [nvarchar](100) NULL,
	[Meal] [varchar](100) NULL,
	[TotalFare] [decimal](18, 2) NULL,
 CONSTRAINT [PK_FinalBooking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MyBooking]    Script Date: 7/24/2022 10:17:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MyBooking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Movie Name] [nvarchar](100) NULL,
	[Email id] [nvarchar](100) NULL,
	[Date] [date] NULL,
	[Time] [nvarchar](100) NULL,
	[Gender] [varchar](100) NULL,
	[Age] [int] NULL,
	[Meal] [varchar](100) NULL,
	[no.of tickets] [int] NULL,
 CONSTRAINT [PK_MyBooking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblLogin]    Script Date: 7/24/2022 10:17:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblLogin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[ConfirmPassword] [nvarchar](100) NULL,
	[ContactNumber] [nvarchar](100) NULL,
 CONSTRAINT [PK_TblLogin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AddMovie] ON 

INSERT [dbo].[AddMovie] ([Id], [MovieName], [MovieImage]) VALUES (1, N'Avengers', N'Avengers.jpg')
INSERT [dbo].[AddMovie] ([Id], [MovieName], [MovieImage]) VALUES (2, N'Brahmastra', N'Brahmastra.jpg')
INSERT [dbo].[AddMovie] ([Id], [MovieName], [MovieImage]) VALUES (3, N'Master', N'Master.jpg')
INSERT [dbo].[AddMovie] ([Id], [MovieName], [MovieImage]) VALUES (4, N'Runway34', N'Runway34.jpg')
SET IDENTITY_INSERT [dbo].[AddMovie] OFF
GO
SET IDENTITY_INSERT [dbo].[MyBooking] ON 

INSERT [dbo].[MyBooking] ([Id], [Name], [Movie Name], [Email id], [Date], [Time], [Gender], [Age], [Meal], [no.of tickets]) VALUES (1, N'Minal', N'Bramhastra', N'user@gmail.com', CAST(N'2022-07-23' AS Date), N'12:30AM', N'Female', 23, N'Non-Veg', 4)
INSERT [dbo].[MyBooking] ([Id], [Name], [Movie Name], [Email id], [Date], [Time], [Gender], [Age], [Meal], [no.of tickets]) VALUES (2, N'string', N'string', N'string', CAST(N'2022-07-23' AS Date), N'string', N'string', 0, N'string', 0)
INSERT [dbo].[MyBooking] ([Id], [Name], [Movie Name], [Email id], [Date], [Time], [Gender], [Age], [Meal], [no.of tickets]) VALUES (3, N'string', N'string', N'string', CAST(N'2022-07-23' AS Date), N'string', N'string', 0, N'string', 0)
INSERT [dbo].[MyBooking] ([Id], [Name], [Movie Name], [Email id], [Date], [Time], [Gender], [Age], [Meal], [no.of tickets]) VALUES (4, N'Minal', N'Master', N'minal@gmail.com', CAST(N'2022-07-23' AS Date), N'12:30 AM', N'Female', 23, N'Veg', 3)
INSERT [dbo].[MyBooking] ([Id], [Name], [Movie Name], [Email id], [Date], [Time], [Gender], [Age], [Meal], [no.of tickets]) VALUES (5, N'kavya', N'Master', N'kavya@gmail.com', CAST(N'2022-07-23' AS Date), N'4:20 PM', N'Female', 30, N'Veg', 5)
SET IDENTITY_INSERT [dbo].[MyBooking] OFF
GO
SET IDENTITY_INSERT [dbo].[TblLogin] ON 

INSERT [dbo].[TblLogin] ([Id], [FirstName], [LastName], [Email], [Password], [ConfirmPassword], [ContactNumber]) VALUES (1, N'string', N'string', N'string', N'string', N'string', N'string')
SET IDENTITY_INSERT [dbo].[TblLogin] OFF
GO
USE [master]
GO
ALTER DATABASE [mymovieDB] SET  READ_WRITE 
GO
