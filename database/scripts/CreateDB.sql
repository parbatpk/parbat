USE [ParbatDB]
GO
/****** Object:  Table [dbo].[Batch]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[Class]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[ClassMapping]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[ClassModule]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[Component]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[ComponentCourse]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[ComponentType]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[Course]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[CourseType]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[Curriculum]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[CurriculumType]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[Faculty]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[Offering]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[OrgUnit]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[OrgUnitType]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[Registeration]    Script Date: 4/9/2021 12:33:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registeration](
	[RegistrationID] [bigint] IDENTITY(1,1) NOT NULL,
	[RegisterDate] [datetime] NOT NULL,
	[StudentID] [bigint] NOT NULL,
	[ClassID] [bigint] NOT NULL,
	[RegisterStatusID] [bigint] NOT NULL,
 CONSTRAINT [PK_Registeration] PRIMARY KEY CLUSTERED 
(
	[RegistrationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegisterStatus]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[Semester]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[StudentGroup]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[StudentProgram]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[StudentStatus]    Script Date: 4/9/2021 12:33:40 PM ******/
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
/****** Object:  Table [dbo].[Term]    Script Date: 4/9/2021 12:33:40 PM ******/
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
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (11, N'NewType')
GO
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (12, N'NewType')
GO
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (13, N'NewType')
GO
INSERT [dbo].[CurriculumType] ([CurriculumTypeID], [Name]) VALUES (14, N'NewType')
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
INSERT [dbo].[Student] ([StudentID], [Identifier], [Name], [LastName], [StudetGroupID]) VALUES (1, N'03A-017-BS', N'Qasim', N'Pasta', NULL)
GO
INSERT [dbo].[Student] ([StudentID], [Identifier], [Name], [LastName], [StudetGroupID]) VALUES (2, N'17B-011-CS', N'Maaz', N'Khan', NULL)
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
/****** Object:  Index [IX_ClassMapping]    Script Date: 4/9/2021 12:33:41 PM ******/
ALTER TABLE [dbo].[ClassMapping] ADD  CONSTRAINT [IX_ClassMapping] UNIQUE NONCLUSTERED 
(
	[ClassID] ASC,
	[OfferingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ComponentCourse]    Script Date: 4/9/2021 12:33:41 PM ******/
ALTER TABLE [dbo].[ComponentCourse] ADD  CONSTRAINT [IX_ComponentCourse] UNIQUE NONCLUSTERED 
(
	[ComponentID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Code_Unique_Course]    Script Date: 4/9/2021 12:33:41 PM ******/
ALTER TABLE [dbo].[Course] ADD  CONSTRAINT [Code_Unique_Course] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Offering]    Script Date: 4/9/2021 12:33:41 PM ******/
ALTER TABLE [dbo].[Offering] ADD  CONSTRAINT [IX_Offering] UNIQUE NONCLUSTERED 
(
	[CousreID] ASC,
	[TermID] ASC,
	[OrgUnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ShortName_Unique_OrgUnit]    Script Date: 4/9/2021 12:33:41 PM ******/
ALTER TABLE [dbo].[OrgUnit] ADD  CONSTRAINT [ShortName_Unique_OrgUnit] UNIQUE NONCLUSTERED 
(
	[ShortName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ShortName_OrgUnitType_OrgUnitType]    Script Date: 4/9/2021 12:33:41 PM ******/
ALTER TABLE [dbo].[OrgUnitType] ADD  CONSTRAINT [ShortName_OrgUnitType_OrgUnitType] UNIQUE NONCLUSTERED 
(
	[ShortName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Registeration]    Script Date: 4/9/2021 12:33:41 PM ******/
ALTER TABLE [dbo].[Registeration] ADD  CONSTRAINT [IX_Registeration] UNIQUE NONCLUSTERED 
(
	[ClassID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Unique_Identifier_Student]    Script Date: 4/9/2021 12:33:41 PM ******/
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [Unique_Identifier_Student] UNIQUE NONCLUSTERED 
(
	[Identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_StudentGroup]    Script Date: 4/9/2021 12:33:41 PM ******/
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
ALTER TABLE [dbo].[Registeration] ADD  CONSTRAINT [DF_Registeration_RegisterDate]  DEFAULT (getdate()) FOR [RegisterDate]
GO
ALTER TABLE [dbo].[Term] ADD  CONSTRAINT [DF_Term_IsActive]  DEFAULT ((0)) FOR [IsActive]
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
ALTER TABLE [dbo].[Registeration]  WITH CHECK ADD  CONSTRAINT [FK_Registeration_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[Registeration] CHECK CONSTRAINT [FK_Registeration_Class]
GO
ALTER TABLE [dbo].[Registeration]  WITH CHECK ADD  CONSTRAINT [FK_Registeration_RegisterStatus] FOREIGN KEY([RegisterStatusID])
REFERENCES [dbo].[RegisterStatus] ([RegisterStatusID])
GO
ALTER TABLE [dbo].[Registeration] CHECK CONSTRAINT [FK_Registeration_RegisterStatus]
GO
ALTER TABLE [dbo].[Registeration]  WITH CHECK ADD  CONSTRAINT [FK_Registeration_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Registeration] CHECK CONSTRAINT [FK_Registeration_Student]
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
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_StudentGroup] FOREIGN KEY([StudetGroupID])
REFERENCES [dbo].[StudentGroup] ([StudentGroupID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_StudentGroup]
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
