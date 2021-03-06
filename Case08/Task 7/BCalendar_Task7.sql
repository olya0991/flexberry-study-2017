USE [master]
GO
/****** Object:  Database [BCalendar_Task7]    Script Date: 07.04.2017 18:07:43 ******/
CREATE DATABASE [BCalendar_Task7]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BCalendar_Task7', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BCalendar_Task7.mdf' , SIZE = 15424KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BCalendar_Task7_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BCalendar_Task7_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BCalendar_Task7] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BCalendar_Task7].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BCalendar_Task7] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BCalendar_Task7] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BCalendar_Task7] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BCalendar_Task7] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BCalendar_Task7] SET ARITHABORT OFF 
GO
ALTER DATABASE [BCalendar_Task7] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BCalendar_Task7] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BCalendar_Task7] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BCalendar_Task7] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BCalendar_Task7] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BCalendar_Task7] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BCalendar_Task7] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BCalendar_Task7] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BCalendar_Task7] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BCalendar_Task7] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BCalendar_Task7] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BCalendar_Task7] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BCalendar_Task7] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BCalendar_Task7] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BCalendar_Task7] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BCalendar_Task7] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BCalendar_Task7] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BCalendar_Task7] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BCalendar_Task7] SET  MULTI_USER 
GO
ALTER DATABASE [BCalendar_Task7] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BCalendar_Task7] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BCalendar_Task7] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BCalendar_Task7] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [BCalendar_Task7]
GO
/****** Object:  Table [dbo].[ApplicationLog]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ApplicationLog](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[Category] [varchar](64) NULL,
	[EventId] [int] NULL,
	[Priority] [int] NULL,
	[Severity] [varchar](32) NULL,
	[Title] [varchar](256) NULL,
	[Timestamp] [datetime] NULL,
	[MachineName] [varchar](32) NULL,
	[AppDomainName] [varchar](512) NULL,
	[ProcessId] [varchar](256) NULL,
	[ProcessName] [varchar](512) NULL,
	[ThreadName] [varchar](512) NULL,
	[Win32ThreadId] [varchar](128) NULL,
	[Message] [varchar](2500) NULL,
	[FormattedMessage] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Calendar]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Calendar](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExceptionDay]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExceptionDay](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NULL,
	[DayType] [varchar](8) NULL,
	[RecurrenceType] [varchar](11) NULL,
	[RepeatStep] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[RecurrenceCount] [int] NULL,
	[WorkTimeDefinition_m0] [uniqueidentifier] NULL,
	[Calendar] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Session]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[UserKey] [uniqueidentifier] NULL,
	[StartedAt] [datetime] NULL,
	[LastAccess] [datetime] NULL,
	[Closed] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STORMAC]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORMAC](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[TypeAccess] [varchar](7) NULL,
	[Filter_m0] [uniqueidentifier] NULL,
	[Permition_m0] [uniqueidentifier] NOT NULL,
	[CreateTime] [datetime] NULL,
	[Creator] [varchar](255) NULL,
	[EditTime] [datetime] NULL,
	[Editor] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORMAdvLimit]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORMAdvLimit](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[User] [varchar](255) NULL,
	[Published] [bit] NULL,
	[Module] [varchar](255) NULL,
	[Name] [varchar](255) NULL,
	[Value] [text] NULL,
	[HotKeyData] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORMAG]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORMAG](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[Login] [varchar](50) NULL,
	[Pwd] [varchar](50) NULL,
	[IsUser] [bit] NOT NULL,
	[IsGroup] [bit] NOT NULL,
	[IsRole] [bit] NOT NULL,
	[ConnString] [varchar](255) NULL,
	[Enabled] [bit] NULL,
	[Email] [varchar](80) NULL,
	[CreateTime] [datetime] NULL,
	[Creator] [varchar](255) NULL,
	[EditTime] [datetime] NULL,
	[Editor] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORMF]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORMF](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[FilterText] [varchar](max) NULL,
	[Name] [varchar](255) NULL,
	[FilterTypeNView] [varchar](255) NULL,
	[Subject_m0] [uniqueidentifier] NULL,
	[CreateTime] [datetime] NULL,
	[Creator] [varchar](255) NULL,
	[EditTime] [datetime] NULL,
	[Editor] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORMFILTERDETAIL]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORMFILTERDETAIL](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[Caption] [varchar](255) NOT NULL,
	[DataObjectView] [varchar](255) NOT NULL,
	[ConnectMasterProp] [varchar](255) NOT NULL,
	[OwnerConnectProp] [varchar](255) NULL,
	[FilterSetting_m0] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORMFILTERLOOKUP]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORMFILTERLOOKUP](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[DataObjectType] [varchar](255) NOT NULL,
	[Container] [varchar](255) NULL,
	[ContainerTag] [varchar](255) NULL,
	[FieldsToView] [varchar](255) NULL,
	[FilterSetting_m0] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORMFILTERSETTING]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORMFILTERSETTING](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[DataObjectView] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORMI]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORMI](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[User_m0] [uniqueidentifier] NOT NULL,
	[Agent_m0] [uniqueidentifier] NOT NULL,
	[CreateTime] [datetime] NULL,
	[Creator] [varchar](255) NULL,
	[EditTime] [datetime] NULL,
	[Editor] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORMLA]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORMLA](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[View_m0] [uniqueidentifier] NOT NULL,
	[Attribute_m0] [uniqueidentifier] NOT NULL,
	[CreateTime] [datetime] NULL,
	[Creator] [varchar](255) NULL,
	[EditTime] [datetime] NULL,
	[Editor] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORMLG]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORMLG](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[Group_m0] [uniqueidentifier] NOT NULL,
	[User_m0] [uniqueidentifier] NOT NULL,
	[CreateTime] [datetime] NULL,
	[Creator] [varchar](255) NULL,
	[EditTime] [datetime] NULL,
	[Editor] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORMLO]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORMLO](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[Class_m0] [uniqueidentifier] NOT NULL,
	[Operation_m0] [uniqueidentifier] NOT NULL,
	[CreateTime] [datetime] NULL,
	[Creator] [varchar](255) NULL,
	[EditTime] [datetime] NULL,
	[Editor] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORMLR]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORMLR](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Agent_m0] [uniqueidentifier] NOT NULL,
	[Role_m0] [uniqueidentifier] NOT NULL,
	[CreateTime] [datetime] NULL,
	[Creator] [varchar](255) NULL,
	[EditTime] [datetime] NULL,
	[Editor] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORMLV]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORMLV](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[Class_m0] [uniqueidentifier] NOT NULL,
	[View_m0] [uniqueidentifier] NOT NULL,
	[CreateTime] [datetime] NULL,
	[Creator] [varchar](255) NULL,
	[EditTime] [datetime] NULL,
	[Editor] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORMNETLOCKDATA]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORMNETLOCKDATA](
	[LockKey] [varchar](300) NOT NULL,
	[UserName] [varchar](300) NOT NULL,
	[LockDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[LockKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORMP]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORMP](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[Subject_m0] [uniqueidentifier] NOT NULL,
	[Agent_m0] [uniqueidentifier] NOT NULL,
	[CreateTime] [datetime] NULL,
	[Creator] [varchar](255) NULL,
	[EditTime] [datetime] NULL,
	[Editor] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORMS]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORMS](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Type] [varchar](100) NULL,
	[IsAttribute] [bit] NOT NULL,
	[IsOperation] [bit] NOT NULL,
	[IsView] [bit] NOT NULL,
	[IsClass] [bit] NOT NULL,
	[SharedOper] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[Creator] [varchar](255) NULL,
	[EditTime] [datetime] NULL,
	[Editor] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORMSETTINGS]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORMSETTINGS](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[Module] [varchar](1000) NULL,
	[Name] [varchar](255) NULL,
	[Value] [text] NULL,
	[User] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORMWEBSEARCH]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORMWEBSEARCH](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Order] [int] NOT NULL,
	[PresentView] [varchar](255) NOT NULL,
	[DetailedView] [varchar](255) NOT NULL,
	[FilterSetting_m0] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserSetting]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserSetting](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[AppName] [varchar](256) NULL,
	[UserName] [varchar](512) NULL,
	[UserGuid] [uniqueidentifier] NULL,
	[ModuleName] [varchar](1024) NULL,
	[ModuleGuid] [uniqueidentifier] NULL,
	[SettName] [varchar](256) NULL,
	[SettGuid] [uniqueidentifier] NULL,
	[SettLastAccessTime] [datetime] NULL,
	[StrVal] [varchar](256) NULL,
	[TxtVal] [varchar](max) NULL,
	[IntVal] [int] NULL,
	[BoolVal] [bit] NULL,
	[GuidVal] [uniqueidentifier] NULL,
	[DecimalVal] [decimal](20, 10) NULL,
	[DateTimeVal] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Week]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Week](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NULL,
	[IsDefault] [bit] NULL,
	[Sunday] [uniqueidentifier] NULL,
	[Wednesday] [uniqueidentifier] NULL,
	[Monday] [uniqueidentifier] NULL,
	[Saturday] [uniqueidentifier] NULL,
	[Tuesday] [uniqueidentifier] NULL,
	[Friday] [uniqueidentifier] NULL,
	[Thursday] [uniqueidentifier] NULL,
	[Calendar] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkTimeDefinition]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkTimeDefinition](
	[primaryKey] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WorkTimeSpan]    Script Date: 07.04.2017 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkTimeSpan](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[StartTime] [decimal](18, 2) NULL,
	[EndTime] [decimal](18, 2) NULL,
	[WorkTimeDefinition_m0] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [ExceptionDay_ICalendar]    Script Date: 07.04.2017 18:07:43 ******/
CREATE NONCLUSTERED INDEX [ExceptionDay_ICalendar] ON [dbo].[ExceptionDay]
(
	[Calendar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ExceptionDay_IWorkTimeDefinition_m0]    Script Date: 07.04.2017 18:07:43 ******/
CREATE NONCLUSTERED INDEX [ExceptionDay_IWorkTimeDefinition_m0] ON [dbo].[ExceptionDay]
(
	[WorkTimeDefinition_m0] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Week_ICalendar]    Script Date: 07.04.2017 18:07:43 ******/
CREATE NONCLUSTERED INDEX [Week_ICalendar] ON [dbo].[Week]
(
	[Calendar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Week_IFriday]    Script Date: 07.04.2017 18:07:43 ******/
CREATE NONCLUSTERED INDEX [Week_IFriday] ON [dbo].[Week]
(
	[Friday] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Week_IMonday]    Script Date: 07.04.2017 18:07:43 ******/
CREATE NONCLUSTERED INDEX [Week_IMonday] ON [dbo].[Week]
(
	[Monday] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Week_ISaturday]    Script Date: 07.04.2017 18:07:43 ******/
CREATE NONCLUSTERED INDEX [Week_ISaturday] ON [dbo].[Week]
(
	[Saturday] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Week_ISunday]    Script Date: 07.04.2017 18:07:43 ******/
CREATE NONCLUSTERED INDEX [Week_ISunday] ON [dbo].[Week]
(
	[Sunday] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Week_IThursday]    Script Date: 07.04.2017 18:07:43 ******/
CREATE NONCLUSTERED INDEX [Week_IThursday] ON [dbo].[Week]
(
	[Thursday] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Week_ITuesday]    Script Date: 07.04.2017 18:07:43 ******/
CREATE NONCLUSTERED INDEX [Week_ITuesday] ON [dbo].[Week]
(
	[Tuesday] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Week_IWednesday]    Script Date: 07.04.2017 18:07:43 ******/
CREATE NONCLUSTERED INDEX [Week_IWednesday] ON [dbo].[Week]
(
	[Wednesday] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [WorkTimeSpan_IWorkTimeDefinition_m0]    Script Date: 07.04.2017 18:07:43 ******/
CREATE NONCLUSTERED INDEX [WorkTimeSpan_IWorkTimeDefinition_m0] ON [dbo].[WorkTimeSpan]
(
	[WorkTimeDefinition_m0] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ExceptionDay]  WITH CHECK ADD  CONSTRAINT [ExceptionDay_FCalendar_0] FOREIGN KEY([Calendar])
REFERENCES [dbo].[Calendar] ([primaryKey])
GO
ALTER TABLE [dbo].[ExceptionDay] CHECK CONSTRAINT [ExceptionDay_FCalendar_0]
GO
ALTER TABLE [dbo].[ExceptionDay]  WITH CHECK ADD  CONSTRAINT [ExceptionDay_FWorkTimeDefinition_0] FOREIGN KEY([WorkTimeDefinition_m0])
REFERENCES [dbo].[WorkTimeDefinition] ([primaryKey])
GO
ALTER TABLE [dbo].[ExceptionDay] CHECK CONSTRAINT [ExceptionDay_FWorkTimeDefinition_0]
GO
ALTER TABLE [dbo].[STORMAC]  WITH CHECK ADD  CONSTRAINT [STORMAC_FSTORMF_0] FOREIGN KEY([Filter_m0])
REFERENCES [dbo].[STORMF] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMAC] CHECK CONSTRAINT [STORMAC_FSTORMF_0]
GO
ALTER TABLE [dbo].[STORMAC]  WITH CHECK ADD  CONSTRAINT [STORMAC_FSTORMP_0] FOREIGN KEY([Permition_m0])
REFERENCES [dbo].[STORMP] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMAC] CHECK CONSTRAINT [STORMAC_FSTORMP_0]
GO
ALTER TABLE [dbo].[STORMF]  WITH CHECK ADD  CONSTRAINT [STORMF_FSTORMS_0] FOREIGN KEY([Subject_m0])
REFERENCES [dbo].[STORMS] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMF] CHECK CONSTRAINT [STORMF_FSTORMS_0]
GO
ALTER TABLE [dbo].[STORMFILTERDETAIL]  WITH CHECK ADD  CONSTRAINT [STORMFILTERDETAIL_FSTORMFILTERSETTING_0] FOREIGN KEY([FilterSetting_m0])
REFERENCES [dbo].[STORMFILTERSETTING] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMFILTERDETAIL] CHECK CONSTRAINT [STORMFILTERDETAIL_FSTORMFILTERSETTING_0]
GO
ALTER TABLE [dbo].[STORMFILTERLOOKUP]  WITH CHECK ADD  CONSTRAINT [STORMFILTERLOOKUP_FSTORMFILTERSETTING_0] FOREIGN KEY([FilterSetting_m0])
REFERENCES [dbo].[STORMFILTERSETTING] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMFILTERLOOKUP] CHECK CONSTRAINT [STORMFILTERLOOKUP_FSTORMFILTERSETTING_0]
GO
ALTER TABLE [dbo].[STORMI]  WITH CHECK ADD  CONSTRAINT [STORMI_FSTORMAG_0] FOREIGN KEY([User_m0])
REFERENCES [dbo].[STORMAG] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMI] CHECK CONSTRAINT [STORMI_FSTORMAG_0]
GO
ALTER TABLE [dbo].[STORMI]  WITH CHECK ADD  CONSTRAINT [STORMI_FSTORMAG_1] FOREIGN KEY([Agent_m0])
REFERENCES [dbo].[STORMAG] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMI] CHECK CONSTRAINT [STORMI_FSTORMAG_1]
GO
ALTER TABLE [dbo].[STORMLA]  WITH CHECK ADD  CONSTRAINT [STORMLA_FSTORMS_0] FOREIGN KEY([View_m0])
REFERENCES [dbo].[STORMS] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMLA] CHECK CONSTRAINT [STORMLA_FSTORMS_0]
GO
ALTER TABLE [dbo].[STORMLA]  WITH CHECK ADD  CONSTRAINT [STORMLA_FSTORMS_1] FOREIGN KEY([Attribute_m0])
REFERENCES [dbo].[STORMS] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMLA] CHECK CONSTRAINT [STORMLA_FSTORMS_1]
GO
ALTER TABLE [dbo].[STORMLG]  WITH CHECK ADD  CONSTRAINT [STORMLG_FSTORMAG_0] FOREIGN KEY([Group_m0])
REFERENCES [dbo].[STORMAG] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMLG] CHECK CONSTRAINT [STORMLG_FSTORMAG_0]
GO
ALTER TABLE [dbo].[STORMLG]  WITH CHECK ADD  CONSTRAINT [STORMLG_FSTORMAG_1] FOREIGN KEY([User_m0])
REFERENCES [dbo].[STORMAG] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMLG] CHECK CONSTRAINT [STORMLG_FSTORMAG_1]
GO
ALTER TABLE [dbo].[STORMLO]  WITH CHECK ADD  CONSTRAINT [STORMLO_FSTORMS_0] FOREIGN KEY([Class_m0])
REFERENCES [dbo].[STORMS] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMLO] CHECK CONSTRAINT [STORMLO_FSTORMS_0]
GO
ALTER TABLE [dbo].[STORMLO]  WITH CHECK ADD  CONSTRAINT [STORMLO_FSTORMS_1] FOREIGN KEY([Operation_m0])
REFERENCES [dbo].[STORMS] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMLO] CHECK CONSTRAINT [STORMLO_FSTORMS_1]
GO
ALTER TABLE [dbo].[STORMLR]  WITH CHECK ADD  CONSTRAINT [STORMLR_FSTORMAG_0] FOREIGN KEY([Agent_m0])
REFERENCES [dbo].[STORMAG] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMLR] CHECK CONSTRAINT [STORMLR_FSTORMAG_0]
GO
ALTER TABLE [dbo].[STORMLR]  WITH CHECK ADD  CONSTRAINT [STORMLR_FSTORMAG_1] FOREIGN KEY([Role_m0])
REFERENCES [dbo].[STORMAG] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMLR] CHECK CONSTRAINT [STORMLR_FSTORMAG_1]
GO
ALTER TABLE [dbo].[STORMLV]  WITH CHECK ADD  CONSTRAINT [STORMLV_FSTORMS_0] FOREIGN KEY([Class_m0])
REFERENCES [dbo].[STORMS] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMLV] CHECK CONSTRAINT [STORMLV_FSTORMS_0]
GO
ALTER TABLE [dbo].[STORMLV]  WITH CHECK ADD  CONSTRAINT [STORMLV_FSTORMS_1] FOREIGN KEY([View_m0])
REFERENCES [dbo].[STORMS] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMLV] CHECK CONSTRAINT [STORMLV_FSTORMS_1]
GO
ALTER TABLE [dbo].[STORMP]  WITH CHECK ADD  CONSTRAINT [STORMP_FSTORMAG_0] FOREIGN KEY([Agent_m0])
REFERENCES [dbo].[STORMAG] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMP] CHECK CONSTRAINT [STORMP_FSTORMAG_0]
GO
ALTER TABLE [dbo].[STORMP]  WITH CHECK ADD  CONSTRAINT [STORMP_FSTORMS_0] FOREIGN KEY([Subject_m0])
REFERENCES [dbo].[STORMS] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMP] CHECK CONSTRAINT [STORMP_FSTORMS_0]
GO
ALTER TABLE [dbo].[STORMWEBSEARCH]  WITH CHECK ADD  CONSTRAINT [STORMWEBSEARCH_FSTORMFILTERSETTING_0] FOREIGN KEY([FilterSetting_m0])
REFERENCES [dbo].[STORMFILTERSETTING] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMWEBSEARCH] CHECK CONSTRAINT [STORMWEBSEARCH_FSTORMFILTERSETTING_0]
GO
ALTER TABLE [dbo].[Week]  WITH CHECK ADD  CONSTRAINT [Week_FCalendar_0] FOREIGN KEY([Calendar])
REFERENCES [dbo].[Calendar] ([primaryKey])
GO
ALTER TABLE [dbo].[Week] CHECK CONSTRAINT [Week_FCalendar_0]
GO
ALTER TABLE [dbo].[Week]  WITH CHECK ADD  CONSTRAINT [Week_FWorkTimeDefinition_0] FOREIGN KEY([Sunday])
REFERENCES [dbo].[WorkTimeDefinition] ([primaryKey])
GO
ALTER TABLE [dbo].[Week] CHECK CONSTRAINT [Week_FWorkTimeDefinition_0]
GO
ALTER TABLE [dbo].[Week]  WITH CHECK ADD  CONSTRAINT [Week_FWorkTimeDefinition_1] FOREIGN KEY([Wednesday])
REFERENCES [dbo].[WorkTimeDefinition] ([primaryKey])
GO
ALTER TABLE [dbo].[Week] CHECK CONSTRAINT [Week_FWorkTimeDefinition_1]
GO
ALTER TABLE [dbo].[Week]  WITH CHECK ADD  CONSTRAINT [Week_FWorkTimeDefinition_2] FOREIGN KEY([Monday])
REFERENCES [dbo].[WorkTimeDefinition] ([primaryKey])
GO
ALTER TABLE [dbo].[Week] CHECK CONSTRAINT [Week_FWorkTimeDefinition_2]
GO
ALTER TABLE [dbo].[Week]  WITH CHECK ADD  CONSTRAINT [Week_FWorkTimeDefinition_3] FOREIGN KEY([Saturday])
REFERENCES [dbo].[WorkTimeDefinition] ([primaryKey])
GO
ALTER TABLE [dbo].[Week] CHECK CONSTRAINT [Week_FWorkTimeDefinition_3]
GO
ALTER TABLE [dbo].[Week]  WITH CHECK ADD  CONSTRAINT [Week_FWorkTimeDefinition_4] FOREIGN KEY([Tuesday])
REFERENCES [dbo].[WorkTimeDefinition] ([primaryKey])
GO
ALTER TABLE [dbo].[Week] CHECK CONSTRAINT [Week_FWorkTimeDefinition_4]
GO
ALTER TABLE [dbo].[Week]  WITH CHECK ADD  CONSTRAINT [Week_FWorkTimeDefinition_5] FOREIGN KEY([Friday])
REFERENCES [dbo].[WorkTimeDefinition] ([primaryKey])
GO
ALTER TABLE [dbo].[Week] CHECK CONSTRAINT [Week_FWorkTimeDefinition_5]
GO
ALTER TABLE [dbo].[Week]  WITH CHECK ADD  CONSTRAINT [Week_FWorkTimeDefinition_6] FOREIGN KEY([Thursday])
REFERENCES [dbo].[WorkTimeDefinition] ([primaryKey])
GO
ALTER TABLE [dbo].[Week] CHECK CONSTRAINT [Week_FWorkTimeDefinition_6]
GO
ALTER TABLE [dbo].[WorkTimeSpan]  WITH CHECK ADD  CONSTRAINT [WorkTimeSpan_FWorkTimeDefinition_0] FOREIGN KEY([WorkTimeDefinition_m0])
REFERENCES [dbo].[WorkTimeDefinition] ([primaryKey])
GO
ALTER TABLE [dbo].[WorkTimeSpan] CHECK CONSTRAINT [WorkTimeSpan_FWorkTimeDefinition_0]
GO
USE [master]
GO
ALTER DATABASE [BCalendar_Task7] SET  READ_WRITE 
GO
