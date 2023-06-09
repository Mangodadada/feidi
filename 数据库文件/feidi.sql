USE [master]
GO
/****** Object:  Database [feidi]    Script Date: 2023/1/4 11:13:32 ******/
CREATE DATABASE [feidi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'feidi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\feidi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'feidi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\feidi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [feidi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [feidi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [feidi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [feidi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [feidi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [feidi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [feidi] SET ARITHABORT OFF 
GO
ALTER DATABASE [feidi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [feidi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [feidi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [feidi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [feidi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [feidi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [feidi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [feidi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [feidi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [feidi] SET  ENABLE_BROKER 
GO
ALTER DATABASE [feidi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [feidi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [feidi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [feidi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [feidi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [feidi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [feidi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [feidi] SET RECOVERY FULL 
GO
ALTER DATABASE [feidi] SET  MULTI_USER 
GO
ALTER DATABASE [feidi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [feidi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [feidi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [feidi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [feidi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [feidi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'feidi', N'ON'
GO
ALTER DATABASE [feidi] SET QUERY_STORE = OFF
GO
USE [feidi]
GO
/****** Object:  Table [dbo].[APPLICATION]    Script Date: 2023/1/4 11:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APPLICATION](
	[APPLICATION_ID] [nvarchar](50) NOT NULL,
	[ID_CARD] [nvarchar](50) NOT NULL,
	[ADDRESS] [nvarchar](50) NOT NULL,
	[STATE] [int] NOT NULL,
	[USER_ID] [varchar](20) NOT NULL,
	[CREATE_DATE] [datetime] NOT NULL,
	[CONTENT] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_APPLICATION] PRIMARY KEY CLUSTERED 
(
	[APPLICATION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMPLAINTS]    Script Date: 2023/1/4 11:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPLAINTS](
	[COMPLAINT_ID] [varchar](20) NOT NULL,
	[COMPLAINTS_TIME] [datetime] NOT NULL,
	[COMPLAINANT_ID] [varchar](20) NOT NULL,
	[RESPONDENT_ID] [varchar](20) NULL,
	[COMPLAINTS_MESSAGE] [varchar](255) NOT NULL,
	[ORDER_ID] [varchar](20) NOT NULL,
	[TITLE] [varchar](255) NOT NULL,
	[STATE] [int] NOT NULL,
 CONSTRAINT [PK__COMPLAIN__F9A41343D99EC526] PRIMARY KEY CLUSTERED 
(
	[COMPLAINT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDER]    Script Date: 2023/1/4 11:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER](
	[ORDER_ID] [varchar](20) NOT NULL,
	[START_TIME] [datetime] NULL,
	[START_ADDRESS] [varchar](255) NOT NULL,
	[END_ADDRESS] [varchar](255) NOT NULL,
	[PRICE] [int] NOT NULL,
	[GOODS] [nvarchar](250) NULL,
	[CUSTOMER_ID] [varchar](20) NOT NULL,
	[DELIVER_ID] [varchar](20) NULL,
	[RECEIVE] [varchar](2) NOT NULL,
	[END_TIME] [datetime] NULL,
	[DESCRIBE] [varchar](255) NULL,
	[PHONE] [varchar](20) NULL,
	[CUSTOMER_SCORE] [numeric](10, 0) NULL,
	[MERCHANT_SCORE] [numeric](10, 0) NULL,
 CONSTRAINT [PK__ORDER__460A946424C389F5] PRIMARY KEY CLUSTERED 
(
	[ORDER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRIVATE_CHAT]    Script Date: 2023/1/4 11:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRIVATE_CHAT](
	[SENDER_ID] [varchar](20) NOT NULL,
	[RECEIVE_ID] [varchar](20) NULL,
	[SENDER_MESSAGE
] [varchar](255) NULL,
	[SEND_TIME
] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SEND_TIME
] ASC,
	[SENDER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2023/1/4 11:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[USER_ID] [varchar](20) NOT NULL,
	[NICKNAME] [varchar](20) NULL,
	[PASSWORD] [varchar](20) NOT NULL,
	[STATUE] [varchar](2) NULL,
	[PHONE] [varchar](20) NULL,
	[CREDIT] [int] NULL,
	[AMOUNT] [int] NULL,
	[ABLE] [varchar](2) NULL,
 CONSTRAINT [PK__Users__F3BEEBFF6A7C644B] PRIMARY KEY CLUSTERED 
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[APPLICATION]  WITH CHECK ADD  CONSTRAINT [User_Id] FOREIGN KEY([USER_ID])
REFERENCES [dbo].[Users] ([USER_ID])
GO
ALTER TABLE [dbo].[APPLICATION] CHECK CONSTRAINT [User_Id]
GO
ALTER TABLE [dbo].[COMPLAINTS]  WITH CHECK ADD  CONSTRAINT [complaints_id] FOREIGN KEY([COMPLAINANT_ID])
REFERENCES [dbo].[Users] ([USER_ID])
GO
ALTER TABLE [dbo].[COMPLAINTS] CHECK CONSTRAINT [complaints_id]
GO
ALTER TABLE [dbo].[COMPLAINTS]  WITH CHECK ADD  CONSTRAINT [order_id] FOREIGN KEY([ORDER_ID])
REFERENCES [dbo].[ORDER] ([ORDER_ID])
GO
ALTER TABLE [dbo].[COMPLAINTS] CHECK CONSTRAINT [order_id]
GO
ALTER TABLE [dbo].[COMPLAINTS]  WITH CHECK ADD  CONSTRAINT [respondent_id] FOREIGN KEY([RESPONDENT_ID])
REFERENCES [dbo].[Users] ([USER_ID])
GO
ALTER TABLE [dbo].[COMPLAINTS] CHECK CONSTRAINT [respondent_id]
GO
ALTER TABLE [dbo].[PRIVATE_CHAT]  WITH CHECK ADD  CONSTRAINT [receive_id] FOREIGN KEY([RECEIVE_ID])
REFERENCES [dbo].[Users] ([USER_ID])
GO
ALTER TABLE [dbo].[PRIVATE_CHAT] CHECK CONSTRAINT [receive_id]
GO
ALTER TABLE [dbo].[PRIVATE_CHAT]  WITH CHECK ADD  CONSTRAINT [sender_id] FOREIGN KEY([SENDER_ID])
REFERENCES [dbo].[Users] ([USER_ID])
GO
ALTER TABLE [dbo].[PRIVATE_CHAT] CHECK CONSTRAINT [sender_id]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0未处理 1已处理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPLAINTS', @level2type=N'COLUMN',@level2name=N'STATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'(0未接单/1接单/2已取消/3已完成)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ORDER', @level2type=N'COLUMN',@level2name=N'RECEIVE'
GO
USE [master]
GO
ALTER DATABASE [feidi] SET  READ_WRITE 
GO
