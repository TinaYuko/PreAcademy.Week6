USE [master]
GO
/****** Object:  Database [ProvaAgenti]    Script Date: 12/11/2021 14:36:36 ******/
CREATE DATABASE [ProvaAgenti]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProvaAgenti', FILENAME = N'C:\Users\Marti\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\mssqllocaldb\ProvaAgenti.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProvaAgenti_log', FILENAME = N'C:\Users\Marti\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\mssqllocaldb\ProvaAgenti.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ProvaAgenti] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProvaAgenti].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProvaAgenti] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [ProvaAgenti] SET ANSI_NULLS ON 
GO
ALTER DATABASE [ProvaAgenti] SET ANSI_PADDING ON 
GO
ALTER DATABASE [ProvaAgenti] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [ProvaAgenti] SET ARITHABORT ON 
GO
ALTER DATABASE [ProvaAgenti] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProvaAgenti] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProvaAgenti] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProvaAgenti] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProvaAgenti] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [ProvaAgenti] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [ProvaAgenti] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProvaAgenti] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [ProvaAgenti] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProvaAgenti] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProvaAgenti] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProvaAgenti] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProvaAgenti] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProvaAgenti] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProvaAgenti] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProvaAgenti] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProvaAgenti] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProvaAgenti] SET RECOVERY FULL 
GO
ALTER DATABASE [ProvaAgenti] SET  MULTI_USER 
GO
ALTER DATABASE [ProvaAgenti] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProvaAgenti] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProvaAgenti] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProvaAgenti] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProvaAgenti] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProvaAgenti] SET QUERY_STORE = OFF
GO
USE [ProvaAgenti]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [ProvaAgenti]
GO
/****** Object:  Table [dbo].[Agente]    Script Date: 12/11/2021 14:36:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agente](
	[Nome] [nvarchar](50) NOT NULL,
	[Cognome] [nvarchar](50) NOT NULL,
	[Codice fiscale] [nvarchar](50) NOT NULL,
	[Area geografica] [nvarchar](50) NOT NULL,
	[Anno di inizio attività] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Codice fiscale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Agente] ([Nome], [Cognome], [Codice fiscale], [Area geografica], [Anno di inizio attività]) VALUES (N'Mario', N'Nenno', N'62B18N13A345P', N'Cagliari', 1980)
INSERT [dbo].[Agente] ([Nome], [Cognome], [Codice fiscale], [Area geografica], [Anno di inizio attività]) VALUES (N'Chiara', N'Abis', N'CHRABS93C65D325D', N'Pula', 2019)
INSERT [dbo].[Agente] ([Nome], [Cognome], [Codice fiscale], [Area geografica], [Anno di inizio attività]) VALUES (N'Martina', N'Mattana', N'MTTMTN94C54B354A', N'Quartu', 2020)
INSERT [dbo].[Agente] ([Nome], [Cognome], [Codice fiscale], [Area geografica], [Anno di inizio attività]) VALUES (N'Sergio', N'Puddu', N'SRGPDD74Y23B354A', N'Sant''Isidoro', 1995)
INSERT [dbo].[Agente] ([Nome], [Cognome], [Codice fiscale], [Area geografica], [Anno di inizio attività]) VALUES (N'Sara', N'Boh', N'SRQBOH73C78D345C', N'Flumini', 1999)
INSERT [dbo].[Agente] ([Nome], [Cognome], [Codice fiscale], [Area geografica], [Anno di inizio attività]) VALUES (N'Tizio', N'Acaso', N'TZOACS65R23G456Z', N'Quartu Sant''Elena', 2005)
GO
ALTER TABLE [dbo].[Agente]  WITH CHECK ADD CHECK  (([Anno di inizio attività]>(1950) AND [Anno di inizio attività]<=(2021)))
GO
USE [master]
GO
ALTER DATABASE [ProvaAgenti] SET  READ_WRITE 
GO
