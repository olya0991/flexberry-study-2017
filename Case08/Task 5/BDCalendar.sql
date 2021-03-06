USE [master]
GO
/****** Object:  Database [BDCalendar]    Script Date: 28.03.2017 17:58:40 ******/
CREATE DATABASE [BDCalendar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDCalendar', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BDCalendar.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BDCalendar_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BDCalendar_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BDCalendar] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDCalendar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDCalendar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDCalendar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDCalendar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDCalendar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDCalendar] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDCalendar] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BDCalendar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDCalendar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDCalendar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDCalendar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDCalendar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDCalendar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDCalendar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDCalendar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDCalendar] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BDCalendar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDCalendar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDCalendar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDCalendar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDCalendar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDCalendar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDCalendar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDCalendar] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BDCalendar] SET  MULTI_USER 
GO
ALTER DATABASE [BDCalendar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDCalendar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDCalendar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDCalendar] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [BDCalendar]
GO
/****** Object:  Table [dbo].[ApplicationLog]    Script Date: 28.03.2017 17:58:41 ******/
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
/****** Object:  Table [dbo].[Calendar]    Script Date: 28.03.2017 17:58:41 ******/
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
/****** Object:  Table [dbo].[ExceptionDay]    Script Date: 28.03.2017 17:58:41 ******/
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
	[Calendar] [uniqueidentifier] NOT NULL,
	[WorkTimeDefinition] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORMAdvLimit]    Script Date: 28.03.2017 17:58:41 ******/
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
/****** Object:  Table [dbo].[STORMAG]    Script Date: 28.03.2017 17:58:41 ******/
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
/****** Object:  Table [dbo].[STORMAuEntity]    Script Date: 28.03.2017 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STORMAuEntity](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[ObjectPrimaryKey] [nvarchar](38) NOT NULL,
	[OperationTime] [datetime] NOT NULL,
	[OperationType] [nvarchar](100) NOT NULL,
	[ExecutionResult] [nvarchar](12) NOT NULL,
	[Source] [nvarchar](255) NOT NULL,
	[SerializedField] [nvarchar](max) NULL,
	[User_m0] [uniqueidentifier] NOT NULL,
	[ObjectType_m0] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STORMAuField]    Script Date: 28.03.2017 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STORMAuField](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[Field] [nvarchar](100) NOT NULL,
	[OldValue] [nvarchar](max) NULL,
	[NewValue] [nvarchar](max) NULL,
	[MainChange_m0] [uniqueidentifier] NULL,
	[AuditEntity_m0] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STORMAuObjType]    Script Date: 28.03.2017 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STORMAuObjType](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STORMFILTERDETAIL]    Script Date: 28.03.2017 17:58:41 ******/
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
/****** Object:  Table [dbo].[STORMFILTERLOOKUP]    Script Date: 28.03.2017 17:58:41 ******/
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
/****** Object:  Table [dbo].[STORMFILTERSETTING]    Script Date: 28.03.2017 17:58:41 ******/
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
/****** Object:  Table [dbo].[STORMLG]    Script Date: 28.03.2017 17:58:41 ******/
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
/****** Object:  Table [dbo].[STORMNETLOCKDATA]    Script Date: 28.03.2017 17:58:41 ******/
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
/****** Object:  Table [dbo].[STORMSETTINGS]    Script Date: 28.03.2017 17:58:41 ******/
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
/****** Object:  Table [dbo].[STORMWebModuleReportTemplate]    Script Date: 28.03.2017 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STORMWebModuleReportTemplate](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[Module] [nvarchar](255) NOT NULL,
	[ReportTemplate] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STORMWebReportDocument]    Script Date: 28.03.2017 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORMWebReportDocument](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[CreateTime] [datetime] NULL,
	[Creator] [nvarchar](255) NULL,
	[EditTime] [datetime] NULL,
	[Editor] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Owner] [nvarchar](255) NOT NULL,
	[IsShared] [bit] NULL,
	[Content] [varbinary](1) NULL,
	[ContentPath] [nvarchar](255) NULL,
	[ContentStorage] [nvarchar](16) NOT NULL,
	[ReportTemplate] [uniqueidentifier] NULL,
	[Type_m0] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORMWebReportParameter]    Script Date: 28.03.2017 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STORMWebReportParameter](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Caption] [nvarchar](255) NULL,
	[IsMultiple] [bit] NULL,
	[TypeName] [nvarchar](255) NOT NULL,
	[Order] [int] NOT NULL,
	[IsRequired] [bit] NULL,
	[ReportTemplate] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STORMWebReportTemplate]    Script Date: 28.03.2017 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STORMWebReportTemplate](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[DataForBuilding] [varbinary](1) NULL,
	[ParameterForm] [nvarchar](255) NULL,
	[CreateTime] [datetime] NULL,
	[Creator] [nvarchar](255) NULL,
	[EditTime] [datetime] NULL,
	[Editor] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Owner] [nvarchar](255) NOT NULL,
	[IsShared] [bit] NULL,
	[Content] [varbinary](1) NULL,
	[ContentPath] [nvarchar](255) NULL,
	[ContentStorage] [nvarchar](16) NOT NULL,
	[Type_m0] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STORMWebReportType]    Script Date: 28.03.2017 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STORMWebReportType](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[TypeName] [nvarchar](255) NOT NULL,
	[ElementType] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STORMWEBSEARCH]    Script Date: 28.03.2017 17:58:41 ******/
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
/****** Object:  Table [dbo].[UserSetting]    Script Date: 28.03.2017 17:58:41 ******/
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
/****** Object:  Table [dbo].[Week]    Script Date: 28.03.2017 17:58:41 ******/
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
	[Friday] [uniqueidentifier] NOT NULL,
	[Saturday] [uniqueidentifier] NOT NULL,
	[Tuesday] [uniqueidentifier] NOT NULL,
	[Sunday] [uniqueidentifier] NOT NULL,
	[Monday] [uniqueidentifier] NOT NULL,
	[Thursday] [uniqueidentifier] NOT NULL,
	[Calendar] [uniqueidentifier] NOT NULL,
	[Wednesday] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkTimeDefinition]    Script Date: 28.03.2017 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WorkTimeDefinition](
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
/****** Object:  Table [dbo].[WorkTimeSpan]    Script Date: 28.03.2017 17:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkTimeSpan](
	[primaryKey] [uniqueidentifier] NOT NULL,
	[StartTime] [decimal](18, 0) NULL,
	[EndTime] [decimal](18, 0) NULL,
	[WorkTimeDefinition] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[primaryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [ExceptionDay_ICalendar]    Script Date: 28.03.2017 17:58:41 ******/
CREATE NONCLUSTERED INDEX [ExceptionDay_ICalendar] ON [dbo].[ExceptionDay]
(
	[Calendar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ExceptionDay_IWorkTimeDefinition]    Script Date: 28.03.2017 17:58:41 ******/
CREATE NONCLUSTERED INDEX [ExceptionDay_IWorkTimeDefinition] ON [dbo].[ExceptionDay]
(
	[WorkTimeDefinition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Week_ICalendar]    Script Date: 28.03.2017 17:58:41 ******/
CREATE NONCLUSTERED INDEX [Week_ICalendar] ON [dbo].[Week]
(
	[Calendar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Week_IFriday]    Script Date: 28.03.2017 17:58:41 ******/
CREATE NONCLUSTERED INDEX [Week_IFriday] ON [dbo].[Week]
(
	[Friday] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Week_IMonday]    Script Date: 28.03.2017 17:58:41 ******/
CREATE NONCLUSTERED INDEX [Week_IMonday] ON [dbo].[Week]
(
	[Monday] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Week_ISaturday]    Script Date: 28.03.2017 17:58:41 ******/
CREATE NONCLUSTERED INDEX [Week_ISaturday] ON [dbo].[Week]
(
	[Saturday] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Week_ISunday]    Script Date: 28.03.2017 17:58:41 ******/
CREATE NONCLUSTERED INDEX [Week_ISunday] ON [dbo].[Week]
(
	[Sunday] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Week_IThursday]    Script Date: 28.03.2017 17:58:41 ******/
CREATE NONCLUSTERED INDEX [Week_IThursday] ON [dbo].[Week]
(
	[Thursday] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Week_ITuesday]    Script Date: 28.03.2017 17:58:41 ******/
CREATE NONCLUSTERED INDEX [Week_ITuesday] ON [dbo].[Week]
(
	[Tuesday] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Week_IWednesday]    Script Date: 28.03.2017 17:58:41 ******/
CREATE NONCLUSTERED INDEX [Week_IWednesday] ON [dbo].[Week]
(
	[Wednesday] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [WorkTimeSpan_IWorkTimeDefinition]    Script Date: 28.03.2017 17:58:41 ******/
CREATE NONCLUSTERED INDEX [WorkTimeSpan_IWorkTimeDefinition] ON [dbo].[WorkTimeSpan]
(
	[WorkTimeDefinition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ExceptionDay]  WITH CHECK ADD  CONSTRAINT [ExceptionDay_FCalendar_0] FOREIGN KEY([Calendar])
REFERENCES [dbo].[Calendar] ([primaryKey])
GO
ALTER TABLE [dbo].[ExceptionDay] CHECK CONSTRAINT [ExceptionDay_FCalendar_0]
GO
ALTER TABLE [dbo].[ExceptionDay]  WITH CHECK ADD  CONSTRAINT [ExceptionDay_FWorkTimeDefinition_0] FOREIGN KEY([WorkTimeDefinition])
REFERENCES [dbo].[WorkTimeDefinition] ([primaryKey])
GO
ALTER TABLE [dbo].[ExceptionDay] CHECK CONSTRAINT [ExceptionDay_FWorkTimeDefinition_0]
GO
ALTER TABLE [dbo].[STORMAuEntity]  WITH CHECK ADD  CONSTRAINT [STORMAuEntity_FSTORMAG_0] FOREIGN KEY([User_m0])
REFERENCES [dbo].[STORMAG] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMAuEntity] CHECK CONSTRAINT [STORMAuEntity_FSTORMAG_0]
GO
ALTER TABLE [dbo].[STORMAuEntity]  WITH CHECK ADD  CONSTRAINT [STORMAuEntity_FSTORMAuObjType_0] FOREIGN KEY([ObjectType_m0])
REFERENCES [dbo].[STORMAuObjType] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMAuEntity] CHECK CONSTRAINT [STORMAuEntity_FSTORMAuObjType_0]
GO
ALTER TABLE [dbo].[STORMAuField]  WITH CHECK ADD  CONSTRAINT [STORMAuField_FSTORMAuEntity_0] FOREIGN KEY([AuditEntity_m0])
REFERENCES [dbo].[STORMAuEntity] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMAuField] CHECK CONSTRAINT [STORMAuField_FSTORMAuEntity_0]
GO
ALTER TABLE [dbo].[STORMAuField]  WITH CHECK ADD  CONSTRAINT [STORMAuField_FSTORMAuField_0] FOREIGN KEY([MainChange_m0])
REFERENCES [dbo].[STORMAuField] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMAuField] CHECK CONSTRAINT [STORMAuField_FSTORMAuField_0]
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
ALTER TABLE [dbo].[STORMWebModuleReportTemplate]  WITH CHECK ADD  CONSTRAINT [STORMWebModuleReportTemplate_FSTORMWebReportTemplate_0] FOREIGN KEY([ReportTemplate])
REFERENCES [dbo].[STORMWebReportTemplate] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMWebModuleReportTemplate] CHECK CONSTRAINT [STORMWebModuleReportTemplate_FSTORMWebReportTemplate_0]
GO
ALTER TABLE [dbo].[STORMWebReportDocument]  WITH CHECK ADD  CONSTRAINT [STORMWebReportDocument_FSTORMWebReportTemplate_0] FOREIGN KEY([ReportTemplate])
REFERENCES [dbo].[STORMWebReportTemplate] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMWebReportDocument] CHECK CONSTRAINT [STORMWebReportDocument_FSTORMWebReportTemplate_0]
GO
ALTER TABLE [dbo].[STORMWebReportDocument]  WITH CHECK ADD  CONSTRAINT [STORMWebReportDocument_FSTORMWebReportType_0] FOREIGN KEY([Type_m0])
REFERENCES [dbo].[STORMWebReportType] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMWebReportDocument] CHECK CONSTRAINT [STORMWebReportDocument_FSTORMWebReportType_0]
GO
ALTER TABLE [dbo].[STORMWebReportParameter]  WITH CHECK ADD  CONSTRAINT [STORMWebReportParameter_FSTORMWebReportTemplate_0] FOREIGN KEY([ReportTemplate])
REFERENCES [dbo].[STORMWebReportTemplate] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMWebReportParameter] CHECK CONSTRAINT [STORMWebReportParameter_FSTORMWebReportTemplate_0]
GO
ALTER TABLE [dbo].[STORMWebReportTemplate]  WITH CHECK ADD  CONSTRAINT [STORMWebReportTemplate_FSTORMWebReportType_0] FOREIGN KEY([Type_m0])
REFERENCES [dbo].[STORMWebReportType] ([primaryKey])
GO
ALTER TABLE [dbo].[STORMWebReportTemplate] CHECK CONSTRAINT [STORMWebReportTemplate_FSTORMWebReportType_0]
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
ALTER TABLE [dbo].[Week]  WITH CHECK ADD  CONSTRAINT [Week_FWorkTimeDefinition_0] FOREIGN KEY([Friday])
REFERENCES [dbo].[WorkTimeDefinition] ([primaryKey])
GO
ALTER TABLE [dbo].[Week] CHECK CONSTRAINT [Week_FWorkTimeDefinition_0]
GO
ALTER TABLE [dbo].[Week]  WITH CHECK ADD  CONSTRAINT [Week_FWorkTimeDefinition_1] FOREIGN KEY([Saturday])
REFERENCES [dbo].[WorkTimeDefinition] ([primaryKey])
GO
ALTER TABLE [dbo].[Week] CHECK CONSTRAINT [Week_FWorkTimeDefinition_1]
GO
ALTER TABLE [dbo].[Week]  WITH CHECK ADD  CONSTRAINT [Week_FWorkTimeDefinition_2] FOREIGN KEY([Tuesday])
REFERENCES [dbo].[WorkTimeDefinition] ([primaryKey])
GO
ALTER TABLE [dbo].[Week] CHECK CONSTRAINT [Week_FWorkTimeDefinition_2]
GO
ALTER TABLE [dbo].[Week]  WITH CHECK ADD  CONSTRAINT [Week_FWorkTimeDefinition_3] FOREIGN KEY([Sunday])
REFERENCES [dbo].[WorkTimeDefinition] ([primaryKey])
GO
ALTER TABLE [dbo].[Week] CHECK CONSTRAINT [Week_FWorkTimeDefinition_3]
GO
ALTER TABLE [dbo].[Week]  WITH CHECK ADD  CONSTRAINT [Week_FWorkTimeDefinition_4] FOREIGN KEY([Monday])
REFERENCES [dbo].[WorkTimeDefinition] ([primaryKey])
GO
ALTER TABLE [dbo].[Week] CHECK CONSTRAINT [Week_FWorkTimeDefinition_4]
GO
ALTER TABLE [dbo].[Week]  WITH CHECK ADD  CONSTRAINT [Week_FWorkTimeDefinition_5] FOREIGN KEY([Thursday])
REFERENCES [dbo].[WorkTimeDefinition] ([primaryKey])
GO
ALTER TABLE [dbo].[Week] CHECK CONSTRAINT [Week_FWorkTimeDefinition_5]
GO
ALTER TABLE [dbo].[Week]  WITH CHECK ADD  CONSTRAINT [Week_FWorkTimeDefinition_6] FOREIGN KEY([Wednesday])
REFERENCES [dbo].[WorkTimeDefinition] ([primaryKey])
GO
ALTER TABLE [dbo].[Week] CHECK CONSTRAINT [Week_FWorkTimeDefinition_6]
GO
ALTER TABLE [dbo].[WorkTimeSpan]  WITH CHECK ADD  CONSTRAINT [WorkTimeSpan_FWorkTimeDefinition_0] FOREIGN KEY([WorkTimeDefinition])
REFERENCES [dbo].[WorkTimeDefinition] ([primaryKey])
GO
ALTER TABLE [dbo].[WorkTimeSpan] CHECK CONSTRAINT [WorkTimeSpan_FWorkTimeDefinition_0]
GO
USE [master]
GO
ALTER DATABASE [BDCalendar] SET  READ_WRITE 
GO
