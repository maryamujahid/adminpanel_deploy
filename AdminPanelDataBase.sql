USE [master]
GO
/****** Object:  Database [AdminPanel]    Script Date: 8/6/2017 5:11:07 PM ******/
CREATE DATABASE [AdminPanel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AdminPanel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\AdminPanel.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AdminPanel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\AdminPanel_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AdminPanel] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AdminPanel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AdminPanel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AdminPanel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AdminPanel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AdminPanel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AdminPanel] SET ARITHABORT OFF 
GO
ALTER DATABASE [AdminPanel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AdminPanel] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [AdminPanel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AdminPanel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AdminPanel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AdminPanel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AdminPanel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AdminPanel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AdminPanel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AdminPanel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AdminPanel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AdminPanel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AdminPanel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AdminPanel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AdminPanel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AdminPanel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AdminPanel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AdminPanel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AdminPanel] SET RECOVERY FULL 
GO
ALTER DATABASE [AdminPanel] SET  MULTI_USER 
GO
ALTER DATABASE [AdminPanel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AdminPanel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AdminPanel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AdminPanel] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'AdminPanel', N'ON'
GO
USE [AdminPanel]
GO
/****** Object:  Table [dbo].[tbl_FeeStructure]    Script Date: 8/6/2017 5:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_FeeStructure](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Class] [varchar](max) NULL,
	[Fee] [varchar](max) NULL,
	[Subject] [varchar](max) NULL,
	[Teacher] [varchar](max) NULL,
 CONSTRAINT [PK_tbl_FeeStructure] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Parent]    Script Date: 8/6/2017 5:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Parent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](max) NULL,
	[LastName] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
	[Password] [varchar](max) NULL,
	[StudentId] [varchar](max) NULL,
 CONSTRAINT [PK_tbl_Parent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Student]    Script Date: 8/6/2017 5:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](max) NULL,
	[LastName] [varchar](max) NULL,
	[Classes] [varchar](max) NULL,
	[Parent] [varchar](max) NULL,
	[ParentId] [varchar](max) NULL,
 CONSTRAINT [PK_tbl_Student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Teacher]    Script Date: 8/6/2017 5:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Teacher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](max) NULL,
	[LastName] [varchar](max) NULL,
	[Classes] [varchar](max) NULL,
	[ContactNo] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
	[Password] [varchar](max) NULL,
 CONSTRAINT [PK_tbl_Teacher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_TimeTable]    Script Date: 8/6/2017 5:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_TimeTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TimeFrom] [varchar](max) NULL,
	[TimeTo] [varchar](max) NULL,
	[Classes] [varchar](max) NULL,
	[Subject] [varchar](max) NULL,
	[Teacher] [varchar](max) NULL,
 CONSTRAINT [PK_tbl_TimeTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_FeeStructure] ON 

INSERT [dbo].[tbl_FeeStructure] ([id], [Class], [Fee], [Subject], [Teacher]) VALUES (1, N'Fsc Pre-Engineering (1st year)', N'12', N'Pak-Studies', N'Islamiyat (E)')
INSERT [dbo].[tbl_FeeStructure] ([id], [Class], [Fee], [Subject], [Teacher]) VALUES (2, N'Fsc Pre-Engineering (2nd year)', N'5', N'Mathematics', N'Physics')
SET IDENTITY_INSERT [dbo].[tbl_FeeStructure] OFF
USE [master]
GO
ALTER DATABASE [AdminPanel] SET  READ_WRITE 
GO
