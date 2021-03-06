USE [master]
GO
/****** Object:  Database [web_seminarski]    Script Date: 4/29/2020 12:39:41 AM ******/
CREATE DATABASE [web_seminarski]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'web_seminarski', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\web_seminarski.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'web_seminarski_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\web_seminarski_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [web_seminarski] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [web_seminarski].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [web_seminarski] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [web_seminarski] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [web_seminarski] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [web_seminarski] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [web_seminarski] SET ARITHABORT OFF 
GO
ALTER DATABASE [web_seminarski] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [web_seminarski] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [web_seminarski] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [web_seminarski] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [web_seminarski] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [web_seminarski] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [web_seminarski] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [web_seminarski] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [web_seminarski] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [web_seminarski] SET  DISABLE_BROKER 
GO
ALTER DATABASE [web_seminarski] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [web_seminarski] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [web_seminarski] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [web_seminarski] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [web_seminarski] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [web_seminarski] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [web_seminarski] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [web_seminarski] SET RECOVERY FULL 
GO
ALTER DATABASE [web_seminarski] SET  MULTI_USER 
GO
ALTER DATABASE [web_seminarski] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [web_seminarski] SET DB_CHAINING OFF 
GO
ALTER DATABASE [web_seminarski] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [web_seminarski] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [web_seminarski] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'web_seminarski', N'ON'
GO
ALTER DATABASE [web_seminarski] SET QUERY_STORE = OFF
GO
USE [web_seminarski]
GO
/****** Object:  Table [dbo].[ucenici]    Script Date: 4/29/2020 12:39:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ucenici](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ime] [nvarchar](50) NOT NULL,
	[prezime] [nvarchar](50) NOT NULL,
	[prosek] [float] NOT NULL,
 CONSTRAINT [PK_ucenici] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ucenici] ON 

INSERT [dbo].[ucenici] ([id], [ime], [prezime], [prosek]) VALUES (1, N'Ime1', N'Prezime1', 4.59)
INSERT [dbo].[ucenici] ([id], [ime], [prezime], [prosek]) VALUES (2, N'Ime2', N'Prezime2', 3.5)
INSERT [dbo].[ucenici] ([id], [ime], [prezime], [prosek]) VALUES (3, N'Ime3', N'Prezime3', 4.44)
SET IDENTITY_INSERT [dbo].[ucenici] OFF
USE [master]
GO
ALTER DATABASE [web_seminarski] SET  READ_WRITE 
GO
