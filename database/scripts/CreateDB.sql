IF EXISTS(select 1 from sys.databases where [name]='ParbatDB')
	DROP DATABASE [ParbatDB]
GO
USE [master]
CREATE DATABASE [ParbatDB]
GO

USE [ParbatDB]
GO
/****** Object:  Table [dbo].[AssessmentCategory]    Script Date: 10/19/2021 4:03:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssessmentCategory](
	[AssessmentCategoryID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Weight] [decimal](18, 0) NOT NULL,
	[ClassModuleID] [bigint] NOT NULL,
 CONSTRAINT [PK_AssessmentCategory] PRIMARY KEY CLUSTERED 
(
	[AssessmentCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Batch]    Script Date: 10/19/2021 4:03:53 AM ******/
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
/****** Object:  Table [dbo].[Class]    Script Date: 10/19/2021 4:03:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ClassID] [bigint] IDENTITY(1,1) NOT NULL,
	[ShortName] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Capacity] [int] NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassMapping]    Script Date: 10/19/2021 4:03:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassMapping](
	[ClassMappingID] [bigint] IDENTITY(1,1) NOT NULL,
	[OfferingID] [bigint] NOT NULL,
	[ClassID] [bigint] NOT NULL,
 CONSTRAINT [PK_ClassMapping] PRIMARY KEY CLUSTERED 
(
	[ClassMappingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassModule]    Script Date: 10/19/2021 4:03:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassModule](
	[ClassModuleID] [bigint] IDENTITY(1,1) NOT NULL,
	[ClassID] [bigint] NOT NULL,
	[FacultyID] [bigint] NOT NULL,
	[ShortName] [nvarchar](50) NOT NULL,
	[TheoryCredit] [int] NOT NULL,
	[LabCredit] [int] NOT NULL,
 CONSTRAINT [PK_ClassModule] PRIMARY KEY CLUSTERED 
(
	[ClassModuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Component]    Script Date: 10/19/2021 4:03:53 AM ******/
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
/****** Object:  Table [dbo].[ComponentCourse]    Script Date: 10/19/2021 4:03:53 AM ******/
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
/****** Object:  Table [dbo].[ComponentType]    Script Date: 10/19/2021 4:03:53 AM ******/
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
/****** Object:  Table [dbo].[Course]    Script Date: 10/19/2021 4:03:53 AM ******/
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
/****** Object:  Table [dbo].[CourseType]    Script Date: 10/19/2021 4:03:53 AM ******/
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
/****** Object:  Table [dbo].[Curriculum]    Script Date: 10/19/2021 4:03:53 AM ******/
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
/****** Object:  Table [dbo].[CurriculumType]    Script Date: 10/19/2021 4:03:53 AM ******/
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
/****** Object:  Table [dbo].[Faculty]    Script Date: 10/19/2021 4:03:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty](
	[FacultyID] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](250) NOT NULL,
	[LastName] [nvarchar](250) NULL,
 CONSTRAINT [PK_Faculty] PRIMARY KEY CLUSTERED 
(
	[FacultyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModuleAssessment]    Script Date: 10/19/2021 4:03:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuleAssessment](
	[ModuleAssessmentID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Weight] [decimal](18, 0) NOT NULL,
	[AssessmentCategoryID] [bigint] NOT NULL,
 CONSTRAINT [PK_ModuleAssessment] PRIMARY KEY CLUSTERED 
(
	[ModuleAssessmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModuleAssessmentMark]    Script Date: 10/19/2021 4:03:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuleAssessmentMark](
	[ModuleAssessmentMarkID] [bigint] IDENTITY(1,1) NOT NULL,
	[ObtainMark] [decimal](18, 0) NOT NULL,
	[RegistrationID] [bigint] NOT NULL,
	[ModuleAssessmentID] [bigint] NOT NULL,
 CONSTRAINT [PK_ModuleAssessmentMark] PRIMARY KEY CLUSTERED 
(
	[ModuleAssessmentMarkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offering]    Script Date: 10/19/2021 4:03:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offering](
	[OfferingID] [bigint] IDENTITY(1,1) NOT NULL,
	[CousreID] [bigint] NOT NULL,
	[TermID] [bigint] NOT NULL,
	[OrgUnitID] [bigint] NOT NULL,
	[SemesterID] [bigint] NULL,
 CONSTRAINT [PK_Offering] PRIMARY KEY CLUSTERED 
(
	[OfferingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrgUnit]    Script Date: 10/19/2021 4:03:53 AM ******/
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
/****** Object:  Table [dbo].[OrgUnitType]    Script Date: 10/19/2021 4:03:53 AM ******/
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
/****** Object:  Table [dbo].[RegisterStatus]    Script Date: 10/19/2021 4:03:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegisterStatus](
	[RegisterStatusID] [bigint] IDENTITY(1,1) NOT NULL,
	[ShortName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RegisterStatus] PRIMARY KEY CLUSTERED 
(
	[RegisterStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 10/19/2021 4:03:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[RegistrationID] [bigint] IDENTITY(1,1) NOT NULL,
	[RegisterDate] [datetime] NOT NULL,
	[StudentProgramID] [bigint] NOT NULL,
	[ClassID] [bigint] NOT NULL,
	[RegisterStatusID] [bigint] NOT NULL,
 CONSTRAINT [PK_Registeration] PRIMARY KEY CLUSTERED 
(
	[RegistrationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 10/19/2021 4:03:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semester](
	[SemesterID] [bigint] IDENTITY(1,1) NOT NULL,
	[ShortName] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[StudentGroupID] [bigint] NOT NULL,
	[TermID] [bigint] NOT NULL,
 CONSTRAINT [PK_Semester] PRIMARY KEY CLUSTERED 
(
	[SemesterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 10/19/2021 4:03:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [bigint] IDENTITY(1,1) NOT NULL,
	[Identifier] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[StudetGroupID] [bigint] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentGroup]    Script Date: 10/19/2021 4:03:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentGroup](
	[StudentGroupID] [bigint] IDENTITY(1,1) NOT NULL,
	[ShortName] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_StudentGroup] PRIMARY KEY CLUSTERED 
(
	[StudentGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentProgram]    Script Date: 10/19/2021 4:03:53 AM ******/
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
	[StudentGroupID] [bigint] NULL,
 CONSTRAINT [PK_StudentProgram] PRIMARY KEY CLUSTERED 
(
	[StudentProgramID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentStatus]    Script Date: 10/19/2021 4:03:53 AM ******/
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
/****** Object:  Table [dbo].[Term]    Script Date: 10/19/2021 4:03:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Term](
	[TermID] [bigint] IDENTITY(1,1) NOT NULL,
	[ShortName] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Term] PRIMARY KEY CLUSTERED 
(
	[TermID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Batch] ON 

INSERT [dbo].[Batch] ([BatchID], [ShortName], [Name], [AdmissionYear], [GraduationYear], [OrgUnitID], [CurriculumID]) VALUES (1, N'BS-2021', N'BS(CS) 2021', 2021, 2024, 4, 2)
INSERT [dbo].[Batch] ([BatchID], [ShortName], [Name], [AdmissionYear], [GraduationYear], [OrgUnitID], [CurriculumID]) VALUES (2, N'BSCS', N'Computer Science', 2022, 2026, 4, 2)
SET IDENTITY_INSERT [dbo].[Batch] OFF
GO
SET IDENTITY_INSERT [dbo].[Component] ON 

INSERT [dbo].[Component] ([ComponentID], [ShortName], [Name], [CurriculumID], [TotalCredit], [TotalCourses], [IsLimitCourses], [IsLimitCreditHrs], [ComponentTypeID]) VALUES (1, N'CORE', N'CS Core', 2, 30, 0, 0, 1, 2)
INSERT [dbo].[Component] ([ComponentID], [ShortName], [Name], [CurriculumID], [TotalCredit], [TotalCourses], [IsLimitCourses], [IsLimitCreditHrs], [ComponentTypeID]) VALUES (2, N'SUPP', N'CS Supporting', 2, 9, 0, 0, 1, 4)
INSERT [dbo].[Component] ([ComponentID], [ShortName], [Name], [CurriculumID], [TotalCredit], [TotalCourses], [IsLimitCourses], [IsLimitCreditHrs], [ComponentTypeID]) VALUES (3, N'ELECTIVE', N'CS Elective', 2, 18, 0, 0, 1, 1)
INSERT [dbo].[Component] ([ComponentID], [ShortName], [Name], [CurriculumID], [TotalCredit], [TotalCourses], [IsLimitCourses], [IsLimitCreditHrs], [ComponentTypeID]) VALUES (4, N'UNIELE', N'University Elective', 2, 15, 0, 0, 1, 3)
SET IDENTITY_INSERT [dbo].[Component] OFF
GO
SET IDENTITY_INSERT [dbo].[ComponentCourse] ON 

INSERT [dbo].[ComponentCourse] ([ComponentCourseID], [ComponentID], [CourseID]) VALUES (1, 1, 1)
INSERT [dbo].[ComponentCourse] ([ComponentCourseID], [ComponentID], [CourseID]) VALUES (2, 1, 2)
INSERT [dbo].[ComponentCourse] ([ComponentCourseID], [ComponentID], [CourseID]) VALUES (3, 2, 2)
INSERT [dbo].[ComponentCourse] ([ComponentCourseID], [ComponentID], [CourseID]) VALUES (4, 2, 3)
SET IDENTITY_INSERT [dbo].[ComponentCourse] OFF
GO
SET IDENTITY_INSERT [dbo].[ComponentType] ON 

INSERT [dbo].[ComponentType] ([ComponentTypeID], [Name], [IsRequired]) VALUES (1, N'Elective', 1)
INSERT [dbo].[ComponentType] ([ComponentTypeID], [Name], [IsRequired]) VALUES (2, N'Core', 1)
INSERT [dbo].[ComponentType] ([ComponentTypeID], [Name], [IsRequired]) VALUES (3, N'University Elective', 1)
INSERT [dbo].[ComponentType] ([ComponentTypeID], [Name], [IsRequired]) VALUES (4, N'Supporting', 1)
SET IDENTITY_INSERT [dbo].[ComponentType] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([CourseID], [OwnerID], [ShortName], [Name], [TheoryCredit], [LabCredit], [Code], [CourseTypeID]) VALUES (1, 2, N'DSA', N'Data Structures and Algorithms', 3, 1, N'CS211', 4)
INSERT [dbo].[Course] ([CourseID], [OwnerID], [ShortName], [Name], [TheoryCredit], [LabCredit], [Code], [CourseTypeID]) VALUES (2, 2, N'CLOUD', N'Cloud Computing', 3, 0, N'CS351', 4)
INSERT [dbo].[Course] ([CourseID], [OwnerID], [ShortName], [Name], [TheoryCredit], [LabCredit], [Code], [CourseTypeID]) VALUES (3, 4, N'DLD', N'Digital Logic and Design', 3, 1, N'CS121', 1)
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseType] ON 

INSERT [dbo].[CourseType] ([CourseTypeID], [Name]) VALUES (1, N'Quantitative')
INSERT [dbo].[CourseType] ([CourseTypeID], [Name]) VALUES (2, N'Qualitative')
INSERT [dbo].[CourseType] ([CourseTypeID], [Name]) VALUES (3, N'Linguastic')
INSERT [dbo].[CourseType] ([CourseTypeID], [Name]) VALUES (4, N'Programming')
SET IDENTITY_INSERT [dbo].[CourseType] OFF
GO
SET IDENTITY_INSERT [dbo].[Curriculum] ON 

INSERT [dbo].[Curriculum] ([CurriculumID], [ShortName], [Name], [OwnerUnitID], [TotalCourses], [TotalCreditHrs], [IsLimitCreditHrs], [IsLimitCourses], [CurriculumTypeID]) VALUES (2, N'BS(CS)-21', N'BS (Computer Science)', 2, 0, 130, 1, 0, 1)
SET IDENTITY_INSERT [dbo].[Curriculum] OFF
GO
SET IDENTITY_INSERT [dbo].[CurriculumType] ON 

INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (1, N'Updated Major')
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (2, N'Minor')
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (3, N'Minor Major')
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (4, N'new')
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (5, N'new 2')
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (6, N'NewType')
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (7, N'NewType')
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (8, N'NewType')
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (9, N'NewType')
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (10, N'string')
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (11, N'NewType')
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (12, N'NewType')
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (13, N'NewType')
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (14, N'NewType')
SET IDENTITY_INSERT [dbo].[CurriculumType] OFF
GO
SET IDENTITY_INSERT [dbo].[OrgUnit] ON 

INSERT [dbo].[OrgUnit] ([OrgUnitID], [OrgUnitTypeID], [Name], [ShortName], [ParentUnitID], [IsAllowAdmission]) VALUES (1, 1, N'Usman Institute of Technology', N'UIT', NULL, 0)
INSERT [dbo].[OrgUnit] ([OrgUnitID], [OrgUnitTypeID], [Name], [ShortName], [ParentUnitID], [IsAllowAdmission]) VALUES (2, 4, N'Computer Science', N'CS', 1, 0)
INSERT [dbo].[OrgUnit] ([OrgUnitID], [OrgUnitTypeID], [Name], [ShortName], [ParentUnitID], [IsAllowAdmission]) VALUES (4, 4, N'Electrical Engineering', N'EL', 1, 0)
INSERT [dbo].[OrgUnit] ([OrgUnitID], [OrgUnitTypeID], [Name], [ShortName], [ParentUnitID], [IsAllowAdmission]) VALUES (5, 5, N'Bachelor of Computer Science in CS', N'BS(CS)', 2, 0)
INSERT [dbo].[OrgUnit] ([OrgUnitID], [OrgUnitTypeID], [Name], [ShortName], [ParentUnitID], [IsAllowAdmission]) VALUES (6, 5, N'Bachelor of Computer Science in SE', N'BS(SE)', 2, 0)
INSERT [dbo].[OrgUnit] ([OrgUnitID], [OrgUnitTypeID], [Name], [ShortName], [ParentUnitID], [IsAllowAdmission]) VALUES (7, 5, N'Bachelor of Electrical Engineering in Electronics', N'BE(EE)', 4, 0)
INSERT [dbo].[OrgUnit] ([OrgUnitID], [OrgUnitTypeID], [Name], [ShortName], [ParentUnitID], [IsAllowAdmission]) VALUES (14, 5, N'Bachelor of Electrical Engineering in Computer', N'BS(CSE)', 4, 0)
SET IDENTITY_INSERT [dbo].[OrgUnit] OFF
GO
SET IDENTITY_INSERT [dbo].[OrgUnitType] ON 

INSERT [dbo].[OrgUnitType] ([OrgUnitTypeID], [ShortName], [Name]) VALUES (1, N'UNI', N'University')
INSERT [dbo].[OrgUnitType] ([OrgUnitTypeID], [ShortName], [Name]) VALUES (2, N'CAMP', N'Campus')
INSERT [dbo].[OrgUnitType] ([OrgUnitTypeID], [ShortName], [Name]) VALUES (3, N'SCH', N'School')
INSERT [dbo].[OrgUnitType] ([OrgUnitTypeID], [ShortName], [Name]) VALUES (4, N'DEPT', N'Department')
INSERT [dbo].[OrgUnitType] ([OrgUnitTypeID], [ShortName], [Name]) VALUES (5, N'PRG', N'Program')
SET IDENTITY_INSERT [dbo].[OrgUnitType] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([StudentID], [Identifier], [Name], [LastName], [StudetGroupID]) VALUES (1, N'03A-017-BS', N'Qasim', N'Pasta', NULL)
INSERT [dbo].[Student] ([StudentID], [Identifier], [Name], [LastName], [StudetGroupID]) VALUES (2, N'17B-011-CS', N'Maaz', N'Khan', NULL)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentProgram] ON 

INSERT [dbo].[StudentProgram] ([StudentProgramID], [StudentID], [BatchID], [StartDate], [EndDate], [StudentStatusID], [OverrideCurriculumID], [MinorCurriculumID], [StudentGroupID]) VALUES (1, 2, 1, CAST(N'2021-01-01' AS Date), NULL, 1, 2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[StudentProgram] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentStatus] ON 

INSERT [dbo].[StudentStatus] ([StudentStatusID], [Name]) VALUES (1, N'Active')
INSERT [dbo].[StudentStatus] ([StudentStatusID], [Name]) VALUES (2, N'InActive')
INSERT [dbo].[StudentStatus] ([StudentStatusID], [Name]) VALUES (3, N'Quit')
INSERT [dbo].[StudentStatus] ([StudentStatusID], [Name]) VALUES (4, N'PassedOut')
INSERT [dbo].[StudentStatus] ([StudentStatusID], [Name]) VALUES (5, N'Alumni')
INSERT [dbo].[StudentStatus] ([StudentStatusID], [Name]) VALUES (7, N'Pending')
SET IDENTITY_INSERT [dbo].[StudentStatus] OFF
GO
/****** Object:  Index [IX_ClassMapping]    Script Date: 10/19/2021 4:03:55 AM ******/
ALTER TABLE [dbo].[ClassMapping] ADD  CONSTRAINT [IX_ClassMapping] UNIQUE NONCLUSTERED 
(
	[ClassID] ASC,
	[OfferingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ComponentCourse]    Script Date: 10/19/2021 4:03:55 AM ******/
ALTER TABLE [dbo].[ComponentCourse] ADD  CONSTRAINT [IX_ComponentCourse] UNIQUE NONCLUSTERED 
(
	[ComponentID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Code_Unique_Course]    Script Date: 10/19/2021 4:03:55 AM ******/
ALTER TABLE [dbo].[Course] ADD  CONSTRAINT [Code_Unique_Course] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Offering]    Script Date: 10/19/2021 4:03:55 AM ******/
ALTER TABLE [dbo].[Offering] ADD  CONSTRAINT [IX_Offering] UNIQUE NONCLUSTERED 
(
	[CousreID] ASC,
	[TermID] ASC,
	[OrgUnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ShortName_Unique_OrgUnit]    Script Date: 10/19/2021 4:03:55 AM ******/
ALTER TABLE [dbo].[OrgUnit] ADD  CONSTRAINT [ShortName_Unique_OrgUnit] UNIQUE NONCLUSTERED 
(
	[ShortName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ShortName_OrgUnitType_OrgUnitType]    Script Date: 10/19/2021 4:03:55 AM ******/
ALTER TABLE [dbo].[OrgUnitType] ADD  CONSTRAINT [ShortName_OrgUnitType_OrgUnitType] UNIQUE NONCLUSTERED 
(
	[ShortName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Registeration]    Script Date: 10/19/2021 4:03:55 AM ******/
ALTER TABLE [dbo].[Registration] ADD  CONSTRAINT [IX_Registeration] UNIQUE NONCLUSTERED 
(
	[ClassID] ASC,
	[StudentProgramID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Unique_Identifier_Student]    Script Date: 10/19/2021 4:03:55 AM ******/
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [Unique_Identifier_Student] UNIQUE NONCLUSTERED 
(
	[Identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_StudentGroup]    Script Date: 10/19/2021 4:03:55 AM ******/
ALTER TABLE [dbo].[StudentGroup] ADD  CONSTRAINT [IX_StudentGroup] UNIQUE NONCLUSTERED 
(
	[ShortName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Class] ADD  CONSTRAINT [DF_Class_Capacity]  DEFAULT ((0)) FOR [Capacity]
GO
ALTER TABLE [dbo].[ClassModule] ADD  CONSTRAINT [DF_ClassModule_TheoryCredit]  DEFAULT ((0)) FOR [TheoryCredit]
GO
ALTER TABLE [dbo].[ClassModule] ADD  CONSTRAINT [DF_ClassModule_LabCredit]  DEFAULT ((0)) FOR [LabCredit]
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
ALTER TABLE [dbo].[Registration] ADD  CONSTRAINT [DF_Registeration_RegisterDate]  DEFAULT (getdate()) FOR [RegisterDate]
GO
ALTER TABLE [dbo].[Term] ADD  CONSTRAINT [DF_Term_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AssessmentCategory]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentCategory_ClassModule] FOREIGN KEY([ClassModuleID])
REFERENCES [dbo].[ClassModule] ([ClassModuleID])
GO
ALTER TABLE [dbo].[AssessmentCategory] CHECK CONSTRAINT [FK_AssessmentCategory_ClassModule]
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
ALTER TABLE [dbo].[ClassMapping]  WITH CHECK ADD  CONSTRAINT [FK_ClassMapping_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[ClassMapping] CHECK CONSTRAINT [FK_ClassMapping_Class]
GO
ALTER TABLE [dbo].[ClassMapping]  WITH CHECK ADD  CONSTRAINT [FK_ClassMapping_Offering] FOREIGN KEY([OfferingID])
REFERENCES [dbo].[Offering] ([OfferingID])
GO
ALTER TABLE [dbo].[ClassMapping] CHECK CONSTRAINT [FK_ClassMapping_Offering]
GO
ALTER TABLE [dbo].[ClassModule]  WITH CHECK ADD  CONSTRAINT [FK_ClassModule_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[ClassModule] CHECK CONSTRAINT [FK_ClassModule_Class]
GO
ALTER TABLE [dbo].[ClassModule]  WITH CHECK ADD  CONSTRAINT [FK_ClassModule_Faculty] FOREIGN KEY([FacultyID])
REFERENCES [dbo].[Faculty] ([FacultyID])
GO
ALTER TABLE [dbo].[ClassModule] CHECK CONSTRAINT [FK_ClassModule_Faculty]
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
ALTER TABLE [dbo].[ModuleAssessment]  WITH CHECK ADD  CONSTRAINT [FK_ModuleAssessment_AssessmentCategory] FOREIGN KEY([AssessmentCategoryID])
REFERENCES [dbo].[AssessmentCategory] ([AssessmentCategoryID])
GO
ALTER TABLE [dbo].[ModuleAssessment] CHECK CONSTRAINT [FK_ModuleAssessment_AssessmentCategory]
GO
ALTER TABLE [dbo].[ModuleAssessmentMark]  WITH CHECK ADD  CONSTRAINT [FK_ModuleAssessmentMark_ModuleAssessment] FOREIGN KEY([ModuleAssessmentID])
REFERENCES [dbo].[ModuleAssessment] ([ModuleAssessmentID])
GO
ALTER TABLE [dbo].[ModuleAssessmentMark] CHECK CONSTRAINT [FK_ModuleAssessmentMark_ModuleAssessment]
GO
ALTER TABLE [dbo].[Offering]  WITH CHECK ADD  CONSTRAINT [FK_Offering_Course] FOREIGN KEY([CousreID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[Offering] CHECK CONSTRAINT [FK_Offering_Course]
GO
ALTER TABLE [dbo].[Offering]  WITH CHECK ADD  CONSTRAINT [FK_Offering_OrgUnit] FOREIGN KEY([OrgUnitID])
REFERENCES [dbo].[OrgUnit] ([OrgUnitID])
GO
ALTER TABLE [dbo].[Offering] CHECK CONSTRAINT [FK_Offering_OrgUnit]
GO
ALTER TABLE [dbo].[Offering]  WITH CHECK ADD  CONSTRAINT [FK_Offering_Semester] FOREIGN KEY([SemesterID])
REFERENCES [dbo].[Semester] ([SemesterID])
GO
ALTER TABLE [dbo].[Offering] CHECK CONSTRAINT [FK_Offering_Semester]
GO
ALTER TABLE [dbo].[Offering]  WITH CHECK ADD  CONSTRAINT [FK_Offering_Term] FOREIGN KEY([TermID])
REFERENCES [dbo].[Term] ([TermID])
GO
ALTER TABLE [dbo].[Offering] CHECK CONSTRAINT [FK_Offering_Term]
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
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registeration_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registeration_Class]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registeration_RegisterStatus] FOREIGN KEY([RegisterStatusID])
REFERENCES [dbo].[RegisterStatus] ([RegisterStatusID])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registeration_RegisterStatus]
GO
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_Registeration_StudentProgram] FOREIGN KEY([StudentProgramID])
REFERENCES [dbo].[StudentProgram] ([StudentProgramID])
GO
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_Registeration_StudentProgram]
GO
ALTER TABLE [dbo].[Semester]  WITH CHECK ADD  CONSTRAINT [FK_Semester_StudentGroup] FOREIGN KEY([StudentGroupID])
REFERENCES [dbo].[StudentGroup] ([StudentGroupID])
GO
ALTER TABLE [dbo].[Semester] CHECK CONSTRAINT [FK_Semester_StudentGroup]
GO
ALTER TABLE [dbo].[Semester]  WITH CHECK ADD  CONSTRAINT [FK_Semester_Term] FOREIGN KEY([TermID])
REFERENCES [dbo].[Term] ([TermID])
GO
ALTER TABLE [dbo].[Semester] CHECK CONSTRAINT [FK_Semester_Term]
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
ALTER TABLE [dbo].[StudentProgram]  WITH CHECK ADD  CONSTRAINT [FK_StudentProgram_StudentGroup] FOREIGN KEY([StudentGroupID])
REFERENCES [dbo].[StudentGroup] ([StudentGroupID])
GO
ALTER TABLE [dbo].[StudentProgram] CHECK CONSTRAINT [FK_StudentProgram_StudentGroup]
GO
ALTER TABLE [dbo].[StudentProgram]  WITH CHECK ADD  CONSTRAINT [FK_StudentProgram_StudentStatus] FOREIGN KEY([StudentStatusID])
REFERENCES [dbo].[StudentStatus] ([StudentStatusID])
GO
ALTER TABLE [dbo].[StudentProgram] CHECK CONSTRAINT [FK_StudentProgram_StudentStatus]
GO
/****** Object:  StoredProcedure [dbo].[spComponentTotalCourseCreditHrs]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spComponentTotalCourseCreditHrs]
	@CurriculumID bigint
AS
	SELECT count(ComponentID) as NumberofComponent, sum(TotalCourses) as TotalCourses,sum(TotalCredit) as TotalCredit
	from Component where CurriculumID=@CurriculumID   
GO
/****** Object:  StoredProcedure [dbo].[spDeleteBatch]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteBatch]
	@BatchID bigint
AS
	Delete from Batch
	where BatchID = @BatchID
GO
/****** Object:  StoredProcedure [dbo].[spDeleteClass]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteClass]
	@ClassID bigint
AS
	Delete Class where ClassID=@ClassID
GO
/****** Object:  StoredProcedure [dbo].[spDeleteClassModule]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteClassModule]
	@ClassModuleID bigint
AS
	DELETE	ClassModule 
	WHERE	ClassModuleID = @ClassModuleID
GO
/****** Object:  StoredProcedure [dbo].[spDeleteComponentCourse]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteComponentCourse]
	@ComponentCourseID bigint
AS
	Delete from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
GO
/****** Object:  StoredProcedure [dbo].[spDeleteComponentType]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteComponentType]
	@ComponentTypeID bigint
AS
	Delete From ComponentType where ComponentTypeID=@ComponentTypeID
GO
/****** Object:  StoredProcedure [dbo].[spDeleteCourse]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteCourse]
	@CourseID bigint
AS
	Delete from Course
	where CourseID=@CourseID
GO
/****** Object:  StoredProcedure [dbo].[spDeleteCourseType]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteCourseType]
	@CourseTypeID bigint
AS
	DELETE from CourseType where CourseTypeID=@CourseTypeID
GO
/****** Object:  StoredProcedure [dbo].[spDeleteCurriculum]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteCurriculum]
	@CurriculumID bigint
AS
	Delete from Curriculum where CurriculumID=@CurriculumID
GO
/****** Object:  StoredProcedure [dbo].[spDeleteCurriculumType]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteCurriculumType]
	@CurriculumTypeID bigint = 0
AS
	DELETE FROM CurriculumType WHERE CurriculumTypeID = @CurriculumTypeID
GO
/****** Object:  StoredProcedure [dbo].[spDeleteFaculty]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteFaculty]
	@FacultyID bigint
AS
	DELETE Faculty WHERE FacultyID = @FacultyID
GO
/****** Object:  StoredProcedure [dbo].[spDeleteOrgUnit]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteOrgUnit]
	@OrgUnitID bigint
AS
	Delete from 
	OrgUnit
	where OrgUnitID=@OrgUnitID
GO
/****** Object:  StoredProcedure [dbo].[spDeleteOrgUnitType]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteOrgUnitType]
	@OrgUnitTypeID bigint
AS
	DELETE FROM OrgUnitType where OrgUnitTypeID = @OrgUnitTypeID
GO
/****** Object:  StoredProcedure [dbo].[spDeleteRegisterStatus]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteRegisterStatus]
	@RegisterStatusID bigint
AS
	DELETE RegisterStatus
	WHERE	RegisterStatusID = @RegisterStatusID
GO
/****** Object:  StoredProcedure [dbo].[spDeleteStudent]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteStudent]
	@StudentStatusID bigint 
AS
	DELETE from StudentStatus where StudentStatusID = @StudentStatusID
GO
/****** Object:  StoredProcedure [dbo].[spDeleteStudentGroup]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteStudentGroup]
	@StudentGroupID bigint
AS
	Delete from StudentGroup where StudentGroupID=@StudentGroupID
GO
/****** Object:  StoredProcedure [dbo].[spDeleteTerm]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteTerm]
	@TermID bigint
AS
	Delete from Term where TermID=@TermID
GO
/****** Object:  StoredProcedure [dbo].[spFindBatch]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spFindBatch]
	@BatchID bigint
AS
	SELECT Top 1 * 
	from Batch
	where BatchID = @BatchID
	For json Auto, Without_Array_Wrapper;
GO
/****** Object:  StoredProcedure [dbo].[spFindClass]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spFindClass]
	@ClassID bigint
AS
	SELECT Top 1 *
	from Class
	where ClassID = @ClassID
	For json Auto, Without_Array_Wrapper;
GO
/****** Object:  StoredProcedure [dbo].[spFindClassModule]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spFindClassModule]
	@ClassModuleID bigint
AS
	SELECT Top 1 *
	from ClassModule
	where ClassModuleID = @ClassModuleID
	For json Auto, Without_Array_Wrapper;
GO
/****** Object:  StoredProcedure [dbo].[spFindComponentCourse]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spFindComponentCourse]
	@ComponentCourseID bigint
AS
	SELECT top 1*
	from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
	For json Auto, Without_Array_Wrapper;
GO
/****** Object:  StoredProcedure [dbo].[spFindComponentType]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spFindComponentType]
	@ComponentTypeID bigint
AS
	SELECT Top 1 * 
	from ComponentType
	Where ComponentTypeID=@ComponentTypeID
	For json Auto, Without_Array_Wrapper;
GO
/****** Object:  StoredProcedure [dbo].[spFindCourse]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spFindCourse]
	@CourseID bigint
AS
	SELECT Top 1 *
	from Course
	where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO
/****** Object:  StoredProcedure [dbo].[spFindCourseIDComponentCourse]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spFindCourseIDComponentCourse]
	@CourseID bigint
AS
	SELECT Top 1 * 
	from ComponentCourse where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO
/****** Object:  StoredProcedure [dbo].[spFindCourseType]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spFindCourseType]	
	@CourseTypeID bigint
AS
	SELECT TOP 1 *
	FROM CourseType
	WHERE CourseTypeID = @CourseTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO
/****** Object:  StoredProcedure [dbo].[spFindCurriculum]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spFindCurriculum]
	@CurriculumID bigint
AS
	SELECT Top 1 *
	from Curriculum
	where CurriculumID=@CurriculumID
	For json Auto, Without_Array_Wrapper;
GO
/****** Object:  StoredProcedure [dbo].[spFindCurriculumType]    Script Date: 10/19/2021 4:03:55 AM ******/
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
/****** Object:  StoredProcedure [dbo].[spFindFaculty]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spFindFaculty]
	@FacultyID bigint
AS
	SELECT Top 1 *
	from Faculty
	where FacultyID = @FacultyID
	For json Auto, Without_Array_Wrapper;
GO
/****** Object:  StoredProcedure [dbo].[spFindOrgUnit]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spFindOrgUnit]
	@OrgUnitID bigint 
AS
	Select top 1* 
	From OrgUnit
	where OrgUnitID=@OrgUnitID
	For json Auto, Without_Array_Wrapper;
GO
/****** Object:  StoredProcedure [dbo].[spFindOrgUnitType]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spFindOrgUnitType]
	@OrgUnitTypeID bigint
AS
	SELECT top 1*
	from OrgUnitType 
	where OrgUnitTypeID = @OrgUnitTypeID
	For json Auto, Without_Array_Wrapper;
GO
/****** Object:  StoredProcedure [dbo].[spFindParentOrgUnit]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spFindParentOrgUnit]
	@ParentUnitID bigint
AS
	SELECT * from OrgUnit 
	where ParentUnitID=@ParentUnitID
GO
/****** Object:  StoredProcedure [dbo].[spFindRegisterStatus]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spFindRegisterStatus]
	@RegisterStatusID bigint
AS
	SELECT top 1 *
	from RegisterStatus
	where RegisterStatusID = @RegisterStatusID
	For json Auto, Without_Array_Wrapper;
GO
/****** Object:  StoredProcedure [dbo].[spFindStudent]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spFindStudent]
	@StudentID bigint 
AS
	SELECT Identifier, [Name], lastName from Student where StudentID = @StudentID
GO
/****** Object:  StoredProcedure [dbo].[spFindStudentGroup]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spFindStudentGroup]
	@StudentGroupID bigint
AS
	SELECT TOP 1 *
	FROM StudentGroup
	WHERE StudentGroupID = @StudentGroupID
	FOR JSON AUTO, Without_Array_Wrapper;
GO
/****** Object:  StoredProcedure [dbo].[spFindStudentStatus]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spFindStudentStatus]
	@StudentStatusID bigint
AS
	SELECT [Name] from StudentStatus where StudentStatusID = @StudentStatusID
GO
/****** Object:  StoredProcedure [dbo].[spFindTerm]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spFindTerm]
	@TermID bigint
AS
	SELECT top 1 *
	from Term
	where TermID=@TermID
	For json Auto, Without_Array_Wrapper;
GO
/****** Object:  StoredProcedure [dbo].[spGetAllBatch]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetAllBatch]
AS
	SELECT * from Batch
GO
/****** Object:  StoredProcedure [dbo].[spGetAllClass]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetAllClass]

AS
	SELECT * from Class
GO
/****** Object:  StoredProcedure [dbo].[spGetAllClassModule]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetAllClassModule]
AS
	SELECT	DISTINCT CM.*, F.FirstName, F.LastName, C.ShortName as Class_ShortName, 
			T.TermID, T.ShortName as Term_ShortName
	FROM ClassModule CM 
			Inner Join Faculty F ON CM.FacultyID = F.FacultyID
			Inner Join Class C ON C.ClassID = CM.ClassID
			Inner Join ClassMapping CMP ON C.ClassID = CMP.ClassID
			Inner Join Offering OFR ON OFR.OfferingID = CMP.OfferingID
			Inner Join Term T ON T.TermID = OFR.TermID


GO
/****** Object:  StoredProcedure [dbo].[spGetAllComponentCourse]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetAllComponentCourse]

AS
	SELECT * from ComponentCourse
GO
/****** Object:  StoredProcedure [dbo].[spGETAllComponentType]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGETAllComponentType]
AS
	SELECT * from ComponentType
GO
/****** Object:  StoredProcedure [dbo].[spGetAllCourse]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetAllCourse]
AS
	SELECT *
	From Course
GO
/****** Object:  StoredProcedure [dbo].[spGetAllCourseType]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetAllCourseType]
AS
	SELECT * from  dbo.CourseType 
GO
/****** Object:  StoredProcedure [dbo].[spGetAllCurriculum]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetAllCurriculum]

AS
	SELECT * from Curriculum
GO
/****** Object:  StoredProcedure [dbo].[spGetAllCurriculumType]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetAllCurriculumType]
AS
	SELECT	*
	FROM	CurriculumType
GO
/****** Object:  StoredProcedure [dbo].[spGetAllFaculty]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetAllFaculty]
AS
	SELECT	* FROM Faculty
GO
/****** Object:  StoredProcedure [dbo].[spGetAllOrgUnit]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetAllOrgUnit]

AS
	SELECT * 
	from OrgUnit
GO
/****** Object:  StoredProcedure [dbo].[spGetAllOrgUnitType]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetAllOrgUnitType]	
AS
	SELECT *From OrgUnitType
GO
/****** Object:  StoredProcedure [dbo].[spGetAllRegisterStatus]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetAllRegisterStatus]
AS
	SELECT * FROM RegisterStatus
GO
/****** Object:  StoredProcedure [dbo].[spGetAllStudent]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetAllStudent]
AS
	SELECT *from Student
GO
/****** Object:  StoredProcedure [dbo].[spGetAllStudentGroup]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetAllStudentGroup]

AS
	SELECT * from StudentGroup
GO
/****** Object:  StoredProcedure [dbo].[spGetAllStudentStatus]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetAllStudentStatus]

AS
	SELECT *from StudentStatus
GO
/****** Object:  StoredProcedure [dbo].[spGetAllTerm]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetAllTerm]
AS
	SELECT * from Term
GO
/****** Object:  StoredProcedure [dbo].[spGetComponentSummary]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetComponentSummary]
	@ComponentID bigint
AS
		select CC.ComponentID,  COUNT(c.CourseID) as 'TotalCourses', 
		Sum(c.TheoryCredit+c.LabCredit) as 'TotalCreditHrs' 
from	Course as c Inner join ComponentCourse CC on CC.CourseID = C.CourseID
where	CC.ComponentID = @ComponentID
group by CC.ComponentID
		
GO
/****** Object:  StoredProcedure [dbo].[spGetCourseName]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetCourseName]
	@Name nvarchar(50)
AS
	SELECT * from Course where [Name] =@Name
	For json Auto, Without_Array_Wrapper;
GO
/****** Object:  StoredProcedure [dbo].[spGetCurriculumType]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetCurriculumType]
	@CurriculumTypeID bigint
AS
	SELECT * from Curriculum where CurriculumTypeID=@CurriculumTypeID
GO
/****** Object:  StoredProcedure [dbo].[spGetOwnerUnit]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetOwnerUnit]
	@OwnerUnitID bigint
AS
	SELECT * from Curriculum where OwnerUnitID =@OwnerUnitID
GO
/****** Object:  StoredProcedure [dbo].[spInsertBatch]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertBatch]
	@ShortName nvarchar(10), 
	@Name nvarchar(50),
	@AdmissionYear int,
	@GraduationYear int,
	@OrgUnitID bigint,
	@CurriculumID bigint
AS
	INSERT INTO Batch (ShortName, [Name], AdmissionYear, GraduationYear, OrgUnitID, CurriculumID) values(@ShortName, @Name, @AdmissionYear, @GraduationYear, @OrgUnitID, @CurriculumID)
	SELECT SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[spInsertClass]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertClass]
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Insert into Class (ShortName,[Name],Capacity) values (@ShortName,@Name,@Capacity)
	Select SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[spInsertClassModule]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertClassModule]
	@FacultyID bigint,
	@ShortName nvarchar(50),
	@TheoryCredit int,
	@LabCredit int
AS
	INSERT INTO ClassModule (FacultyID, ShortName, TheoryCredit, LabCredit)
	VALUES 
           (@FacultyID
           ,@ShortName
           ,@TheoryCredit
           ,@LabCredit)

	SELECT SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[spInsertComponentCourse]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertComponentCourse]
	@ComponentID bigint,
	@CourseID bigint
AS
	Insert into ComponentCourse (ComponentID,CourseID) values (@ComponentID,@CourseID)
	select SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[spInsertComponentType]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertComponentType]
	@Name nvarchar(50), 
	@IsRequired bit
AS
	INSERT INTO ComponentType ([Name],IsRequired) values(@Name,@IsRequired)
	SELECT SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[spInsertCourse]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertCourse]
	@OwnerID bigint,
	@ShortName nvarchar(50),
	@Name nvarchar(50),
	@TheoryCredit int,
	@LabCredit int,
	@Code nvarchar(50)=0,
	@CourseTypeID bigint
AS
	INSERT INTO Course (OwnerID,[Name],ShortName,TheoryCredit,LabCredit,Code,CourseTypeID) values(@OwnerID,@Name,@ShortName,@TheoryCredit,@LabCredit,@Code,@CourseTypeID)
	SELECT SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[spInsertCourseType]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertCourseType]
	@Name nvarchar(50)
AS
	INSERT into dbo.CourseType([Name]) values(@Name);
GO
/****** Object:  StoredProcedure [dbo].[spInsertCurriculum]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertCurriculum]
	@ShortName nvarchar(50),
	@Name nvarchar(50),
	@OwnerUnitID bigint,
	@TotalCourses int,
	@TotalCreditHrs int,
	@IsLimitCreditHrs bit,
	@IsLimitCourses bit,
	@CurriculumTypeID bigint

AS
	Insert into Curriculum (ShortName,[Name],OwnerUnitID,TotalCourses,TotalCreditHrs,IsLimitCreditHrs,IsLimitCourses,CurriculumTypeID)
	values (@ShortName,@Name,@OwnerUnitID,@TotalCourses,@TotalCreditHrs,@IsLimitCreditHrs,@IsLimitCourses,@CurriculumTypeID)
	Select SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[spInsertCurriculumType]    Script Date: 10/19/2021 4:03:55 AM ******/
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
/****** Object:  StoredProcedure [dbo].[spInsertFaculty]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertFaculty]
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Insert Into Faculty Values(@FirstName, @LastName)
	SELECT SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[spInsertOrgUnit]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertOrgUnit]
	@OrgUnitTypeID bigint,
	@Name nvarchar(50),
	@ShortName nvarchar(50),
	@ParentUnitID bigint = 0,
	@IsAllowAdmission bit
AS
	Insert Into OrgUnit (OrgUnitTypeID,[Name],ShortName,ParentUnitID,IsAllowAdmission) 
	values(@OrgUnitTypeID,@Name,@ShortName,@ParentUnitID,@IsAllowAdmission)
	Select SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[spInsertRegisterStatus]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertRegisterStatus]
	@ShortName nvarchar(50)
AS
	INSERT INTO RegisterStatus VALUES(@ShortName)
	SELECT SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[spInsertStudent]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertStudent]
	@Identifier nvarchar(50), 
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	Insert into Student (Identifier, [Name], LastName) values(@Identifier, @FirstName, @LastName)
GO
/****** Object:  StoredProcedure [dbo].[spInsertStudentGroup]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertStudentGroup]
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@IsActive	bit = 0

AS
	Insert into StudentGroup
	(ShortName,[Name],IsActive) 
	values (@ShortName,@Name,@IsActive)
	Select SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[spInsertStudentStatus]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertStudentStatus]
	@Name nvarchar(50)
AS
	INSERT into StudentStatus([Name]) values(@Name)
GO
/****** Object:  StoredProcedure [dbo].[spInsertTerm]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertTerm]
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@StartDate	date = '0',
	@EndDate	date = '0',
	@IsActive	bit

AS
	Insert into Term 
	(ShortName,[Name],StartDate,EndDate,IsActive) 
	values (@ShortName,@Name,@StartDate,@EndDate,@IsActive)
GO
/****** Object:  StoredProcedure [dbo].[spUpdateBatch]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateBatch]
	@BatchID bigint,
	@ShortName nvarchar(10),
	@Name nvarchar(50),
	@AdmissionYear int,
	@GraduationYear int,
	@OrgUnitID bigint,
	@CurriculumID bigint
AS
	UPDATE Batch
	SET ShortName=@ShortName, [Name]=@Name, AdmissionYear=@AdmissionYear, GraduationYear=@GraduationYear, OrgUnitID=@OrgUnitID, CurriculumID=@CurriculumID
	WHERE BatchID=@BatchID
GO
/****** Object:  StoredProcedure [dbo].[spUpdateClass]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateClass]
	@ClassID	bigint,
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Update Class 
	set	ShortName=@ShortName,[Name]=@Name,Capacity=@Capacity
	where ClassID=@ClassID
GO
/****** Object:  StoredProcedure [dbo].[spUpdateClassModule]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateClassModule]
	@ClassModuleID bigint,
	@FacultyID bigint,
	@ShortName nvarchar(50),
	@TheoryCredit int,
	@LabCredit int
AS
	UPDATE ClassModule 
	SET		FacultyID = @FacultyID,
            ShortName = @ShortName,
           TheoryCredit =  @TheoryCredit,
           LabCredit = @LabCredit
	WHERE	ClassModuleID = @ClassModuleID
GO
/****** Object:  StoredProcedure [dbo].[spUpdateComponentCourse]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateComponentCourse]
	@ComponentCourseID bigint,
	@ComponentID bigint,
	@CourseID bigint
AS
	Update ComponentCourse
	set ComponentID=@ComponentID,CourseID=@CourseID
	where ComponentCourseID=@ComponentCourseID
GO
/****** Object:  StoredProcedure [dbo].[spUpdateComponentType]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateComponentType]
	@ComponentTypeID bigint,
	@Name nvarchar(50),
	@IsRequired bit
AS
	Update ComponentType
	set [Name]=@Name,IsRequired=@IsRequired
	where @ComponentTypeID=ComponentTypeID
GO
/****** Object:  StoredProcedure [dbo].[spUpdateCourse]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateCourse]
	@CourseID bigint,
	@OwnerID bigint,
	@ShortName nvarchar(50),
	@Name nvarchar(50),
	@TheoryCredit int,
	@LabCredit int,
	@Code nvarchar(50)=0,
	@CourseTypeID bigint
AS
		Update Course
		SET OwnerID=@OwnerID,ShortName=@ShortName,[Name]=@Name,TheoryCredit=@TheoryCredit,LabCredit=@LabCredit,Code=@Code,CourseTypeID=@CourseTypeID
		where CourseID=@CourseID
GO
/****** Object:  StoredProcedure [dbo].[spUpdateCourseType]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateCourseType]
	@CourseTypeID bigint,
	@Name nvarchar(50)
AS
	UPDATE CourseType
	set [Name] = @Name
	where [CourseTypeID] = @CourseTypeID
GO
/****** Object:  StoredProcedure [dbo].[spUpdateCurriculum]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateCurriculum]
	@CurriculumID bigint,
	@ShortName nvarchar(50),
	@Name nvarchar(50),
	@OwnerUnitID bigint,
	@TotalCourses int,
	@TotalCreditHrs int,
	@IsLimitCreditHrs bit,
	@IsLimitCourses bit,
	@CurriculumTypeID bigint

AS
	Update Curriculum
	set ShortName=@ShortName,[Name]=@Name,OwnerUnitID=@OwnerUnitID,TotalCourses=@TotalCourses,TotalCreditHrs=@TotalCreditHrs,
	IsLimitCreditHrs=@IsLimitCreditHrs,IsLimitCourses=@IsLimitCourses,CurriculumTypeID=@CurriculumTypeID
	where CurriculumID=@CurriculumID
GO
/****** Object:  StoredProcedure [dbo].[spUpdateCurriculumType]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateCurriculumType]
	@CurriculumTypeID bigint = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE CurriculumType 
		SET [Name] = @Name
		WHERE CurriculumTypeID = @CurriculumTypeID 
GO
/****** Object:  StoredProcedure [dbo].[spUpdateFaculty]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateFaculty]
	@FacultyID bigint, 
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Update	Faculty 
	SET		FirstName = @FirstName,
			LastName = @LastName
	WHERE	FacultyID = @FacultyID
GO
/****** Object:  StoredProcedure [dbo].[spUpdateOrgUnit]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateOrgUnit]
	@OrgUnitID bigint,
	@OrgUnitTypeId bigint,
	@Name nvarchar(50),
	@ShortName nvarchar(50),
	@ParentUnitID bigint = 0,
	@IsAllowAdmission bit
AS
	Update OrgUnit
	set [Name] = @Name, OrgUnitTypeId=@OrgUnitTypeId, ShortName = @ShortName, ParentUnitID=@ParentUnitID, IsAllowAdmission=@IsAllowAdmission
	where OrgUnitID =@OrgUnitID
GO
/****** Object:  StoredProcedure [dbo].[spUpdateOrgUnitType]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateOrgUnitType]
	@OrgUnitTypeID bigint,
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE OrgUnitType SET ShortName = @ShortName, [Name] = @Name where OrgUnitTypeID = @OrgUnitTypeID
GO
/****** Object:  StoredProcedure [dbo].[spUpdateRegisterStatus]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateRegisterStatus]
	@RegisterStatusID bigint,
	@ShortName nvarchar(50)
AS
	Update	RegisterStatus
	SET		ShortName = @ShortName
	WHERE	RegisterStatusID = @RegisterStatusID
GO
/****** Object:  StoredProcedure [dbo].[spUpdateStudent]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateStudent]
	@StudentID bigint, 
	@Identifier nvarchar(50),
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	UPDATE Student SET Identifier = @Identifier, [Name] = @FirstName, LastName = @LastName
	where StudentID = @StudentID
GO
/****** Object:  StoredProcedure [dbo].[spUpdateStudentGroup]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateStudentGroup]
	@StudentGroupID bigint,
	@ShortName		nvarchar(50),
	@Name			nvarchar(250),
	@IsActive		bit = 0

AS
	Update StudentGroup
	set ShortName=@ShortName,[Name]=@Name,IsActive=@IsActive
	where StudentGroupID=@StudentGroupID
GO
/****** Object:  StoredProcedure [dbo].[spUpdateStudentStatus]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateStudentStatus]
	@StudentStatusID bigint,
	@Name nvarchar(50)
AS
	UPDATE StudentStatus SET [Name] = @Name where StudentStatusID = @StudentStatusID; 
GO
/****** Object:  StoredProcedure [dbo].[spUpdateTerm]    Script Date: 10/19/2021 4:03:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpdateTerm]
	@TermID		bigint,
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@StartDate	date ='0',
	@EndDate	date='0',
	@IsActive	bit

AS
	Update Term 
	set ShortName=@ShortName,[Name]=@Name,StartDate=@StartDate,EndDate=@EndDate,IsActive=@IsActive
	where TermID=@TermID
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
