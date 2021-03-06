USE [master]
GO
/****** Object:  Database [dilaraseven]    Script Date: 22.01.2021 18:38:11 ******/
CREATE DATABASE [dilaraseven]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dilaraseven', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dilaraseven.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dilaraseven_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dilaraseven_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [dilaraseven] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dilaraseven].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dilaraseven] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dilaraseven] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dilaraseven] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dilaraseven] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dilaraseven] SET ARITHABORT OFF 
GO
ALTER DATABASE [dilaraseven] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dilaraseven] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dilaraseven] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dilaraseven] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dilaraseven] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dilaraseven] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dilaraseven] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dilaraseven] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dilaraseven] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dilaraseven] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dilaraseven] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dilaraseven] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dilaraseven] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dilaraseven] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dilaraseven] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dilaraseven] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dilaraseven] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dilaraseven] SET RECOVERY FULL 
GO
ALTER DATABASE [dilaraseven] SET  MULTI_USER 
GO
ALTER DATABASE [dilaraseven] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dilaraseven] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dilaraseven] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dilaraseven] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dilaraseven] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dilaraseven] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'dilaraseven', N'ON'
GO
ALTER DATABASE [dilaraseven] SET QUERY_STORE = OFF
GO
USE [dilaraseven]
GO
/****** Object:  Table [dbo].[Araba_Bilgisi]    Script Date: 22.01.2021 18:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Araba_Bilgisi](
	[Arac_ID] [int] IDENTITY(1,1) NOT NULL,
	[Arac_Plaka] [varchar](20) NOT NULL,
	[Arac_Rengi] [varchar](20) NOT NULL,
	[Kira_ID] [int] NULL,
	[Arac_Modeli] [varchar](11) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Arac_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gelir]    Script Date: 22.01.2021 18:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gelir](
	[Gelir_ID] [int] IDENTITY(1,1) NOT NULL,
	[Arac_ID] [int] NULL,
	[Kira_Ucreti] [varchar](20) NOT NULL,
	[Musteri_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Gelir_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kira_Bilgisi]    Script Date: 22.01.2021 18:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kira_Bilgisi](
	[Kira_ID] [int] IDENTITY(1,1) NOT NULL,
	[Teslim_Tarihi] [varchar](20) NOT NULL,
	[Musteri_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Kira_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteri_Bilgisi]    Script Date: 22.01.2021 18:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri_Bilgisi](
	[Musteri_ID] [int] IDENTITY(1,1) NOT NULL,
	[Musteri_Adi] [varchar](20) NOT NULL,
	[Musteri_Soyadi] [varchar](20) NOT NULL,
	[Musteri_Telefon] [varchar](11) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Musteri_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Kiralar]    Script Date: 22.01.2021 18:38:11 ******/
CREATE NONCLUSTERED INDEX [Kiralar] ON [dbo].[Gelir]
(
	[Kira_Ucreti] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [MAdSoyad]    Script Date: 22.01.2021 18:38:11 ******/
CREATE NONCLUSTERED INDEX [MAdSoyad] ON [dbo].[Musteri_Bilgisi]
(
	[Musteri_Adi] ASC,
	[Musteri_Soyadi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [MTelefon]    Script Date: 22.01.2021 18:38:11 ******/
CREATE NONCLUSTERED INDEX [MTelefon] ON [dbo].[Musteri_Bilgisi]
(
	[Musteri_Telefon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Araba_Bilgisi]  WITH CHECK ADD  CONSTRAINT [FK_arackira] FOREIGN KEY([Kira_ID])
REFERENCES [dbo].[Kira_Bilgisi] ([Kira_ID])
GO
ALTER TABLE [dbo].[Araba_Bilgisi] CHECK CONSTRAINT [FK_arackira]
GO
ALTER TABLE [dbo].[Gelir]  WITH CHECK ADD  CONSTRAINT [FK_gelirarac] FOREIGN KEY([Arac_ID])
REFERENCES [dbo].[Araba_Bilgisi] ([Arac_ID])
GO
ALTER TABLE [dbo].[Gelir] CHECK CONSTRAINT [FK_gelirarac]
GO
ALTER TABLE [dbo].[Kira_Bilgisi]  WITH CHECK ADD  CONSTRAINT [FK_kiramusteri] FOREIGN KEY([Musteri_ID])
REFERENCES [dbo].[Musteri_Bilgisi] ([Musteri_ID])
GO
ALTER TABLE [dbo].[Kira_Bilgisi] CHECK CONSTRAINT [FK_kiramusteri]
GO
/****** Object:  StoredProcedure [dbo].[arababilgi]    Script Date: 22.01.2021 18:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[arababilgi]
(
@Arac_Plaka varchar(20),
@Arac_Rengi varchar(20),
@Kira_ID int,
@Arac_Modeli varchar(11)
)
as
insert into Araba_Bilgisi values(@Arac_Plaka,@Arac_Rengi,@Kira_ID,@Arac_Modeli)
GO
/****** Object:  StoredProcedure [dbo].[arabakira]    Script Date: 22.01.2021 18:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[arabakira]
as
begin
set nocount on;
select * from Araba_Bilgisi
inner join Kira_Bilgisi on Araba_Bilgisi.Kira_ID = Kira_Bilgisi.Kira_ID
end
GO
/****** Object:  StoredProcedure [dbo].[gelirbilgi]    Script Date: 22.01.2021 18:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[gelirbilgi]
(
@Arac_ID int,
@Kira_Ucreti varchar(20),
@Musteri_ID int
)
as
insert into Gelir values (@Arac_ID,@Kira_Ucreti,@Musteri_ID)
GO
/****** Object:  StoredProcedure [dbo].[kirabilgisi]    Script Date: 22.01.2021 18:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[kirabilgisi]
(
@Teslim_Tarihi varchar(20),
@Musteri_ID int
)
as
insert into Kira_Bilgisi values (@Teslim_Tarihi,@Musteri_ID)
GO
/****** Object:  StoredProcedure [dbo].[musteribilgi]    Script Date: 22.01.2021 18:38:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[musteribilgi]
(
@Musteri_Adi varchar(20),
@Musteri_Soyadi varchar(20),
@Musteri_Telefon varchar(20)
)
as
insert into Musteri_Bilgisi values (@Musteri_Adi,@Musteri_Soyadi,@Musteri_Telefon)


exec musteribilgi 'Elon','Musk','05489632514'
GO
USE [master]
GO
ALTER DATABASE [dilaraseven] SET  READ_WRITE 
GO
