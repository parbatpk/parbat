/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2000)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2014
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/

USE [master]
GO
/****** Object:  Database [ParbatDB]    Script Date: 3/26/2021 5:54:10 PM ******/
CREATE DATABASE [ParbatDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ParbatDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ParbatDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ParbatDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ParbatDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ParbatDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ParbatDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ParbatDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ParbatDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ParbatDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ParbatDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ParbatDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ParbatDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ParbatDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ParbatDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ParbatDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ParbatDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ParbatDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ParbatDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ParbatDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ParbatDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ParbatDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ParbatDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ParbatDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ParbatDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ParbatDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ParbatDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ParbatDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ParbatDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ParbatDB] SET  MULTI_USER 
GO
ALTER DATABASE [ParbatDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ParbatDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ParbatDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ParbatDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ParbatDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ParbatDB]
GO
/****** Object:  Table [dbo].[Batch]    Script Date: 3/26/2021 5:54:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batch](
	[BatchID] [bigint] IDENTITY(1,1) NOT NULL,
	[ShortName] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[AdmissionYear] [int] NULL,
	[GraduationYear] [int] NULL,
	[OrgUnitID] [bigint] NOT NULL,
	[CurriculumID] [bigint] NULL,
 CONSTRAINT [PK_Batch] PRIMARY KEY CLUSTERED 
(
	[BatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Component]    Script Date: 3/26/2021 5:54:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Component](
	[ComponentID] [bigint] IDENTITY(1,1) NOT NULL,
	[ShortName] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CurriculumID] [bigint] NOT NULL,
	[TotalCredit] [int] NOT NULL,
	[TotalCourses] [int] NOT NULL,
	[IsLimitCourses] [bit] NOT NULL,
	[IsLimitCreditHrs] [bit] NOT NULL,
	[ComponentTypeID] [bigint] NOT NULL,
 CONSTRAINT [PK_Component] PRIMARY KEY CLUSTERED 
(
	[ComponentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComponentCourse]    Script Date: 3/26/2021 5:54:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComponentCourse](
	[ComponentCourseID] [bigint] IDENTITY(1,1) NOT NULL,
	[ComponentID] [bigint] NOT NULL,
	[CourseID] [bigint] NOT NULL,
 CONSTRAINT [PK_ComponentCourse] PRIMARY KEY CLUSTERED 
(
	[ComponentCourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComponentType]    Script Date: 3/26/2021 5:54:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComponentType](
	[ComponentTypeID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsRequired] [bit] NOT NULL,
 CONSTRAINT [PK_ComponentType] PRIMARY KEY CLUSTERED 
(
	[ComponentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 3/26/2021 5:54:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [bigint] IDENTITY(1,1) NOT NULL,
	[OwnerID] [bigint] NOT NULL,
	[ShortName] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[TheoryCredit] [int] NOT NULL,
	[LabCredit] [int] NOT NULL,
	[Code] [nvarchar](10) NULL,
	[CourseTypeID] [bigint] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseType]    Script Date: 3/26/2021 5:54:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseType](
	[CourseTypeID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CourseType] PRIMARY KEY CLUSTERED 
(
	[CourseTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curriculum]    Script Date: 3/26/2021 5:54:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curriculum](
	[CurriculumID] [bigint] IDENTITY(1,1) NOT NULL,
	[ShortName] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[OwnerUnitID] [bigint] NOT NULL,
	[TotalCourses] [int] NOT NULL,
	[TotalCreditHrs] [int] NOT NULL,
	[IsLimitCreditHrs] [bit] NOT NULL,
	[IsLimitCourses] [bit] NOT NULL,
	[CurriculumTypeID] [bigint] NOT NULL,
 CONSTRAINT [PK_Curriculum] PRIMARY KEY CLUSTERED 
(
	[CurriculumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CurriculumType]    Script Date: 3/26/2021 5:54:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurriculumType](
	[CurriculumTypeID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_CurriculumType] PRIMARY KEY CLUSTERED 
(
	[CurriculumTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrgUnit]    Script Date: 3/26/2021 5:54:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrgUnit](
	[OrgUnitID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrgUnitTypeID] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ShortName] [nvarchar](10) NOT NULL,
	[ParentUnitID] [bigint] NULL,
	[IsAllowAdmission] [bit] NOT NULL,
 CONSTRAINT [PK_OrgUnit] PRIMARY KEY CLUSTERED 
(
	[OrgUnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrgUnitType]    Script Date: 3/26/2021 5:54:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrgUnitType](
	[OrgUnitTypeID] [bigint] IDENTITY(1,1) NOT NULL,
	[ShortName] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OrgUnitType] PRIMARY KEY CLUSTERED 
(
	[OrgUnitTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 3/26/2021 5:54:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [bigint] IDENTITY(1,1) NOT NULL,
	[Identifier] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentProgram]    Script Date: 3/26/2021 5:54:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentProgram](
	[StudentProgramID] [bigint] IDENTITY(1,1) NOT NULL,
	[StudentID] [bigint] NOT NULL,
	[BatchID] [bigint] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[StudentStatusID] [bigint] NOT NULL,
	[OverrideCurriculumID] [bigint] NULL,
	[MinorCurriculumID] [bigint] NULL,
 CONSTRAINT [PK_StudentProgram] PRIMARY KEY CLUSTERED 
(
	[StudentProgramID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentStatus]    Script Date: 3/26/2021 5:54:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentStatus](
	[StudentStatusID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StudentStatus] PRIMARY KEY CLUSTERED 
(
	[StudentStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Batch] ON 
GO
INSERT [dbo].[Batch] ([BatchID], [ShortName], [Name], [AdmissionYear], [GraduationYear], [OrgUnitID], [CurriculumID]) VALUES (1, N'BS-2021', N'BS(CS) 2021', 2021, 2024, 4, 2)
GO
SET IDENTITY_INSERT [dbo].[Batch] OFF
GO
SET IDENTITY_INSERT [dbo].[Component] ON 
GO
INSERT [dbo].[Component] ([ComponentID], [ShortName], [Name], [CurriculumID], [TotalCredit], [TotalCourses], [IsLimitCourses], [IsLimitCreditHrs], [ComponentTypeID]) VALUES (1, N'CORE', N'CS Core', 2, 30, 0, 0, 1, 2)
GO
INSERT [dbo].[Component] ([ComponentID], [ShortName], [Name], [CurriculumID], [TotalCredit], [TotalCourses], [IsLimitCourses], [IsLimitCreditHrs], [ComponentTypeID]) VALUES (2, N'SUPP', N'CS Supporting', 2, 9, 0, 0, 1, 4)
GO
INSERT [dbo].[Component] ([ComponentID], [ShortName], [Name], [CurriculumID], [TotalCredit], [TotalCourses], [IsLimitCourses], [IsLimitCreditHrs], [ComponentTypeID]) VALUES (3, N'ELECTIVE', N'CS Elective', 2, 18, 0, 0, 1, 1)
GO
INSERT [dbo].[Component] ([ComponentID], [ShortName], [Name], [CurriculumID], [TotalCredit], [TotalCourses], [IsLimitCourses], [IsLimitCreditHrs], [ComponentTypeID]) VALUES (4, N'UNIELE', N'University Elective', 2, 15, 0, 0, 1, 3)
GO
SET IDENTITY_INSERT [dbo].[Component] OFF
GO
SET IDENTITY_INSERT [dbo].[ComponentCourse] ON 
GO
INSERT [dbo].[ComponentCourse] ([ComponentCourseID], [ComponentID], [CourseID]) VALUES (1, 1, 1)
GO
INSERT [dbo].[ComponentCourse] ([ComponentCourseID], [ComponentID], [CourseID]) VALUES (2, 1, 2)
GO
INSERT [dbo].[ComponentCourse] ([ComponentCourseID], [ComponentID], [CourseID]) VALUES (3, 2, 2)
GO
INSERT [dbo].[ComponentCourse] ([ComponentCourseID], [ComponentID], [CourseID]) VALUES (4, 2, 3)
GO
SET IDENTITY_INSERT [dbo].[ComponentCourse] OFF
GO
SET IDENTITY_INSERT [dbo].[ComponentType] ON 
GO
INSERT [dbo].[ComponentType] ([ComponentTypeID], [Name], [IsRequired]) VALUES (1, N'Elective', 1)
GO
INSERT [dbo].[ComponentType] ([ComponentTypeID], [Name], [IsRequired]) VALUES (2, N'Core', 1)
GO
INSERT [dbo].[ComponentType] ([ComponentTypeID], [Name], [IsRequired]) VALUES (3, N'University Elective', 1)
GO
INSERT [dbo].[ComponentType] ([ComponentTypeID], [Name], [IsRequired]) VALUES (4, N'Supporting', 1)
GO
SET IDENTITY_INSERT [dbo].[ComponentType] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 
GO
INSERT [dbo].[Course] ([CourseID], [OwnerID], [ShortName], [Name], [TheoryCredit], [LabCredit], [Code], [CourseTypeID]) VALUES (1, 2, N'DSA', N'Data Structures and Algorithms', 3, 1, N'CS211', 4)
GO
INSERT [dbo].[Course] ([CourseID], [OwnerID], [ShortName], [Name], [TheoryCredit], [LabCredit], [Code], [CourseTypeID]) VALUES (2, 2, N'CLOUD', N'Cloud Computing', 3, 0, N'CS351', 4)
GO
INSERT [dbo].[Course] ([CourseID], [OwnerID], [ShortName], [Name], [TheoryCredit], [LabCredit], [Code], [CourseTypeID]) VALUES (3, 4, N'DLD', N'Digital Logic and Design', 3, 1, N'CS121', 1)
GO
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseType] ON 
GO
INSERT [dbo].[CourseType] ([CourseTypeID], [Name]) VALUES (1, N'Quantitative')
GO
INSERT [dbo].[CourseType] ([CourseTypeID], [Name]) VALUES (2, N'Qualitative')
GO
INSERT [dbo].[CourseType] ([CourseTypeID], [Name]) VALUES (3, N'Linguastic')
GO
INSERT [dbo].[CourseType] ([CourseTypeID], [Name]) VALUES (4, N'Programming')
GO
SET IDENTITY_INSERT [dbo].[CourseType] OFF
GO
SET IDENTITY_INSERT [dbo].[Curriculum] ON 
GO
INSERT [dbo].[Curriculum] ([CurriculumID], [ShortName], [Name], [OwnerUnitID], [TotalCourses], [TotalCreditHrs], [IsLimitCreditHrs], [IsLimitCourses], [CurriculumTypeID]) VALUES (2, N'BS(CS)-21', N'BS (Computer Science)', 2, 0, 130, 1, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Curriculum] OFF
GO
SET IDENTITY_INSERT [dbo].[CurriculumType] ON 
GO
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (1, N'Updated Major')
GO
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (2, N'Minor')
GO
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (3, N'Minor Major')
GO
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (4, N'new')
GO
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (5, N'new 2')
GO
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (6, N'NewType')
GO
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (7, N'NewType')
GO
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (8, N'NewType')
GO
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (9, N'NewType')
GO
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (10, N'string')
GO
SET IDENTITY_INSERT [dbo].[CurriculumType] OFF
GO
SET IDENTITY_INSERT [dbo].[OrgUnit] ON 
GO
INSERT [dbo].[OrgUnit] ([OrgUnitID], [OrgUnitTypeID], [Name], [ShortName], [ParentUnitID], [IsAllowAdmission]) VALUES (1, 1, N'Usman Institute of Technology', N'UIT', NULL, 0)
GO
INSERT [dbo].[OrgUnit] ([OrgUnitID], [OrgUnitTypeID], [Name], [ShortName], [ParentUnitID], [IsAllowAdmission]) VALUES (2, 4, N'Computer Science', N'CS', 1, 0)
GO
INSERT [dbo].[OrgUnit] ([OrgUnitID], [OrgUnitTypeID], [Name], [ShortName], [ParentUnitID], [IsAllowAdmission]) VALUES (4, 4, N'Electrical Engineering', N'EL', 1, 0)
GO
INSERT [dbo].[OrgUnit] ([OrgUnitID], [OrgUnitTypeID], [Name], [ShortName], [ParentUnitID], [IsAllowAdmission]) VALUES (5, 5, N'Bachelor of Computer Science in CS', N'BS(CS)', 2, 0)
GO
INSERT [dbo].[OrgUnit] ([OrgUnitID], [OrgUnitTypeID], [Name], [ShortName], [ParentUnitID], [IsAllowAdmission]) VALUES (6, 5, N'Bachelor of Computer Science in SE', N'BS(SE)', 2, 0)
GO
INSERT [dbo].[OrgUnit] ([OrgUnitID], [OrgUnitTypeID], [Name], [ShortName], [ParentUnitID], [IsAllowAdmission]) VALUES (7, 5, N'Bachelor of Electrical Engineering in Electronics', N'BE(EE)', 4, 0)
GO
INSERT [dbo].[OrgUnit] ([OrgUnitID], [OrgUnitTypeID], [Name], [ShortName], [ParentUnitID], [IsAllowAdmission]) VALUES (14, 5, N'Bachelor of Electrical Engineering in Computer', N'BS(CSE)', 4, 0)
GO
SET IDENTITY_INSERT [dbo].[OrgUnit] OFF
GO
SET IDENTITY_INSERT [dbo].[OrgUnitType] ON 
GO
INSERT [dbo].[OrgUnitType] ([OrgUnitTypeID], [ShortName], [Name]) VALUES (1, N'UNI', N'University')
GO
INSERT [dbo].[OrgUnitType] ([OrgUnitTypeID], [ShortName], [Name]) VALUES (2, N'CAMP', N'Campus')
GO
INSERT [dbo].[OrgUnitType] ([OrgUnitTypeID], [ShortName], [Name]) VALUES (3, N'SCH', N'School')
GO
INSERT [dbo].[OrgUnitType] ([OrgUnitTypeID], [ShortName], [Name]) VALUES (4, N'DEPT', N'Department')
GO
INSERT [dbo].[OrgUnitType] ([OrgUnitTypeID], [ShortName], [Name]) VALUES (5, N'PRG', N'Program')
GO
SET IDENTITY_INSERT [dbo].[OrgUnitType] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 
GO
INSERT [dbo].[Student] ([StudentID], [Identifier], [Name], [LastName]) VALUES (1, N'03A-017-BS', N'Qasim', N'Pasta')
GO
INSERT [dbo].[Student] ([StudentID], [Identifier], [Name], [LastName]) VALUES (2, N'17B-011-CS', N'Maaz', N'Khan')
GO
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentProgram] ON 
GO
INSERT [dbo].[StudentProgram] ([StudentProgramID], [StudentID], [BatchID], [StartDate], [EndDate], [StudentStatusID], [OverrideCurriculumID], [MinorCurriculumID]) VALUES (1, 2, 1, CAST(N'2021-01-01' AS Date), NULL, 1, 2, NULL)
GO
SET IDENTITY_INSERT [dbo].[StudentProgram] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentStatus] ON 
GO
INSERT [dbo].[StudentStatus] ([StudentStatusID], [Name]) VALUES (1, N'Active')
GO
INSERT [dbo].[StudentStatus] ([StudentStatusID], [Name]) VALUES (2, N'InActive')
GO
INSERT [dbo].[StudentStatus] ([StudentStatusID], [Name]) VALUES (3, N'Quit')
GO
INSERT [dbo].[StudentStatus] ([StudentStatusID], [Name]) VALUES (4, N'PassedOut')
GO
INSERT [dbo].[StudentStatus] ([StudentStatusID], [Name]) VALUES (5, N'Alumni')
GO
SET IDENTITY_INSERT [dbo].[StudentStatus] OFF
GO
/****** Object:  Index [IX_ComponentCourse]    Script Date: 3/26/2021 5:54:11 PM ******/
ALTER TABLE [dbo].[ComponentCourse] ADD  CONSTRAINT [IX_ComponentCourse] UNIQUE NONCLUSTERED 
(
	[ComponentID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Code_Unique_Course]    Script Date: 3/26/2021 5:54:11 PM ******/
ALTER TABLE [dbo].[Course] ADD  CONSTRAINT [Code_Unique_Course] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ShortName_Unique_OrgUnit]    Script Date: 3/26/2021 5:54:11 PM ******/
ALTER TABLE [dbo].[OrgUnit] ADD  CONSTRAINT [ShortName_Unique_OrgUnit] UNIQUE NONCLUSTERED 
(
	[ShortName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ShortName_OrgUnitType_OrgUnitType]    Script Date: 3/26/2021 5:54:11 PM ******/
ALTER TABLE [dbo].[OrgUnitType] ADD  CONSTRAINT [ShortName_OrgUnitType_OrgUnitType] UNIQUE NONCLUSTERED 
(
	[ShortName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Unique_Identifier_Student]    Script Date: 3/26/2021 5:54:11 PM ******/
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [Unique_Identifier_Student] UNIQUE NONCLUSTERED 
(
	[Identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Component] ADD  CONSTRAINT [DF_Component_TotalCredit]  DEFAULT ((0)) FOR [TotalCredit]
GO
ALTER TABLE [dbo].[Component] ADD  CONSTRAINT [DF_Component_TotalCourses]  DEFAULT ((0)) FOR [TotalCourses]
GO
ALTER TABLE [dbo].[ComponentType] ADD  CONSTRAINT [DF_ComponentType_IsRequired]  DEFAULT ((0)) FOR [IsRequired]
GO
ALTER TABLE [dbo].[Course] ADD  CONSTRAINT [DF_Course_TheoryCredit]  DEFAULT ((0)) FOR [TheoryCredit]
GO
ALTER TABLE [dbo].[Course] ADD  CONSTRAINT [DF_Course_LabCredit]  DEFAULT ((0)) FOR [LabCredit]
GO
ALTER TABLE [dbo].[Curriculum] ADD  CONSTRAINT [DF_Curriculum_TotalCourses]  DEFAULT ((0)) FOR [TotalCourses]
GO
ALTER TABLE [dbo].[Curriculum] ADD  CONSTRAINT [DF_Curriculum_TotalCreditHrs]  DEFAULT ((0)) FOR [TotalCreditHrs]
GO
ALTER TABLE [dbo].[OrgUnit] ADD  CONSTRAINT [DF_OrgUnit_IsAdmssion]  DEFAULT ((0)) FOR [IsAllowAdmission]
GO
ALTER TABLE [dbo].[Batch]  WITH CHECK ADD  CONSTRAINT [FK_Batch_Curriculum] FOREIGN KEY([CurriculumID])
REFERENCES [dbo].[Curriculum] ([CurriculumID])
GO
ALTER TABLE [dbo].[Batch] CHECK CONSTRAINT [FK_Batch_Curriculum]
GO
ALTER TABLE [dbo].[Batch]  WITH CHECK ADD  CONSTRAINT [FK_Batch_OrgUnit] FOREIGN KEY([OrgUnitID])
REFERENCES [dbo].[OrgUnit] ([OrgUnitID])
GO
ALTER TABLE [dbo].[Batch] CHECK CONSTRAINT [FK_Batch_OrgUnit]
GO
ALTER TABLE [dbo].[Component]  WITH CHECK ADD  CONSTRAINT [FK_Component_ComponentType] FOREIGN KEY([ComponentTypeID])
REFERENCES [dbo].[ComponentType] ([ComponentTypeID])
GO
ALTER TABLE [dbo].[Component] CHECK CONSTRAINT [FK_Component_ComponentType]
GO
ALTER TABLE [dbo].[Component]  WITH CHECK ADD  CONSTRAINT [FK_Component_Curriculum] FOREIGN KEY([CurriculumID])
REFERENCES [dbo].[Curriculum] ([CurriculumID])
GO
ALTER TABLE [dbo].[Component] CHECK CONSTRAINT [FK_Component_Curriculum]
GO
ALTER TABLE [dbo].[ComponentCourse]  WITH CHECK ADD  CONSTRAINT [FK_ComponentCourse_Component] FOREIGN KEY([ComponentID])
REFERENCES [dbo].[Component] ([ComponentID])
GO
ALTER TABLE [dbo].[ComponentCourse] CHECK CONSTRAINT [FK_ComponentCourse_Component]
GO
ALTER TABLE [dbo].[ComponentCourse]  WITH CHECK ADD  CONSTRAINT [FK_ComponentCourse_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[ComponentCourse] CHECK CONSTRAINT [FK_ComponentCourse_Course]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_CourseType] FOREIGN KEY([CourseTypeID])
REFERENCES [dbo].[CourseType] ([CourseTypeID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_CourseType]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_OrgUnit] FOREIGN KEY([OwnerID])
REFERENCES [dbo].[OrgUnit] ([OrgUnitID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_OrgUnit]
GO
ALTER TABLE [dbo].[Curriculum]  WITH CHECK ADD  CONSTRAINT [FK_Curriculum_CurriculumType] FOREIGN KEY([CurriculumTypeID])
REFERENCES [dbo].[CurriculumType] ([CurriculumTypeID])
GO
ALTER TABLE [dbo].[Curriculum] CHECK CONSTRAINT [FK_Curriculum_CurriculumType]
GO
ALTER TABLE [dbo].[Curriculum]  WITH CHECK ADD  CONSTRAINT [FK_Curriculum_OrgUnit] FOREIGN KEY([OwnerUnitID])
REFERENCES [dbo].[OrgUnit] ([OrgUnitID])
GO
ALTER TABLE [dbo].[Curriculum] CHECK CONSTRAINT [FK_Curriculum_OrgUnit]
GO
ALTER TABLE [dbo].[OrgUnit]  WITH CHECK ADD  CONSTRAINT [FK_OrgUnit_OrgUnit] FOREIGN KEY([ParentUnitID])
REFERENCES [dbo].[OrgUnit] ([OrgUnitID])
GO
ALTER TABLE [dbo].[OrgUnit] CHECK CONSTRAINT [FK_OrgUnit_OrgUnit]
GO
ALTER TABLE [dbo].[OrgUnit]  WITH CHECK ADD  CONSTRAINT [FK_OrgUnit_OrgUnitType] FOREIGN KEY([OrgUnitTypeID])
REFERENCES [dbo].[OrgUnitType] ([OrgUnitTypeID])
GO
ALTER TABLE [dbo].[OrgUnit] CHECK CONSTRAINT [FK_OrgUnit_OrgUnitType]
GO
ALTER TABLE [dbo].[StudentProgram]  WITH CHECK ADD  CONSTRAINT [FK_StudentProgram_Batch] FOREIGN KEY([BatchID])
REFERENCES [dbo].[Batch] ([BatchID])
GO
ALTER TABLE [dbo].[StudentProgram] CHECK CONSTRAINT [FK_StudentProgram_Batch]
GO
ALTER TABLE [dbo].[StudentProgram]  WITH CHECK ADD  CONSTRAINT [FK_StudentProgram_Curriculum] FOREIGN KEY([OverrideCurriculumID])
REFERENCES [dbo].[Curriculum] ([CurriculumID])
GO
ALTER TABLE [dbo].[StudentProgram] CHECK CONSTRAINT [FK_StudentProgram_Curriculum]
GO
ALTER TABLE [dbo].[StudentProgram]  WITH CHECK ADD  CONSTRAINT [FK_StudentProgram_Curriculum1] FOREIGN KEY([MinorCurriculumID])
REFERENCES [dbo].[Curriculum] ([CurriculumID])
GO
ALTER TABLE [dbo].[StudentProgram] CHECK CONSTRAINT [FK_StudentProgram_Curriculum1]
GO
ALTER TABLE [dbo].[StudentProgram]  WITH CHECK ADD  CONSTRAINT [FK_StudentProgram_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[StudentProgram] CHECK CONSTRAINT [FK_StudentProgram_Student]
GO
ALTER TABLE [dbo].[StudentProgram]  WITH CHECK ADD  CONSTRAINT [FK_StudentProgram_StudentStatus] FOREIGN KEY([StudentStatusID])
REFERENCES [dbo].[StudentStatus] ([StudentStatusID])
GO
ALTER TABLE [dbo].[StudentProgram] CHECK CONSTRAINT [FK_StudentProgram_StudentStatus]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteCurriculumType]    Script Date: 3/26/2021 5:54:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteCurriculumType]
	@CurriculumTypeID bigint = 0
AS
	DELETE FROM CurriculumType WHERE CurriculumTypeID = @CurriculumTypeID
GO
/****** Object:  StoredProcedure [dbo].[spFindCurriculumType]    Script Date: 3/26/2021 5:54:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spFindCurriculumType]
	@CurriculumTypeID bigint = 0
AS
	SELECT	TOP 1 * 
	FROM	CurriculumType 
	WHERE	CurriculumTypeID = @CurriculumTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO
/****** Object:  StoredProcedure [dbo].[spGetAllCurriculumType]    Script Date: 3/26/2021 5:54:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetAllCurriculumType]
AS
	SELECT	*
	FROM	CurriculumType
GO
/****** Object:  StoredProcedure [dbo].[spInsertCurriculumType]    Script Date: 3/26/2021 5:54:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertCurriculumType]
	@Name nvarchar(50) = 0
AS
	Insert Into CurriculumType values(@Name)
	Select SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[spUpdateCurriculumType]    Script Date: 3/26/2021 5:54:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateCurriculumType]
	@CurriculumTypeID bigint = 0, 
	@Name nvarchar(50) = 0
AS
	IF NOT EXISTS(SELECT 1 FROM CurriculumType WHERE CurriculumTypeID = @CurriculumTypeID)
		THROW 51000, 'The record does not exist.', 1;  

	UPDATE CurriculumType 
		SET [Name] = @Name
		WHERE CurriculumTypeID = @CurriculumTypeID 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Limit Total numebr of courses (default is False)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Component', @level2type=N'COLUMN',@level2name=N'IsLimitCourses'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Limit Total numebr of credit hours (default is True)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Component', @level2type=N'COLUMN',@level2name=N'IsLimitCreditHrs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether this component is required to be fulfilled in curriculum or not' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ComponentType', @level2type=N'COLUMN',@level2name=N'IsRequired'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Limit Number of Credit hours (default is True)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Curriculum', @level2type=N'COLUMN',@level2name=N'IsLimitCreditHrs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Limit Total numebr of courses (default is False)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Curriculum', @level2type=N'COLUMN',@level2name=N'IsLimitCourses'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RollNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN',@level2name=N'Identifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Override major curriculum' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StudentProgram', @level2type=N'CONSTRAINT',@level2name=N'FK_StudentProgram_Curriculum'
GO
USE [master]
GO
ALTER DATABASE [ParbatDB] SET  READ_WRITE 
GO
