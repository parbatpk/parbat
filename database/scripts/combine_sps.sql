-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spComponentTotalCourseCreditHrs' 
)
   DROP PROCEDURE dbo.spComponentTotalCourseCreditHrs
GO

CREATE PROCEDURE dbo.spComponentTotalCourseCreditHrs
	@CurriculumID bigint
AS
	SELECT count(ComponentID) as NumberofComponent, sum(TotalCourses) as TotalCourses,sum(TotalCredit) as TotalCredit
	from Component where CurriculumID=@CurriculumID   
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spTotalCreditCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClass' 
)
   DROP PROCEDURE dbo.spDeleteClass
GO

CREATE PROCEDURE dbo.spDeleteClass
	@ClassID bigint
AS
	Delete Class where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClassModule' 
)
   DROP PROCEDURE dbo.spDeleteClassModule
GO

CREATE PROCEDURE dbo.spDeleteClassModule
	@ClassModuleID bigint
AS
	DELETE	ClassModule 
	WHERE	ClassModuleID = @ClassModuleID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentCourse' 
)
   DROP PROCEDURE dbo.spDeleteComponentCourse
GO

CREATE PROCEDURE dbo.spDeleteComponentCourse
	@ComponentCourseID bigint
AS
	Delete from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentType' 
)
   DROP PROCEDURE dbo.spDeleteComponentType
GO

CREATE PROCEDURE dbo.spDeleteComponentType
	@ComponentTypeID bigint
AS
	Delete From ComponentType where ComponentTypeID=@ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourse' 
)
   DROP PROCEDURE dbo.spDeleteCourse
GO

CREATE PROCEDURE dbo.spDeleteCourse
	@CourseID bigint
AS
	Delete from Course
	where CourseID=@CourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourseType' 
)
   DROP PROCEDURE dbo.spDeleteCourseType
GO

CREATE PROCEDURE dbo.spDeleteCourseType
	@CourseTypeID bigint
AS
	DELETE from CourseType where CourseTypeID=@CourseTypeID
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculum' 
)
   DROP PROCEDURE dbo.spDeleteCurriculum
GO

CREATE PROCEDURE dbo.spDeleteCurriculum
	@CurriculumID bigint
AS
	Delete from Curriculum where CurriculumID=@CurriculumID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculumType' 
)
   DROP PROCEDURE dbo.spDeleteCurriculumType
GO

CREATE PROCEDURE dbo.spDeleteCurriculumType
	@CurriculumTypeID bigint = 0
AS
	DELETE FROM CurriculumType WHERE CurriculumTypeID = @CurriculumTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteFaculty' 
)
   DROP PROCEDURE dbo.spDeleteFaculty
GO

CREATE PROCEDURE dbo.spDeleteFaculty
	@FacultyID bigint
AS
	DELETE Faculty WHERE FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnit' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnit
GO

CREATE PROCEDURE dbo.spDeleteOrgUnit
	@OrgUnitID bigint
AS
	Delete from 
	OrgUnit
	where OrgUnitID=@OrgUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnitType' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnitType
GO

CREATE PROCEDURE dbo.spDeleteOrgUnitType
	@OrgUnitTypeID bigint
AS
	DELETE FROM OrgUnitType where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteOrgUnitType 8
GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteRegisterStatus' 
)
   DROP PROCEDURE dbo.spDeleteRegisterStatus
GO

CREATE PROCEDURE dbo.spDeleteRegisterStatus
	@RegisterStatusID bigint
AS
	DELETE RegisterStatus
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudent' 
)
   DROP PROCEDURE dbo.spDeleteStudent
GO

CREATE PROCEDURE dbo.spDeleteStudent
	@StudentID bigint
AS
	DELETE from Student where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteStudent 3
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentGroup' 
)
   DROP PROCEDURE dbo.spDeleteStudentGroup
GO

CREATE PROCEDURE dbo.spDeleteStudentGroup
	@StudentGroupID bigint
AS
	Delete from StudentGroup where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudent' 
)
   DROP PROCEDURE dbo.spDeleteStudent
GO

CREATE PROCEDURE dbo.spDeleteStudent
	@StudentStatusID bigint 
AS
	DELETE from StudentStatus where StudentStatusID = @StudentStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteStudent 6
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteTerm' 
)
   DROP PROCEDURE dbo.spDeleteTerm
GO

CREATE PROCEDURE dbo.spDeleteTerm
	@TermID bigint
AS
	Delete from Term where TermID=@TermID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClass' 
)
   DROP PROCEDURE dbo.spFindClass
GO

CREATE PROCEDURE dbo.spFindClass
	@ClassID bigint
AS
	SELECT Top 1 *
	from Class
	where ClassID = @ClassID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClassModule' 
)
   DROP PROCEDURE dbo.spFindClassModule
GO

CREATE PROCEDURE dbo.spFindClassModule
	@ClassModuleID bigint
AS
	SELECT Top 1 *
	from ClassModule
	where ClassModuleID = @ClassModuleID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentCourse' 
)
   DROP PROCEDURE dbo.spFindComponentCourse
GO

CREATE PROCEDURE dbo.spFindComponentCourse
	@ComponentCourseID bigint
AS
	SELECT top 1*
	from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentType' 
)
   DROP PROCEDURE dbo.spFindComponentType
GO

CREATE PROCEDURE dbo.spFindComponentType
	@ComponentTypeID bigint
AS
	SELECT Top 1 * 
	from ComponentType
	Where ComponentTypeID=@ComponentTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourse' 
)
   DROP PROCEDURE dbo.spFindCourse
GO

CREATE PROCEDURE dbo.spFindCourse
	@CourseID bigint
AS
	SELECT Top 1 *
	from Course
	where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseIDComponentCourse' 
)
   DROP PROCEDURE dbo.spFindCourseIDComponentCourse
GO

CREATE PROCEDURE dbo.spFindCourseIDComponentCourse
	@CourseID bigint
AS
	SELECT Top 1 * 
	from ComponentCourse where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourseIDComponentCourse 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseType' 
)
   DROP PROCEDURE dbo.spFindCourseType
GO

CREATE PROCEDURE dbo.spFindCourseType	
	@CourseTypeID bigint
AS
	SELECT TOP 1 *
	FROM CourseType
	WHERE CourseTypeID = @CourseTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculum' 
)
   DROP PROCEDURE dbo.spFindCurriculum
GO

CREATE PROCEDURE dbo.spFindCurriculum
	@CurriculumID bigint
AS
	SELECT Top 1 *
	from Curriculum
	where CurriculumID=@CurriculumID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apFindCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculumType' 
)
   DROP PROCEDURE dbo.spFindCurriculumType
GO

CREATE PROCEDURE dbo.spFindCurriculumType
	@CurriculumTypeID bigint = 0
AS
	SELECT	TOP 1 * 
	FROM	CurriculumType 
	WHERE	CurriculumTypeID = @CurriculumTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCurriculumType 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindFaculty' 
)
   DROP PROCEDURE dbo.spFindFaculty
GO

CREATE PROCEDURE dbo.spFindFaculty
	@FacultyID bigint
AS
	SELECT Top 1 *
	from Faculty
	where FacultyID = @FacultyID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClasModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnit' 
)
   DROP PROCEDURE dbo.spFindOrgUnit
GO

CREATE PROCEDURE dbo.spFindOrgUnit
	@OrgUnitID bigint 
AS
	Select top 1* 
	From OrgUnit
	where OrgUnitID=@OrgUnitID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnitType' 
)
   DROP PROCEDURE dbo.spFindOrgUnitType
GO

CREATE PROCEDURE dbo.spFindOrgUnitType
	@OrgUnitTypeID bigint
AS
	SELECT top 1*
	from OrgUnitType 
	where OrgUnitTypeID = @OrgUnitTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================

-- EXECUTE dbo.spFindOrgUnitType 1
-- GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindParentOrgUnit' 
)
   DROP PROCEDURE dbo.spFindParentOrgUnit
GO

CREATE PROCEDURE dbo.spFindParentOrgUnit
	@ParentUnitID bigint
AS
	SELECT * from OrgUnit 
	where ParentUnitID=@ParentUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindParentOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindRegisterStatus' 
)
   DROP PROCEDURE dbo.spFindRegisterStatus
GO

CREATE PROCEDURE dbo.spFindRegisterStatus
	@RegisterStatusID bigint
AS
	SELECT top 1 *
	from RegisterStatus
	where RegisterStatusID = @RegisterStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudent' 
)
   DROP PROCEDURE dbo.spFindStudent
GO

CREATE PROCEDURE dbo.spFindStudent
	@StudentID bigint 
AS
	SELECT Identifier, [Name], lastName from Student where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spFindStudent 1
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentGroup' 
)
   DROP PROCEDURE dbo.spFindStudentGroup
GO

CREATE PROCEDURE dbo.spFindStudentGroup
	@StudentGroupID bigint
AS
	SELECT TOP 1 *
	FROM StudentGroup
	WHERE StudentGroupID = @StudentGroupID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentStatus' 
)
   DROP PROCEDURE dbo.spFindStudentStatus
GO

CREATE PROCEDURE dbo.spFindStudentStatus
	@StudentStatusID bigint
AS
	SELECT [Name] from StudentStatus where StudentStatusID = @StudentStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spFindStudentStatus 5
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindTerm' 
)
   DROP PROCEDURE dbo.spFindTerm
GO

CREATE PROCEDURE dbo.spFindTerm
	@TermID bigint
AS
	SELECT top 1 *
	from Term
	where TermID=@TermID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClass' 
)
   DROP PROCEDURE dbo.spGetAllClass
GO

CREATE PROCEDURE dbo.spGetAllClass

AS
	SELECT * from Class
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClassModule' 
)
   DROP PROCEDURE dbo.spGetAllClassModule
GO

CREATE PROCEDURE dbo.spGetAllClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponentCourse' 
)
   DROP PROCEDURE dbo.spGetAllComponentCourse
GO

CREATE PROCEDURE dbo.spGetAllComponentCourse

AS
	SELECT * from ComponentCourse
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGETAllComponentType' 
)
   DROP PROCEDURE dbo.spGETAllComponentType
GO

CREATE PROCEDURE dbo.spGETAllComponentType
AS
	SELECT * from ComponentType
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGETALLComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourse' 
)
   DROP PROCEDURE dbo.spGetAllCourse
GO

CREATE PROCEDURE dbo.spGetAllCourse
AS
	SELECT *
	From Course
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourseType' 
)
   DROP PROCEDURE dbo.spGetAllCourseType
GO

CREATE PROCEDURE dbo.spGetAllCourseType
AS
	SELECT * from  dbo.CourseType 
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculum' 
)
   DROP PROCEDURE dbo.spGetAllCurriculum
GO

CREATE PROCEDURE dbo.spGetAllCurriculum

AS
	SELECT * from Curriculum
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculumType' 
)
   DROP PROCEDURE dbo.spGetAllCurriculumType
GO

CREATE PROCEDURE dbo.spGetAllCurriculumType
AS
	SELECT	*
	FROM	CurriculumType
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllFaculty' 
)
   DROP PROCEDURE dbo.spGetAllFaculty
GO

CREATE PROCEDURE dbo.spGetAllFaculty
AS
	SELECT	* FROM Faculty
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnit' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnit
GO

CREATE PROCEDURE dbo.spGetAllOrgUnit

AS
	SELECT * 
	from OrgUnit
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnitType' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnitType
GO

CREATE PROCEDURE dbo.spGetAllOrgUnitType	
AS
	SELECT *From OrgUnitType
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllOrgUnitType 
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllRegisterStatus' 
)
   DROP PROCEDURE dbo.spGetAllRegisterStatus
GO

CREATE PROCEDURE dbo.spGetAllRegisterStatus
AS
	SELECT * FROM RegisterStatus
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudent' 
)
   DROP PROCEDURE dbo.spGetAllStudent
GO

CREATE PROCEDURE dbo.spGetAllStudent
AS
	SELECT *from Student
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudent 
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentGroup' 
)
   DROP PROCEDURE dbo.spGetAllStudentGroup
GO

CREATE PROCEDURE dbo.spGetAllStudentGroup

AS
	SELECT * from StudentGroup
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentStatus' 
)
   DROP PROCEDURE dbo.spGetAllStudentStatus
GO

CREATE PROCEDURE dbo.spGetAllStudentStatus

AS
	SELECT *from StudentStatus
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudentStatus
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllTerm' 
)
   DROP PROCEDURE dbo.spGetAllTerm
GO

CREATE PROCEDURE dbo.spGetAllTerm
AS
	SELECT * from Term
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetComponentSummary' 
)
   DROP PROCEDURE dbo.spGetComponentSummary
GO

CREATE PROCEDURE dbo.spGetComponentSummary
	@ComponentID bigint
AS
		select CC.ComponentID,  COUNT(c.CourseID) as 'TotalCourses', 
		Sum(c.TheoryCredit+c.LabCredit) as 'TotalCreditHrs' 
from	Course as c Inner join ComponentCourse CC on CC.CourseID = C.CourseID
where	CC.ComponentID = @ComponentID
group by CC.ComponentID
		
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetComponentSummary 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCourseName' 
)
   DROP PROCEDURE dbo.spGetCourseName
GO

CREATE PROCEDURE dbo.spGetCourseName
	@Name nvarchar(50)
AS
	SELECT * from Course where [Name] =@Name
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCourseName 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCurriculumType' 
)
   DROP PROCEDURE dbo.spGetCurriculumType
GO

CREATE PROCEDURE dbo.spGetCurriculumType
	@CurriculumTypeID bigint
AS
	SELECT * from Curriculum where CurriculumTypeID=@CurriculumTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetOwnerUnit' 
)
   DROP PROCEDURE dbo.spGetOwnerUnit
GO

CREATE PROCEDURE dbo.spGetOwnerUnit
	@OwnerUnitID bigint
AS
	SELECT * from Curriculum where OwnerUnitID =@OwnerUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetOwnerUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClass' 
)
   DROP PROCEDURE dbo.spInsertClass
GO

CREATE PROCEDURE dbo.spInsertClass
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Insert into Class (ShortName,[Name],Capacity) values (@ShortName,@Name,@Capacity)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClassModule' 
)
   DROP PROCEDURE dbo.spInsertClassModule
GO

CREATE PROCEDURE dbo.spInsertClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentCourse' 
)
   DROP PROCEDURE dbo.spInsertComponentCourse
GO

CREATE PROCEDURE dbo.spInsertComponentCourse
	@ComponentID bigint,
	@CourseID bigint
AS
	Insert into ComponentCourse (ComponentID,CourseID) values (@ComponentID,@CourseID)
	select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentType' 
)
   DROP PROCEDURE dbo.spInsertComponentType
GO

CREATE PROCEDURE dbo.spInsertComponentType
	@Name nvarchar(50), 
	@IsRequired bit
AS
	INSERT INTO ComponentType ([Name],IsRequired) values(@Name,@IsRequired)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spCreateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourse' 
)
   DROP PROCEDURE dbo.spInsertCourse
GO

CREATE PROCEDURE dbo.spInsertCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourseType' 
)
   DROP PROCEDURE dbo.spInsertCourseType
GO

CREATE PROCEDURE dbo.spInsertCourseType
	@Name nvarchar(50)
AS
	INSERT into dbo.CourseType([Name]) values(@Name);
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculum' 
)
   DROP PROCEDURE dbo.spInsertCurriculum
GO

CREATE PROCEDURE dbo.spInsertCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculumType' 
)
   DROP PROCEDURE dbo.spInsertCurriculumType
GO

CREATE PROCEDURE dbo.spInsertCurriculumType
	@Name nvarchar(50) = 0
AS
	Insert Into CurriculumType values(@Name)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculumType 'NewType'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertFaculty' 
)
   DROP PROCEDURE dbo.spInsertFaculty
GO

CREATE PROCEDURE dbo.spInsertFaculty
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Insert Into Faculty Values(@FirstName, @LastName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnit' 
)
   DROP PROCEDURE dbo.spInsertOrgUnit
GO

CREATE PROCEDURE dbo.spInsertOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertRegisterStatus' 
)
   DROP PROCEDURE dbo.spInsertRegisterStatus
GO

CREATE PROCEDURE dbo.spInsertRegisterStatus
	@ShortName nvarchar(50)
AS
	INSERT INTO RegisterStatus VALUES(@ShortName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudent' 
)
   DROP PROCEDURE dbo.spInsertStudent
GO

CREATE PROCEDURE dbo.spInsertStudent
	@Identifier nvarchar(50), 
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	Insert into Student (Identifier, [Name], LastName) values(@Identifier, @FirstName, @LastName)
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudent '17b-012-cs','Maaz','Khan'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentGroup' 
)
   DROP PROCEDURE dbo.spInsertStudentGroup
GO

CREATE PROCEDURE dbo.spInsertStudentGroup
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@IsActive	bit = 0

AS
	Insert into StudentGroup
	(ShortName,[Name],IsActive) 
	values (@ShortName,@Name,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentStatus' 
)
   DROP PROCEDURE dbo.spInsertStudentStatus
GO

CREATE PROCEDURE dbo.spInsertStudentStatus
	@Name nvarchar(50)
AS
	INSERT into StudentStatus([Name]) values(@Name)
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertStudentStatus 'Pending'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertTerm' 
)
   DROP PROCEDURE dbo.spInsertTerm
GO

CREATE PROCEDURE dbo.spInsertTerm
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClass' 
)
   DROP PROCEDURE dbo.spUpdateClass
GO

CREATE PROCEDURE dbo.spUpdateClass
	@ClassID	bigint,
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Update Class 
	set	ShortName=@ShortName,[Name]=@Name,Capacity=@Capacity
	where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClassModule' 
)
   DROP PROCEDURE dbo.spUpdateClassModule
GO

CREATE PROCEDURE dbo.spUpdateClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentCourse' 
)
   DROP PROCEDURE dbo.spUpdateComponentCourse
GO

CREATE PROCEDURE dbo.spUpdateComponentCourse
	@ComponentCourseID bigint,
	@ComponentID bigint,
	@CourseID bigint
AS
	Update ComponentCourse
	set ComponentID=@ComponentID,CourseID=@CourseID
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentType' 
)
   DROP PROCEDURE dbo.spUpdateComponentType
GO

CREATE PROCEDURE dbo.spUpdateComponentType
	@ComponentTypeID bigint,
	@Name nvarchar(50),
	@IsRequired bit
AS
	Update ComponentType
	set [Name]=@Name,IsRequired=@IsRequired
	where @ComponentTypeID=ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourse' 
)
   DROP PROCEDURE dbo.spUpdateCourse
GO

CREATE PROCEDURE dbo.spUpdateCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourseType' 
)
   DROP PROCEDURE dbo.spUpdateCourseType
GO

CREATE PROCEDURE dbo.spUpdateCourseType
	@CourseTypeID bigint,
	@Name nvarchar(50)
AS
	UPDATE CourseType
	set [Name] = @Name
	where [CourseTypeID] = @CourseTypeID
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculum' 
)
   DROP PROCEDURE dbo.spUpdateCurriculum
GO

CREATE PROCEDURE dbo.spUpdateCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculumType' 
)
   DROP PROCEDURE dbo.spUpdateCurriculumType
GO

CREATE PROCEDURE dbo.spUpdateCurriculumType
	@CurriculumTypeID bigint = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE CurriculumType 
		SET [Name] = @Name
		WHERE CurriculumTypeID = @CurriculumTypeID 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateFaculty' 
)
   DROP PROCEDURE dbo.spUpdateFaculty
GO

CREATE PROCEDURE dbo.spUpdateFaculty
	@FacultyID bigint, 
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Update	Faculty 
	SET		FirstName = @FirstName,
			LastName = @LastName
	WHERE	FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateFaculty
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnit' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnit
GO

CREATE PROCEDURE dbo.spUpdateOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnitType' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnitType
GO

CREATE PROCEDURE dbo.spUpdateOrgUnitType
	@OrgUnitTypeID bigint,
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE OrgUnitType SET ShortName = @ShortName, [Name] = @Name where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateOrgUnitType 8, 'Mk', 'MaazKhan'
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateRegisterStatus' 
)
   DROP PROCEDURE dbo.spUpdateRegisterStatus
GO

CREATE PROCEDURE dbo.spUpdateRegisterStatus
	@RegisterStatusID bigint,
	@ShortName nvarchar(50)
AS
	Update	RegisterStatus
	SET		ShortName = @ShortName
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudent' 
)
   DROP PROCEDURE dbo.spUpdateStudent
GO

CREATE PROCEDURE dbo.spUpdateStudent
	@StudentID bigint, 
	@Identifier nvarchar(50),
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	UPDATE Student SET Identifier = @Identifier, [Name] = @FirstName, LastName = @LastName
	where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateStudent 3,'17b-50-cs','Ahsan','Khan' 
GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentGroup' 
)
   DROP PROCEDURE dbo.spUpdateStudentGroup
GO

CREATE PROCEDURE dbo.spUpdateStudentGroup
	@StudentGroupID bigint,
	@ShortName		nvarchar(50),
	@Name			nvarchar(250),
	@IsActive		bit = 0

AS
	Update StudentGroup
	set ShortName=@ShortName,[Name]=@Name,IsActive=@IsActive
	where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentStatus' 
)
   DROP PROCEDURE dbo.spUpdateStudentStatus
GO

CREATE PROCEDURE dbo.spUpdateStudentStatus
	@StudentStatusID bigint,
	@Name nvarchar(50)
AS
	UPDATE StudentStatus SET [Name] = @Name where StudentStatusID = @StudentStatusID; 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateStudentStatus 6, 'Inprogress'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateTerm' 
)
   DROP PROCEDURE dbo.spUpdateTerm
GO

CREATE PROCEDURE dbo.spUpdateTerm
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spComponentTotalCourseCreditHrs' 
)
   DROP PROCEDURE dbo.spComponentTotalCourseCreditHrs
GO

CREATE PROCEDURE dbo.spComponentTotalCourseCreditHrs
	@CurriculumID bigint
AS
	SELECT count(ComponentID) as NumberofComponent, sum(TotalCourses) as TotalCourses,sum(TotalCredit) as TotalCredit
	from Component where CurriculumID=@CurriculumID   
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spTotalCreditCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClass' 
)
   DROP PROCEDURE dbo.spDeleteClass
GO

CREATE PROCEDURE dbo.spDeleteClass
	@ClassID bigint
AS
	Delete Class where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClassModule' 
)
   DROP PROCEDURE dbo.spDeleteClassModule
GO

CREATE PROCEDURE dbo.spDeleteClassModule
	@ClassModuleID bigint
AS
	DELETE	ClassModule 
	WHERE	ClassModuleID = @ClassModuleID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentCourse' 
)
   DROP PROCEDURE dbo.spDeleteComponentCourse
GO

CREATE PROCEDURE dbo.spDeleteComponentCourse
	@ComponentCourseID bigint
AS
	Delete from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentType' 
)
   DROP PROCEDURE dbo.spDeleteComponentType
GO

CREATE PROCEDURE dbo.spDeleteComponentType
	@ComponentTypeID bigint
AS
	Delete From ComponentType where ComponentTypeID=@ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourse' 
)
   DROP PROCEDURE dbo.spDeleteCourse
GO

CREATE PROCEDURE dbo.spDeleteCourse
	@CourseID bigint
AS
	Delete from Course
	where CourseID=@CourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourseType' 
)
   DROP PROCEDURE dbo.spDeleteCourseType
GO

CREATE PROCEDURE dbo.spDeleteCourseType
	@CourseTypeID bigint
AS
	DELETE from CourseType where CourseTypeID=@CourseTypeID
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculum' 
)
   DROP PROCEDURE dbo.spDeleteCurriculum
GO

CREATE PROCEDURE dbo.spDeleteCurriculum
	@CurriculumID bigint
AS
	Delete from Curriculum where CurriculumID=@CurriculumID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculumType' 
)
   DROP PROCEDURE dbo.spDeleteCurriculumType
GO

CREATE PROCEDURE dbo.spDeleteCurriculumType
	@CurriculumTypeID bigint = 0
AS
	DELETE FROM CurriculumType WHERE CurriculumTypeID = @CurriculumTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteFaculty' 
)
   DROP PROCEDURE dbo.spDeleteFaculty
GO

CREATE PROCEDURE dbo.spDeleteFaculty
	@FacultyID bigint
AS
	DELETE Faculty WHERE FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnit' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnit
GO

CREATE PROCEDURE dbo.spDeleteOrgUnit
	@OrgUnitID bigint
AS
	Delete from 
	OrgUnit
	where OrgUnitID=@OrgUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnitType' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnitType
GO

CREATE PROCEDURE dbo.spDeleteOrgUnitType
	@OrgUnitTypeID bigint
AS
	DELETE FROM OrgUnitType where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteOrgUnitType 8
GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteRegisterStatus' 
)
   DROP PROCEDURE dbo.spDeleteRegisterStatus
GO

CREATE PROCEDURE dbo.spDeleteRegisterStatus
	@RegisterStatusID bigint
AS
	DELETE RegisterStatus
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudent' 
)
   DROP PROCEDURE dbo.spDeleteStudent
GO

CREATE PROCEDURE dbo.spDeleteStudent
	@StudentID bigint
AS
	DELETE from Student where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteStudent 3
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentGroup' 
)
   DROP PROCEDURE dbo.spDeleteStudentGroup
GO

CREATE PROCEDURE dbo.spDeleteStudentGroup
	@StudentGroupID bigint
AS
	Delete from StudentGroup where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudent' 
)
   DROP PROCEDURE dbo.spDeleteStudent
GO

CREATE PROCEDURE dbo.spDeleteStudent
	@StudentStatusID bigint 
AS
	DELETE from StudentStatus where StudentStatusID = @StudentStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteStudent 6
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteTerm' 
)
   DROP PROCEDURE dbo.spDeleteTerm
GO

CREATE PROCEDURE dbo.spDeleteTerm
	@TermID bigint
AS
	Delete from Term where TermID=@TermID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClass' 
)
   DROP PROCEDURE dbo.spFindClass
GO

CREATE PROCEDURE dbo.spFindClass
	@ClassID bigint
AS
	SELECT Top 1 *
	from Class
	where ClassID = @ClassID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClassModule' 
)
   DROP PROCEDURE dbo.spFindClassModule
GO

CREATE PROCEDURE dbo.spFindClassModule
	@ClassModuleID bigint
AS
	SELECT Top 1 *
	from ClassModule
	where ClassModuleID = @ClassModuleID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentCourse' 
)
   DROP PROCEDURE dbo.spFindComponentCourse
GO

CREATE PROCEDURE dbo.spFindComponentCourse
	@ComponentCourseID bigint
AS
	SELECT top 1*
	from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentType' 
)
   DROP PROCEDURE dbo.spFindComponentType
GO

CREATE PROCEDURE dbo.spFindComponentType
	@ComponentTypeID bigint
AS
	SELECT Top 1 * 
	from ComponentType
	Where ComponentTypeID=@ComponentTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourse' 
)
   DROP PROCEDURE dbo.spFindCourse
GO

CREATE PROCEDURE dbo.spFindCourse
	@CourseID bigint
AS
	SELECT Top 1 *
	from Course
	where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseIDComponentCourse' 
)
   DROP PROCEDURE dbo.spFindCourseIDComponentCourse
GO

CREATE PROCEDURE dbo.spFindCourseIDComponentCourse
	@CourseID bigint
AS
	SELECT Top 1 * 
	from ComponentCourse where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourseIDComponentCourse 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseType' 
)
   DROP PROCEDURE dbo.spFindCourseType
GO

CREATE PROCEDURE dbo.spFindCourseType	
	@CourseTypeID bigint
AS
	SELECT TOP 1 *
	FROM CourseType
	WHERE CourseTypeID = @CourseTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculum' 
)
   DROP PROCEDURE dbo.spFindCurriculum
GO

CREATE PROCEDURE dbo.spFindCurriculum
	@CurriculumID bigint
AS
	SELECT Top 1 *
	from Curriculum
	where CurriculumID=@CurriculumID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apFindCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculumType' 
)
   DROP PROCEDURE dbo.spFindCurriculumType
GO

CREATE PROCEDURE dbo.spFindCurriculumType
	@CurriculumTypeID bigint = 0
AS
	SELECT	TOP 1 * 
	FROM	CurriculumType 
	WHERE	CurriculumTypeID = @CurriculumTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCurriculumType 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindFaculty' 
)
   DROP PROCEDURE dbo.spFindFaculty
GO

CREATE PROCEDURE dbo.spFindFaculty
	@FacultyID bigint
AS
	SELECT Top 1 *
	from Faculty
	where FacultyID = @FacultyID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClasModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnit' 
)
   DROP PROCEDURE dbo.spFindOrgUnit
GO

CREATE PROCEDURE dbo.spFindOrgUnit
	@OrgUnitID bigint 
AS
	Select top 1* 
	From OrgUnit
	where OrgUnitID=@OrgUnitID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnitType' 
)
   DROP PROCEDURE dbo.spFindOrgUnitType
GO

CREATE PROCEDURE dbo.spFindOrgUnitType
	@OrgUnitTypeID bigint
AS
	SELECT top 1*
	from OrgUnitType 
	where OrgUnitTypeID = @OrgUnitTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================

-- EXECUTE dbo.spFindOrgUnitType 1
-- GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindParentOrgUnit' 
)
   DROP PROCEDURE dbo.spFindParentOrgUnit
GO

CREATE PROCEDURE dbo.spFindParentOrgUnit
	@ParentUnitID bigint
AS
	SELECT * from OrgUnit 
	where ParentUnitID=@ParentUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindParentOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindRegisterStatus' 
)
   DROP PROCEDURE dbo.spFindRegisterStatus
GO

CREATE PROCEDURE dbo.spFindRegisterStatus
	@RegisterStatusID bigint
AS
	SELECT top 1 *
	from RegisterStatus
	where RegisterStatusID = @RegisterStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudent' 
)
   DROP PROCEDURE dbo.spFindStudent
GO

CREATE PROCEDURE dbo.spFindStudent
	@StudentID bigint 
AS
	SELECT Identifier, [Name], lastName from Student where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spFindStudent 1
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentGroup' 
)
   DROP PROCEDURE dbo.spFindStudentGroup
GO

CREATE PROCEDURE dbo.spFindStudentGroup
	@StudentGroupID bigint
AS
	SELECT TOP 1 *
	FROM StudentGroup
	WHERE StudentGroupID = @StudentGroupID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentStatus' 
)
   DROP PROCEDURE dbo.spFindStudentStatus
GO

CREATE PROCEDURE dbo.spFindStudentStatus
	@StudentStatusID bigint
AS
	SELECT [Name] from StudentStatus where StudentStatusID = @StudentStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spFindStudentStatus 5
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindTerm' 
)
   DROP PROCEDURE dbo.spFindTerm
GO

CREATE PROCEDURE dbo.spFindTerm
	@TermID bigint
AS
	SELECT top 1 *
	from Term
	where TermID=@TermID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClass' 
)
   DROP PROCEDURE dbo.spGetAllClass
GO

CREATE PROCEDURE dbo.spGetAllClass

AS
	SELECT * from Class
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClassModule' 
)
   DROP PROCEDURE dbo.spGetAllClassModule
GO

CREATE PROCEDURE dbo.spGetAllClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponentCourse' 
)
   DROP PROCEDURE dbo.spGetAllComponentCourse
GO

CREATE PROCEDURE dbo.spGetAllComponentCourse

AS
	SELECT * from ComponentCourse
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGETAllComponentType' 
)
   DROP PROCEDURE dbo.spGETAllComponentType
GO

CREATE PROCEDURE dbo.spGETAllComponentType
AS
	SELECT * from ComponentType
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGETALLComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourse' 
)
   DROP PROCEDURE dbo.spGetAllCourse
GO

CREATE PROCEDURE dbo.spGetAllCourse
AS
	SELECT *
	From Course
	For json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourseType' 
)
   DROP PROCEDURE dbo.spGetAllCourseType
GO

CREATE PROCEDURE dbo.spGetAllCourseType
AS
	SELECT * from  dbo.CourseType 
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculum' 
)
   DROP PROCEDURE dbo.spGetAllCurriculum
GO

CREATE PROCEDURE dbo.spGetAllCurriculum

AS
	SELECT * from Curriculum
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculumType' 
)
   DROP PROCEDURE dbo.spGetAllCurriculumType
GO

CREATE PROCEDURE dbo.spGetAllCurriculumType
AS
	SELECT	*
	FROM	CurriculumType
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllFaculty' 
)
   DROP PROCEDURE dbo.spGetAllFaculty
GO

CREATE PROCEDURE dbo.spGetAllFaculty
AS
	SELECT	* FROM Faculty
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnit' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnit
GO

CREATE PROCEDURE dbo.spGetAllOrgUnit

AS
	SELECT * 
	from OrgUnit
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnitType' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnitType
GO

CREATE PROCEDURE dbo.spGetAllOrgUnitType	
AS
	SELECT *From OrgUnitType
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllOrgUnitType 
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllRegisterStatus' 
)
   DROP PROCEDURE dbo.spGetAllRegisterStatus
GO

CREATE PROCEDURE dbo.spGetAllRegisterStatus
AS
	SELECT * FROM RegisterStatus
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudent' 
)
   DROP PROCEDURE dbo.spGetAllStudent
GO

CREATE PROCEDURE dbo.spGetAllStudent
AS
	SELECT *from Student
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudent 
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentGroup' 
)
   DROP PROCEDURE dbo.spGetAllStudentGroup
GO

CREATE PROCEDURE dbo.spGetAllStudentGroup

AS
	SELECT * from StudentGroup
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentStatus' 
)
   DROP PROCEDURE dbo.spGetAllStudentStatus
GO

CREATE PROCEDURE dbo.spGetAllStudentStatus

AS
	SELECT *from StudentStatus
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudentStatus
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllTerm' 
)
   DROP PROCEDURE dbo.spGetAllTerm
GO

CREATE PROCEDURE dbo.spGetAllTerm
AS
	SELECT * from Term
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetComponentSummary' 
)
   DROP PROCEDURE dbo.spGetComponentSummary
GO

CREATE PROCEDURE dbo.spGetComponentSummary
	@ComponentID bigint
AS
		select CC.ComponentID,  COUNT(c.CourseID) as 'TotalCourses', 
		Sum(c.TheoryCredit+c.LabCredit) as 'TotalCreditHrs' 
from	Course as c Inner join ComponentCourse CC on CC.CourseID = C.CourseID
where	CC.ComponentID = @ComponentID
group by CC.ComponentID
		
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetComponentSummary 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCourseName' 
)
   DROP PROCEDURE dbo.spGetCourseName
GO

CREATE PROCEDURE dbo.spGetCourseName
	@Name nvarchar(50)
AS
	SELECT * from Course where [Name] =@Name
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCourseName 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCurriculumType' 
)
   DROP PROCEDURE dbo.spGetCurriculumType
GO

CREATE PROCEDURE dbo.spGetCurriculumType
	@CurriculumTypeID bigint
AS
	SELECT * from Curriculum where CurriculumTypeID=@CurriculumTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetOwnerUnit' 
)
   DROP PROCEDURE dbo.spGetOwnerUnit
GO

CREATE PROCEDURE dbo.spGetOwnerUnit
	@OwnerUnitID bigint
AS
	SELECT * from Curriculum where OwnerUnitID =@OwnerUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetOwnerUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClass' 
)
   DROP PROCEDURE dbo.spInsertClass
GO

CREATE PROCEDURE dbo.spInsertClass
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Insert into Class (ShortName,[Name],Capacity) values (@ShortName,@Name,@Capacity)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClassModule' 
)
   DROP PROCEDURE dbo.spInsertClassModule
GO

CREATE PROCEDURE dbo.spInsertClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentCourse' 
)
   DROP PROCEDURE dbo.spInsertComponentCourse
GO

CREATE PROCEDURE dbo.spInsertComponentCourse
	@ComponentID bigint,
	@CourseID bigint
AS
	Insert into ComponentCourse (ComponentID,CourseID) values (@ComponentID,@CourseID)
	select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentType' 
)
   DROP PROCEDURE dbo.spInsertComponentType
GO

CREATE PROCEDURE dbo.spInsertComponentType
	@Name nvarchar(50), 
	@IsRequired bit
AS
	INSERT INTO ComponentType ([Name],IsRequired) values(@Name,@IsRequired)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spCreateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourse' 
)
   DROP PROCEDURE dbo.spInsertCourse
GO

CREATE PROCEDURE dbo.spInsertCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourseType' 
)
   DROP PROCEDURE dbo.spInsertCourseType
GO

CREATE PROCEDURE dbo.spInsertCourseType
	@Name nvarchar(50)
AS
	INSERT into dbo.CourseType([Name]) values(@Name);
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculum' 
)
   DROP PROCEDURE dbo.spInsertCurriculum
GO

CREATE PROCEDURE dbo.spInsertCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculumType' 
)
   DROP PROCEDURE dbo.spInsertCurriculumType
GO

CREATE PROCEDURE dbo.spInsertCurriculumType
	@Name nvarchar(50) = 0
AS
	Insert Into CurriculumType values(@Name)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculumType 'NewType'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertFaculty' 
)
   DROP PROCEDURE dbo.spInsertFaculty
GO

CREATE PROCEDURE dbo.spInsertFaculty
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Insert Into Faculty Values(@FirstName, @LastName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnit' 
)
   DROP PROCEDURE dbo.spInsertOrgUnit
GO

CREATE PROCEDURE dbo.spInsertOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertRegisterStatus' 
)
   DROP PROCEDURE dbo.spInsertRegisterStatus
GO

CREATE PROCEDURE dbo.spInsertRegisterStatus
	@ShortName nvarchar(50)
AS
	INSERT INTO RegisterStatus VALUES(@ShortName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudent' 
)
   DROP PROCEDURE dbo.spInsertStudent
GO

CREATE PROCEDURE dbo.spInsertStudent
	@Identifier nvarchar(50), 
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	Insert into Student (Identifier, [Name], LastName) values(@Identifier, @FirstName, @LastName)
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudent '17b-012-cs','Maaz','Khan'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentGroup' 
)
   DROP PROCEDURE dbo.spInsertStudentGroup
GO

CREATE PROCEDURE dbo.spInsertStudentGroup
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@IsActive	bit = 0

AS
	Insert into StudentGroup
	(ShortName,[Name],IsActive) 
	values (@ShortName,@Name,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentStatus' 
)
   DROP PROCEDURE dbo.spInsertStudentStatus
GO

CREATE PROCEDURE dbo.spInsertStudentStatus
	@Name nvarchar(50)
AS
	INSERT into StudentStatus([Name]) values(@Name)
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertStudentStatus 'Pending'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertTerm' 
)
   DROP PROCEDURE dbo.spInsertTerm
GO

CREATE PROCEDURE dbo.spInsertTerm
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClass' 
)
   DROP PROCEDURE dbo.spUpdateClass
GO

CREATE PROCEDURE dbo.spUpdateClass
	@ClassID	bigint,
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Update Class 
	set	ShortName=@ShortName,[Name]=@Name,Capacity=@Capacity
	where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClassModule' 
)
   DROP PROCEDURE dbo.spUpdateClassModule
GO

CREATE PROCEDURE dbo.spUpdateClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentCourse' 
)
   DROP PROCEDURE dbo.spUpdateComponentCourse
GO

CREATE PROCEDURE dbo.spUpdateComponentCourse
	@ComponentCourseID bigint,
	@ComponentID bigint,
	@CourseID bigint
AS
	Update ComponentCourse
	set ComponentID=@ComponentID,CourseID=@CourseID
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentType' 
)
   DROP PROCEDURE dbo.spUpdateComponentType
GO

CREATE PROCEDURE dbo.spUpdateComponentType
	@ComponentTypeID bigint,
	@Name nvarchar(50),
	@IsRequired bit
AS
	Update ComponentType
	set [Name]=@Name,IsRequired=@IsRequired
	where @ComponentTypeID=ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourse' 
)
   DROP PROCEDURE dbo.spUpdateCourse
GO

CREATE PROCEDURE dbo.spUpdateCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourseType' 
)
   DROP PROCEDURE dbo.spUpdateCourseType
GO

CREATE PROCEDURE dbo.spUpdateCourseType
	@CourseTypeID bigint,
	@Name nvarchar(50)
AS
	UPDATE CourseType
	set [Name] = @Name
	where [CourseTypeID] = @CourseTypeID
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculum' 
)
   DROP PROCEDURE dbo.spUpdateCurriculum
GO

CREATE PROCEDURE dbo.spUpdateCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculumType' 
)
   DROP PROCEDURE dbo.spUpdateCurriculumType
GO

CREATE PROCEDURE dbo.spUpdateCurriculumType
	@CurriculumTypeID bigint = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE CurriculumType 
		SET [Name] = @Name
		WHERE CurriculumTypeID = @CurriculumTypeID 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateFaculty' 
)
   DROP PROCEDURE dbo.spUpdateFaculty
GO

CREATE PROCEDURE dbo.spUpdateFaculty
	@FacultyID bigint, 
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Update	Faculty 
	SET		FirstName = @FirstName,
			LastName = @LastName
	WHERE	FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateFaculty
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnit' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnit
GO

CREATE PROCEDURE dbo.spUpdateOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnitType' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnitType
GO

CREATE PROCEDURE dbo.spUpdateOrgUnitType
	@OrgUnitTypeID bigint,
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE OrgUnitType SET ShortName = @ShortName, [Name] = @Name where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateOrgUnitType 8, 'Mk', 'MaazKhan'
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateRegisterStatus' 
)
   DROP PROCEDURE dbo.spUpdateRegisterStatus
GO

CREATE PROCEDURE dbo.spUpdateRegisterStatus
	@RegisterStatusID bigint,
	@ShortName nvarchar(50)
AS
	Update	RegisterStatus
	SET		ShortName = @ShortName
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudent' 
)
   DROP PROCEDURE dbo.spUpdateStudent
GO

CREATE PROCEDURE dbo.spUpdateStudent
	@StudentID bigint, 
	@Identifier nvarchar(50),
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	UPDATE Student SET Identifier = @Identifier, [Name] = @FirstName, LastName = @LastName
	where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateStudent 3,'17b-50-cs','Ahsan','Khan' 
GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentGroup' 
)
   DROP PROCEDURE dbo.spUpdateStudentGroup
GO

CREATE PROCEDURE dbo.spUpdateStudentGroup
	@StudentGroupID bigint,
	@ShortName		nvarchar(50),
	@Name			nvarchar(250),
	@IsActive		bit = 0

AS
	Update StudentGroup
	set ShortName=@ShortName,[Name]=@Name,IsActive=@IsActive
	where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentStatus' 
)
   DROP PROCEDURE dbo.spUpdateStudentStatus
GO

CREATE PROCEDURE dbo.spUpdateStudentStatus
	@StudentStatusID bigint,
	@Name nvarchar(50)
AS
	UPDATE StudentStatus SET [Name] = @Name where StudentStatusID = @StudentStatusID; 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateStudentStatus 6, 'Inprogress'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateTerm' 
)
   DROP PROCEDURE dbo.spUpdateTerm
GO

CREATE PROCEDURE dbo.spUpdateTerm
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spComponentTotalCourseCreditHrs' 
)
   DROP PROCEDURE dbo.spComponentTotalCourseCreditHrs
GO

CREATE PROCEDURE dbo.spComponentTotalCourseCreditHrs
	@CurriculumID bigint
AS
	SELECT count(ComponentID) as NumberofComponent, sum(TotalCourses) as TotalCourses,sum(TotalCredit) as TotalCredit
	from Component where CurriculumID=@CurriculumID   
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spTotalCreditCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteBatch' 
)
   DROP PROCEDURE dbo.spDeleteBatch
GO

CREATE PROCEDURE dbo.spDeleteBatch
	@BatchID bigint
AS
	Delete from Batch
	where BatchID = @BatchID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteBatch 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClass' 
)
   DROP PROCEDURE dbo.spDeleteClass
GO

CREATE PROCEDURE dbo.spDeleteClass
	@ClassID bigint
AS
	Delete Class where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClassModule' 
)
   DROP PROCEDURE dbo.spDeleteClassModule
GO

CREATE PROCEDURE dbo.spDeleteClassModule
	@ClassModuleID bigint
AS
	DELETE	ClassModule 
	WHERE	ClassModuleID = @ClassModuleID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentCourse' 
)
   DROP PROCEDURE dbo.spDeleteComponentCourse
GO

CREATE PROCEDURE dbo.spDeleteComponentCourse
	@ComponentCourseID bigint
AS
	Delete from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentType' 
)
   DROP PROCEDURE dbo.spDeleteComponentType
GO

CREATE PROCEDURE dbo.spDeleteComponentType
	@ComponentTypeID bigint
AS
	Delete From ComponentType where ComponentTypeID=@ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourse' 
)
   DROP PROCEDURE dbo.spDeleteCourse
GO

CREATE PROCEDURE dbo.spDeleteCourse
	@CourseID bigint
AS
	Delete from Course
	where CourseID=@CourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourseType' 
)
   DROP PROCEDURE dbo.spDeleteCourseType
GO

CREATE PROCEDURE dbo.spDeleteCourseType
	@CourseTypeID bigint
AS
	DELETE from CourseType where CourseTypeID=@CourseTypeID
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculum' 
)
   DROP PROCEDURE dbo.spDeleteCurriculum
GO

CREATE PROCEDURE dbo.spDeleteCurriculum
	@CurriculumID bigint
AS
	Delete from Curriculum where CurriculumID=@CurriculumID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculumType' 
)
   DROP PROCEDURE dbo.spDeleteCurriculumType
GO

CREATE PROCEDURE dbo.spDeleteCurriculumType
	@CurriculumTypeID bigint = 0
AS
	DELETE FROM CurriculumType WHERE CurriculumTypeID = @CurriculumTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteFaculty' 
)
   DROP PROCEDURE dbo.spDeleteFaculty
GO

CREATE PROCEDURE dbo.spDeleteFaculty
	@FacultyID bigint
AS
	DELETE Faculty WHERE FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnit' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnit
GO

CREATE PROCEDURE dbo.spDeleteOrgUnit
	@OrgUnitID bigint
AS
	Delete from 
	OrgUnit
	where OrgUnitID=@OrgUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnitType' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnitType
GO

CREATE PROCEDURE dbo.spDeleteOrgUnitType
	@OrgUnitTypeID bigint
AS
	DELETE FROM OrgUnitType where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteOrgUnitType 8
GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteRegisterStatus' 
)
   DROP PROCEDURE dbo.spDeleteRegisterStatus
GO

CREATE PROCEDURE dbo.spDeleteRegisterStatus
	@RegisterStatusID bigint
AS
	DELETE RegisterStatus
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudent' 
)
   DROP PROCEDURE dbo.spDeleteStudent
GO

CREATE PROCEDURE dbo.spDeleteStudent
	@StudentID bigint
AS
	DELETE from Student where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteStudent 3
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentGroup' 
)
   DROP PROCEDURE dbo.spDeleteStudentGroup
GO

CREATE PROCEDURE dbo.spDeleteStudentGroup
	@StudentGroupID bigint
AS
	Delete from StudentGroup where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudent' 
)
   DROP PROCEDURE dbo.spDeleteStudent
GO

CREATE PROCEDURE dbo.spDeleteStudent
	@StudentStatusID bigint 
AS
	DELETE from StudentStatus where StudentStatusID = @StudentStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteStudent 6
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteTerm' 
)
   DROP PROCEDURE dbo.spDeleteTerm
GO

CREATE PROCEDURE dbo.spDeleteTerm
	@TermID bigint
AS
	Delete from Term where TermID=@TermID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindBatch' 
)
   DROP PROCEDURE dbo.spFindBatch
GO

CREATE PROCEDURE dbo.spFindBatch
	@BatchID bigint
AS
	SELECT Top 1 * 
	from Batch
	where BatchID = @BatchID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spFindBatch 1
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClass' 
)
   DROP PROCEDURE dbo.spFindClass
GO

CREATE PROCEDURE dbo.spFindClass
	@ClassID bigint
AS
	SELECT Top 1 *
	from Class
	where ClassID = @ClassID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClassModule' 
)
   DROP PROCEDURE dbo.spFindClassModule
GO

CREATE PROCEDURE dbo.spFindClassModule
	@ClassModuleID bigint
AS
	SELECT Top 1 *
	from ClassModule
	where ClassModuleID = @ClassModuleID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentCourse' 
)
   DROP PROCEDURE dbo.spFindComponentCourse
GO

CREATE PROCEDURE dbo.spFindComponentCourse
	@ComponentCourseID bigint
AS
	SELECT top 1*
	from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentType' 
)
   DROP PROCEDURE dbo.spFindComponentType
GO

CREATE PROCEDURE dbo.spFindComponentType
	@ComponentTypeID bigint
AS
	SELECT Top 1 * 
	from ComponentType
	Where ComponentTypeID=@ComponentTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourse' 
)
   DROP PROCEDURE dbo.spFindCourse
GO

CREATE PROCEDURE dbo.spFindCourse
	@CourseID bigint
AS
	SELECT Top 1 *
	from Course
	where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseIDComponentCourse' 
)
   DROP PROCEDURE dbo.spFindCourseIDComponentCourse
GO

CREATE PROCEDURE dbo.spFindCourseIDComponentCourse
	@CourseID bigint
AS
	SELECT Top 1 * 
	from ComponentCourse where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourseIDComponentCourse 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseType' 
)
   DROP PROCEDURE dbo.spFindCourseType
GO

CREATE PROCEDURE dbo.spFindCourseType	
	@CourseTypeID bigint
AS
	SELECT TOP 1 *
	FROM CourseType
	WHERE CourseTypeID = @CourseTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculum' 
)
   DROP PROCEDURE dbo.spFindCurriculum
GO

CREATE PROCEDURE dbo.spFindCurriculum
	@CurriculumID bigint
AS
	SELECT Top 1 *
	from Curriculum
	where CurriculumID=@CurriculumID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apFindCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculumType' 
)
   DROP PROCEDURE dbo.spFindCurriculumType
GO

CREATE PROCEDURE dbo.spFindCurriculumType
	@CurriculumTypeID bigint = 0
AS
	SELECT	TOP 1 * 
	FROM	CurriculumType 
	WHERE	CurriculumTypeID = @CurriculumTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCurriculumType 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindFaculty' 
)
   DROP PROCEDURE dbo.spFindFaculty
GO

CREATE PROCEDURE dbo.spFindFaculty
	@FacultyID bigint
AS
	SELECT Top 1 *
	from Faculty
	where FacultyID = @FacultyID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClasModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnit' 
)
   DROP PROCEDURE dbo.spFindOrgUnit
GO

CREATE PROCEDURE dbo.spFindOrgUnit
	@OrgUnitID bigint 
AS
	Select top 1* 
	From OrgUnit
	where OrgUnitID=@OrgUnitID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnitType' 
)
   DROP PROCEDURE dbo.spFindOrgUnitType
GO

CREATE PROCEDURE dbo.spFindOrgUnitType
	@OrgUnitTypeID bigint
AS
	SELECT top 1*
	from OrgUnitType 
	where OrgUnitTypeID = @OrgUnitTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================

-- EXECUTE dbo.spFindOrgUnitType 1
-- GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindParentOrgUnit' 
)
   DROP PROCEDURE dbo.spFindParentOrgUnit
GO

CREATE PROCEDURE dbo.spFindParentOrgUnit
	@ParentUnitID bigint
AS
	SELECT * from OrgUnit 
	where ParentUnitID=@ParentUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindParentOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindRegisterStatus' 
)
   DROP PROCEDURE dbo.spFindRegisterStatus
GO

CREATE PROCEDURE dbo.spFindRegisterStatus
	@RegisterStatusID bigint
AS
	SELECT top 1 *
	from RegisterStatus
	where RegisterStatusID = @RegisterStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudent' 
)
   DROP PROCEDURE dbo.spFindStudent
GO

CREATE PROCEDURE dbo.spFindStudent
	@StudentID bigint 
AS
	SELECT Identifier, [Name], lastName from Student where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spFindStudent 1
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentGroup' 
)
   DROP PROCEDURE dbo.spFindStudentGroup
GO

CREATE PROCEDURE dbo.spFindStudentGroup
	@StudentGroupID bigint
AS
	SELECT TOP 1 *
	FROM StudentGroup
	WHERE StudentGroupID = @StudentGroupID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentStatus' 
)
   DROP PROCEDURE dbo.spFindStudentStatus
GO

CREATE PROCEDURE dbo.spFindStudentStatus
	@StudentStatusID bigint
AS
	SELECT [Name] from StudentStatus where StudentStatusID = @StudentStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spFindStudentStatus 5
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindTerm' 
)
   DROP PROCEDURE dbo.spFindTerm
GO

CREATE PROCEDURE dbo.spFindTerm
	@TermID bigint
AS
	SELECT top 1 *
	from Term
	where TermID=@TermID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllBatch' 
)
   DROP PROCEDURE dbo.spGetAllBatch
GO

CREATE PROCEDURE dbo.spGetAllBatch
AS
	SELECT * from Batch
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllBatch 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClass' 
)
   DROP PROCEDURE dbo.spGetAllClass
GO

CREATE PROCEDURE dbo.spGetAllClass

AS
	SELECT * from Class
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClassModule' 
)
   DROP PROCEDURE dbo.spGetAllClassModule
GO

CREATE PROCEDURE dbo.spGetAllClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponentCourse' 
)
   DROP PROCEDURE dbo.spGetAllComponentCourse
GO

CREATE PROCEDURE dbo.spGetAllComponentCourse

AS
	SELECT * from ComponentCourse
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGETAllComponentType' 
)
   DROP PROCEDURE dbo.spGETAllComponentType
GO

CREATE PROCEDURE dbo.spGETAllComponentType
AS
	SELECT * from ComponentType
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGETALLComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourse' 
)
   DROP PROCEDURE dbo.spGetAllCourse
GO

CREATE PROCEDURE dbo.spGetAllCourse
AS
	SELECT *
	From Course
	For json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourseType' 
)
   DROP PROCEDURE dbo.spGetAllCourseType
GO

CREATE PROCEDURE dbo.spGetAllCourseType
AS
	SELECT * from  dbo.CourseType 
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculum' 
)
   DROP PROCEDURE dbo.spGetAllCurriculum
GO

CREATE PROCEDURE dbo.spGetAllCurriculum

AS
	SELECT * from Curriculum
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculumType' 
)
   DROP PROCEDURE dbo.spGetAllCurriculumType
GO

CREATE PROCEDURE dbo.spGetAllCurriculumType
AS
	SELECT	*
	FROM	CurriculumType
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllFaculty' 
)
   DROP PROCEDURE dbo.spGetAllFaculty
GO

CREATE PROCEDURE dbo.spGetAllFaculty
AS
	SELECT	* FROM Faculty
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnit' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnit
GO

CREATE PROCEDURE dbo.spGetAllOrgUnit

AS
	SELECT * 
	from OrgUnit
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnitType' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnitType
GO

CREATE PROCEDURE dbo.spGetAllOrgUnitType	
AS
	SELECT *From OrgUnitType
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllOrgUnitType 
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllRegisterStatus' 
)
   DROP PROCEDURE dbo.spGetAllRegisterStatus
GO

CREATE PROCEDURE dbo.spGetAllRegisterStatus
AS
	SELECT * FROM RegisterStatus
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudent' 
)
   DROP PROCEDURE dbo.spGetAllStudent
GO

CREATE PROCEDURE dbo.spGetAllStudent
AS
	SELECT *from Student
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudent 
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentGroup' 
)
   DROP PROCEDURE dbo.spGetAllStudentGroup
GO

CREATE PROCEDURE dbo.spGetAllStudentGroup

AS
	SELECT * from StudentGroup
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentStatus' 
)
   DROP PROCEDURE dbo.spGetAllStudentStatus
GO

CREATE PROCEDURE dbo.spGetAllStudentStatus

AS
	SELECT *from StudentStatus
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudentStatus
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllTerm' 
)
   DROP PROCEDURE dbo.spGetAllTerm
GO

CREATE PROCEDURE dbo.spGetAllTerm
AS
	SELECT * from Term
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetComponentSummary' 
)
   DROP PROCEDURE dbo.spGetComponentSummary
GO

CREATE PROCEDURE dbo.spGetComponentSummary
	@ComponentID bigint
AS
		select CC.ComponentID,  COUNT(c.CourseID) as 'TotalCourses', 
		Sum(c.TheoryCredit+c.LabCredit) as 'TotalCreditHrs' 
from	Course as c Inner join ComponentCourse CC on CC.CourseID = C.CourseID
where	CC.ComponentID = @ComponentID
group by CC.ComponentID
		
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetComponentSummary 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCourseName' 
)
   DROP PROCEDURE dbo.spGetCourseName
GO

CREATE PROCEDURE dbo.spGetCourseName
	@Name nvarchar(50)
AS
	SELECT * from Course where [Name] =@Name
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCourseName 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCurriculumType' 
)
   DROP PROCEDURE dbo.spGetCurriculumType
GO

CREATE PROCEDURE dbo.spGetCurriculumType
	@CurriculumTypeID bigint
AS
	SELECT * from Curriculum where CurriculumTypeID=@CurriculumTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetOwnerUnit' 
)
   DROP PROCEDURE dbo.spGetOwnerUnit
GO

CREATE PROCEDURE dbo.spGetOwnerUnit
	@OwnerUnitID bigint
AS
	SELECT * from Curriculum where OwnerUnitID =@OwnerUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetOwnerUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertBatch' 
)
   DROP PROCEDURE dbo.spInsertBatch
GO

CREATE PROCEDURE dbo.spInsertBatch
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertBatch "BS-2022", "BS(CS)2022", 2022, 2026, 4, 2  
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClass' 
)
   DROP PROCEDURE dbo.spInsertClass
GO

CREATE PROCEDURE dbo.spInsertClass
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Insert into Class (ShortName,[Name],Capacity) values (@ShortName,@Name,@Capacity)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClassModule' 
)
   DROP PROCEDURE dbo.spInsertClassModule
GO

CREATE PROCEDURE dbo.spInsertClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentCourse' 
)
   DROP PROCEDURE dbo.spInsertComponentCourse
GO

CREATE PROCEDURE dbo.spInsertComponentCourse
	@ComponentID bigint,
	@CourseID bigint
AS
	Insert into ComponentCourse (ComponentID,CourseID) values (@ComponentID,@CourseID)
	select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentType' 
)
   DROP PROCEDURE dbo.spInsertComponentType
GO

CREATE PROCEDURE dbo.spInsertComponentType
	@Name nvarchar(50), 
	@IsRequired bit
AS
	INSERT INTO ComponentType ([Name],IsRequired) values(@Name,@IsRequired)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spCreateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourse' 
)
   DROP PROCEDURE dbo.spInsertCourse
GO

CREATE PROCEDURE dbo.spInsertCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourseType' 
)
   DROP PROCEDURE dbo.spInsertCourseType
GO

CREATE PROCEDURE dbo.spInsertCourseType
	@Name nvarchar(50)
AS
	INSERT into dbo.CourseType([Name]) values(@Name);
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculum' 
)
   DROP PROCEDURE dbo.spInsertCurriculum
GO

CREATE PROCEDURE dbo.spInsertCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculumType' 
)
   DROP PROCEDURE dbo.spInsertCurriculumType
GO

CREATE PROCEDURE dbo.spInsertCurriculumType
	@Name nvarchar(50) = 0
AS
	Insert Into CurriculumType values(@Name)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculumType 'NewType'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertFaculty' 
)
   DROP PROCEDURE dbo.spInsertFaculty
GO

CREATE PROCEDURE dbo.spInsertFaculty
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Insert Into Faculty Values(@FirstName, @LastName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnit' 
)
   DROP PROCEDURE dbo.spInsertOrgUnit
GO

CREATE PROCEDURE dbo.spInsertOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertRegisterStatus' 
)
   DROP PROCEDURE dbo.spInsertRegisterStatus
GO

CREATE PROCEDURE dbo.spInsertRegisterStatus
	@ShortName nvarchar(50)
AS
	INSERT INTO RegisterStatus VALUES(@ShortName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudent' 
)
   DROP PROCEDURE dbo.spInsertStudent
GO

CREATE PROCEDURE dbo.spInsertStudent
	@Identifier nvarchar(50), 
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	Insert into Student (Identifier, [Name], LastName) values(@Identifier, @FirstName, @LastName)
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudent '17b-012-cs','Maaz','Khan'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentGroup' 
)
   DROP PROCEDURE dbo.spInsertStudentGroup
GO

CREATE PROCEDURE dbo.spInsertStudentGroup
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@IsActive	bit = 0

AS
	Insert into StudentGroup
	(ShortName,[Name],IsActive) 
	values (@ShortName,@Name,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentStatus' 
)
   DROP PROCEDURE dbo.spInsertStudentStatus
GO

CREATE PROCEDURE dbo.spInsertStudentStatus
	@Name nvarchar(50)
AS
	INSERT into StudentStatus([Name]) values(@Name)
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertStudentStatus 'Pending'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertTerm' 
)
   DROP PROCEDURE dbo.spInsertTerm
GO

CREATE PROCEDURE dbo.spInsertTerm
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateBatch' 
)
   DROP PROCEDURE dbo.spUpdateBatch
GO

CREATE PROCEDURE dbo.spUpdateBatch
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateBatch 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClass' 
)
   DROP PROCEDURE dbo.spUpdateClass
GO

CREATE PROCEDURE dbo.spUpdateClass
	@ClassID	bigint,
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Update Class 
	set	ShortName=@ShortName,[Name]=@Name,Capacity=@Capacity
	where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClassModule' 
)
   DROP PROCEDURE dbo.spUpdateClassModule
GO

CREATE PROCEDURE dbo.spUpdateClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentCourse' 
)
   DROP PROCEDURE dbo.spUpdateComponentCourse
GO

CREATE PROCEDURE dbo.spUpdateComponentCourse
	@ComponentCourseID bigint,
	@ComponentID bigint,
	@CourseID bigint
AS
	Update ComponentCourse
	set ComponentID=@ComponentID,CourseID=@CourseID
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentType' 
)
   DROP PROCEDURE dbo.spUpdateComponentType
GO

CREATE PROCEDURE dbo.spUpdateComponentType
	@ComponentTypeID bigint,
	@Name nvarchar(50),
	@IsRequired bit
AS
	Update ComponentType
	set [Name]=@Name,IsRequired=@IsRequired
	where @ComponentTypeID=ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourse' 
)
   DROP PROCEDURE dbo.spUpdateCourse
GO

CREATE PROCEDURE dbo.spUpdateCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourseType' 
)
   DROP PROCEDURE dbo.spUpdateCourseType
GO

CREATE PROCEDURE dbo.spUpdateCourseType
	@CourseTypeID bigint,
	@Name nvarchar(50)
AS
	UPDATE CourseType
	set [Name] = @Name
	where [CourseTypeID] = @CourseTypeID
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculum' 
)
   DROP PROCEDURE dbo.spUpdateCurriculum
GO

CREATE PROCEDURE dbo.spUpdateCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculumType' 
)
   DROP PROCEDURE dbo.spUpdateCurriculumType
GO

CREATE PROCEDURE dbo.spUpdateCurriculumType
	@CurriculumTypeID bigint = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE CurriculumType 
		SET [Name] = @Name
		WHERE CurriculumTypeID = @CurriculumTypeID 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateFaculty' 
)
   DROP PROCEDURE dbo.spUpdateFaculty
GO

CREATE PROCEDURE dbo.spUpdateFaculty
	@FacultyID bigint, 
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Update	Faculty 
	SET		FirstName = @FirstName,
			LastName = @LastName
	WHERE	FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateFaculty
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnit' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnit
GO

CREATE PROCEDURE dbo.spUpdateOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnitType' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnitType
GO

CREATE PROCEDURE dbo.spUpdateOrgUnitType
	@OrgUnitTypeID bigint,
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE OrgUnitType SET ShortName = @ShortName, [Name] = @Name where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateOrgUnitType 8, 'Mk', 'MaazKhan'
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateRegisterStatus' 
)
   DROP PROCEDURE dbo.spUpdateRegisterStatus
GO

CREATE PROCEDURE dbo.spUpdateRegisterStatus
	@RegisterStatusID bigint,
	@ShortName nvarchar(50)
AS
	Update	RegisterStatus
	SET		ShortName = @ShortName
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudent' 
)
   DROP PROCEDURE dbo.spUpdateStudent
GO

CREATE PROCEDURE dbo.spUpdateStudent
	@StudentID bigint, 
	@Identifier nvarchar(50),
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	UPDATE Student SET Identifier = @Identifier, [Name] = @FirstName, LastName = @LastName
	where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateStudent 3,'17b-50-cs','Ahsan','Khan' 
GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentGroup' 
)
   DROP PROCEDURE dbo.spUpdateStudentGroup
GO

CREATE PROCEDURE dbo.spUpdateStudentGroup
	@StudentGroupID bigint,
	@ShortName		nvarchar(50),
	@Name			nvarchar(250),
	@IsActive		bit = 0

AS
	Update StudentGroup
	set ShortName=@ShortName,[Name]=@Name,IsActive=@IsActive
	where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentStatus' 
)
   DROP PROCEDURE dbo.spUpdateStudentStatus
GO

CREATE PROCEDURE dbo.spUpdateStudentStatus
	@StudentStatusID bigint,
	@Name nvarchar(50)
AS
	UPDATE StudentStatus SET [Name] = @Name where StudentStatusID = @StudentStatusID; 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateStudentStatus 6, 'Inprogress'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateTerm' 
)
   DROP PROCEDURE dbo.spUpdateTerm
GO

CREATE PROCEDURE dbo.spUpdateTerm
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spComponentTotalCourseCreditHrs' 
)
   DROP PROCEDURE dbo.spComponentTotalCourseCreditHrs
GO

CREATE PROCEDURE dbo.spComponentTotalCourseCreditHrs
	@CurriculumID bigint
AS
	SELECT count(ComponentID) as NumberofComponent, sum(TotalCourses) as TotalCourses,sum(TotalCredit) as TotalCredit
	from Component where CurriculumID=@CurriculumID   
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spTotalCreditCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteBatch' 
)
   DROP PROCEDURE dbo.spDeleteBatch
GO

CREATE PROCEDURE dbo.spDeleteBatch
	@BatchID bigint
AS
	Delete from Batch
	where BatchID = @BatchID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteBatch 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClass' 
)
   DROP PROCEDURE dbo.spDeleteClass
GO

CREATE PROCEDURE dbo.spDeleteClass
	@ClassID bigint
AS
	Delete Class where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClassModule' 
)
   DROP PROCEDURE dbo.spDeleteClassModule
GO

CREATE PROCEDURE dbo.spDeleteClassModule
	@ClassModuleID bigint
AS
	DELETE	ClassModule 
	WHERE	ClassModuleID = @ClassModuleID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentCourse' 
)
   DROP PROCEDURE dbo.spDeleteComponentCourse
GO

CREATE PROCEDURE dbo.spDeleteComponentCourse
	@ComponentCourseID bigint
AS
	Delete from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentType' 
)
   DROP PROCEDURE dbo.spDeleteComponentType
GO

CREATE PROCEDURE dbo.spDeleteComponentType
	@ComponentTypeID bigint
AS
	Delete From ComponentType where ComponentTypeID=@ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourse' 
)
   DROP PROCEDURE dbo.spDeleteCourse
GO

CREATE PROCEDURE dbo.spDeleteCourse
	@CourseID bigint
AS
	Delete from Course
	where CourseID=@CourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourseType' 
)
   DROP PROCEDURE dbo.spDeleteCourseType
GO

CREATE PROCEDURE dbo.spDeleteCourseType
	@CourseTypeID bigint
AS
	DELETE from CourseType where CourseTypeID=@CourseTypeID
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculum' 
)
   DROP PROCEDURE dbo.spDeleteCurriculum
GO

CREATE PROCEDURE dbo.spDeleteCurriculum
	@CurriculumID bigint
AS
	Delete from Curriculum where CurriculumID=@CurriculumID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculumType' 
)
   DROP PROCEDURE dbo.spDeleteCurriculumType
GO

CREATE PROCEDURE dbo.spDeleteCurriculumType
	@CurriculumTypeID bigint = 0
AS
	DELETE FROM CurriculumType WHERE CurriculumTypeID = @CurriculumTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteFaculty' 
)
   DROP PROCEDURE dbo.spDeleteFaculty
GO

CREATE PROCEDURE dbo.spDeleteFaculty
	@FacultyID bigint
AS
	DELETE Faculty WHERE FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnit' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnit
GO

CREATE PROCEDURE dbo.spDeleteOrgUnit
	@OrgUnitID bigint
AS
	Delete from 
	OrgUnit
	where OrgUnitID=@OrgUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnitType' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnitType
GO

CREATE PROCEDURE dbo.spDeleteOrgUnitType
	@OrgUnitTypeID bigint
AS
	DELETE FROM OrgUnitType where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteOrgUnitType 8
GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteRegisterStatus' 
)
   DROP PROCEDURE dbo.spDeleteRegisterStatus
GO

CREATE PROCEDURE dbo.spDeleteRegisterStatus
	@RegisterStatusID bigint
AS
	DELETE RegisterStatus
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudent' 
)
   DROP PROCEDURE dbo.spDeleteStudent
GO

CREATE PROCEDURE dbo.spDeleteStudent
	@StudentID bigint
AS
	DELETE from Student where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteStudent 3
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentGroup' 
)
   DROP PROCEDURE dbo.spDeleteStudentGroup
GO

CREATE PROCEDURE dbo.spDeleteStudentGroup
	@StudentGroupID bigint
AS
	Delete from StudentGroup where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudent' 
)
   DROP PROCEDURE dbo.spDeleteStudent
GO

CREATE PROCEDURE dbo.spDeleteStudent
	@StudentStatusID bigint 
AS
	DELETE from StudentStatus where StudentStatusID = @StudentStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteStudent 6
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteTerm' 
)
   DROP PROCEDURE dbo.spDeleteTerm
GO

CREATE PROCEDURE dbo.spDeleteTerm
	@TermID bigint
AS
	Delete from Term where TermID=@TermID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindBatch' 
)
   DROP PROCEDURE dbo.spFindBatch
GO

CREATE PROCEDURE dbo.spFindBatch
	@BatchID bigint
AS
	SELECT Top 1 * 
	from Batch
	where BatchID = @BatchID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spFindBatch 1
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClass' 
)
   DROP PROCEDURE dbo.spFindClass
GO

CREATE PROCEDURE dbo.spFindClass
	@ClassID bigint
AS
	SELECT Top 1 *
	from Class
	where ClassID = @ClassID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClassModule' 
)
   DROP PROCEDURE dbo.spFindClassModule
GO

CREATE PROCEDURE dbo.spFindClassModule
	@ClassModuleID bigint
AS
	SELECT Top 1 *
	from ClassModule
	where ClassModuleID = @ClassModuleID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentCourse' 
)
   DROP PROCEDURE dbo.spFindComponentCourse
GO

CREATE PROCEDURE dbo.spFindComponentCourse
	@ComponentCourseID bigint
AS
	SELECT top 1*
	from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentType' 
)
   DROP PROCEDURE dbo.spFindComponentType
GO

CREATE PROCEDURE dbo.spFindComponentType
	@ComponentTypeID bigint
AS
	SELECT Top 1 * 
	from ComponentType
	Where ComponentTypeID=@ComponentTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourse' 
)
   DROP PROCEDURE dbo.spFindCourse
GO

CREATE PROCEDURE dbo.spFindCourse
	@CourseID bigint
AS
	SELECT Top 1 *
	from Course
	where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseIDComponentCourse' 
)
   DROP PROCEDURE dbo.spFindCourseIDComponentCourse
GO

CREATE PROCEDURE dbo.spFindCourseIDComponentCourse
	@CourseID bigint
AS
	SELECT Top 1 * 
	from ComponentCourse where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourseIDComponentCourse 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseType' 
)
   DROP PROCEDURE dbo.spFindCourseType
GO

CREATE PROCEDURE dbo.spFindCourseType	
	@CourseTypeID bigint
AS
	SELECT TOP 1 *
	FROM CourseType
	WHERE CourseTypeID = @CourseTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculum' 
)
   DROP PROCEDURE dbo.spFindCurriculum
GO

CREATE PROCEDURE dbo.spFindCurriculum
	@CurriculumID bigint
AS
	SELECT Top 1 *
	from Curriculum
	where CurriculumID=@CurriculumID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apFindCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculumType' 
)
   DROP PROCEDURE dbo.spFindCurriculumType
GO

CREATE PROCEDURE dbo.spFindCurriculumType
	@CurriculumTypeID bigint = 0
AS
	SELECT	TOP 1 * 
	FROM	CurriculumType 
	WHERE	CurriculumTypeID = @CurriculumTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCurriculumType 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindFaculty' 
)
   DROP PROCEDURE dbo.spFindFaculty
GO

CREATE PROCEDURE dbo.spFindFaculty
	@FacultyID bigint
AS
	SELECT Top 1 *
	from Faculty
	where FacultyID = @FacultyID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClasModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnit' 
)
   DROP PROCEDURE dbo.spFindOrgUnit
GO

CREATE PROCEDURE dbo.spFindOrgUnit
	@OrgUnitID bigint 
AS
	Select top 1* 
	From OrgUnit
	where OrgUnitID=@OrgUnitID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnitType' 
)
   DROP PROCEDURE dbo.spFindOrgUnitType
GO

CREATE PROCEDURE dbo.spFindOrgUnitType
	@OrgUnitTypeID bigint
AS
	SELECT top 1*
	from OrgUnitType 
	where OrgUnitTypeID = @OrgUnitTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================

-- EXECUTE dbo.spFindOrgUnitType 1
-- GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindParentOrgUnit' 
)
   DROP PROCEDURE dbo.spFindParentOrgUnit
GO

CREATE PROCEDURE dbo.spFindParentOrgUnit
	@ParentUnitID bigint
AS
	SELECT * from OrgUnit 
	where ParentUnitID=@ParentUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindParentOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindRegisterStatus' 
)
   DROP PROCEDURE dbo.spFindRegisterStatus
GO

CREATE PROCEDURE dbo.spFindRegisterStatus
	@RegisterStatusID bigint
AS
	SELECT top 1 *
	from RegisterStatus
	where RegisterStatusID = @RegisterStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudent' 
)
   DROP PROCEDURE dbo.spFindStudent
GO

CREATE PROCEDURE dbo.spFindStudent
	@StudentID bigint 
AS
	SELECT Identifier, [Name], lastName from Student where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spFindStudent 1
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentGroup' 
)
   DROP PROCEDURE dbo.spFindStudentGroup
GO

CREATE PROCEDURE dbo.spFindStudentGroup
	@StudentGroupID bigint
AS
	SELECT TOP 1 *
	FROM StudentGroup
	WHERE StudentGroupID = @StudentGroupID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentStatus' 
)
   DROP PROCEDURE dbo.spFindStudentStatus
GO

CREATE PROCEDURE dbo.spFindStudentStatus
	@StudentStatusID bigint
AS
	SELECT [Name] from StudentStatus where StudentStatusID = @StudentStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spFindStudentStatus 5
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindTerm' 
)
   DROP PROCEDURE dbo.spFindTerm
GO

CREATE PROCEDURE dbo.spFindTerm
	@TermID bigint
AS
	SELECT top 1 *
	from Term
	where TermID=@TermID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllBatch' 
)
   DROP PROCEDURE dbo.spGetAllBatch
GO

CREATE PROCEDURE dbo.spGetAllBatch
AS
	SELECT * from Batch FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllBatch 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClass' 
)
   DROP PROCEDURE dbo.spGetAllClass
GO

CREATE PROCEDURE dbo.spGetAllClass

AS
	SELECT * from Class FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClassModule' 
)
   DROP PROCEDURE dbo.spGetAllClassModule
GO

CREATE PROCEDURE dbo.spGetAllClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponentCourse' 
)
   DROP PROCEDURE dbo.spGetAllComponentCourse
GO

CREATE PROCEDURE dbo.spGetAllComponentCourse

AS
	SELECT * from ComponentCourse FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGETAllComponentType' 
)
   DROP PROCEDURE dbo.spGETAllComponentType
GO

CREATE PROCEDURE dbo.spGETAllComponentType
AS
	SELECT * from ComponentType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGETALLComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourse' 
)
   DROP PROCEDURE dbo.spGetAllCourse
GO

CREATE PROCEDURE dbo.spGetAllCourse
AS
	SELECT *
	From Course
	For json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourseType' 
)
   DROP PROCEDURE dbo.spGetAllCourseType
GO

CREATE PROCEDURE dbo.spGetAllCourseType
AS
	SELECT * from  dbo.CourseType FOR JSON Auto;
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculum' 
)
   DROP PROCEDURE dbo.spGetAllCurriculum
GO

CREATE PROCEDURE dbo.spGetAllCurriculum

AS
	SELECT * from Curriculum FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculumType' 
)
   DROP PROCEDURE dbo.spGetAllCurriculumType
GO

CREATE PROCEDURE dbo.spGetAllCurriculumType
AS
	SELECT	*
	FROM	CurriculumType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllFaculty' 
)
   DROP PROCEDURE dbo.spGetAllFaculty
GO

CREATE PROCEDURE dbo.spGetAllFaculty
AS
	SELECT	* FROM Faculty FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnit' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnit
GO

CREATE PROCEDURE dbo.spGetAllOrgUnit

AS
	SELECT * 
	from OrgUnit FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnitType' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnitType
GO

CREATE PROCEDURE dbo.spGetAllOrgUnitType	
AS
	SELECT *From OrgUnitType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnitType 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllRegisterStatus' 
)
   DROP PROCEDURE dbo.spGetAllRegisterStatus
GO

CREATE PROCEDURE dbo.spGetAllRegisterStatus
AS
	SELECT * FROM RegisterStatus FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudent' 
)
   DROP PROCEDURE dbo.spGetAllStudent
GO

CREATE PROCEDURE dbo.spGetAllStudent
AS
	SELECT *from Student FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudent 
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentGroup' 
)
   DROP PROCEDURE dbo.spGetAllStudentGroup
GO

CREATE PROCEDURE dbo.spGetAllStudentGroup

AS
	SELECT * from StudentGroup FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentStatus' 
)
   DROP PROCEDURE dbo.spGetAllStudentStatus
GO

CREATE PROCEDURE dbo.spGetAllStudentStatus

AS
	SELECT *from StudentStatus FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudentStatus
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllTerm' 
)
   DROP PROCEDURE dbo.spGetAllTerm
GO

CREATE PROCEDURE dbo.spGetAllTerm
AS
	SELECT * from Term FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetComponentSummary' 
)
   DROP PROCEDURE dbo.spGetComponentSummary
GO

CREATE PROCEDURE dbo.spGetComponentSummary
	@ComponentID bigint
AS
		select CC.ComponentID,  COUNT(c.CourseID) as 'TotalCourses', 
		Sum(c.TheoryCredit+c.LabCredit) as 'TotalCreditHrs' 
from	Course as c Inner join ComponentCourse CC on CC.CourseID = C.CourseID
where	CC.ComponentID = @ComponentID
group by CC.ComponentID
		
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetComponentSummary 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCourseName' 
)
   DROP PROCEDURE dbo.spGetCourseName
GO

CREATE PROCEDURE dbo.spGetCourseName
	@Name nvarchar(50)
AS
	SELECT * from Course where [Name] =@Name
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCourseName 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCurriculumType' 
)
   DROP PROCEDURE dbo.spGetCurriculumType
GO

CREATE PROCEDURE dbo.spGetCurriculumType
	@CurriculumTypeID bigint
AS
	SELECT * from Curriculum where CurriculumTypeID=@CurriculumTypeID
	FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetOwnerUnit' 
)
   DROP PROCEDURE dbo.spGetOwnerUnit
GO

CREATE PROCEDURE dbo.spGetOwnerUnit
	@OwnerUnitID bigint
AS
	SELECT * from Curriculum where OwnerUnitID =@OwnerUnitID
	FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetOwnerUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertBatch' 
)
   DROP PROCEDURE dbo.spInsertBatch
GO

CREATE PROCEDURE dbo.spInsertBatch
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertBatch "BS-2022", "BS(CS)2022", 2022, 2026, 4, 2  
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClass' 
)
   DROP PROCEDURE dbo.spInsertClass
GO

CREATE PROCEDURE dbo.spInsertClass
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Insert into Class (ShortName,[Name],Capacity) values (@ShortName,@Name,@Capacity)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClassModule' 
)
   DROP PROCEDURE dbo.spInsertClassModule
GO

CREATE PROCEDURE dbo.spInsertClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentCourse' 
)
   DROP PROCEDURE dbo.spInsertComponentCourse
GO

CREATE PROCEDURE dbo.spInsertComponentCourse
	@ComponentID bigint,
	@CourseID bigint
AS
	Insert into ComponentCourse (ComponentID,CourseID) values (@ComponentID,@CourseID)
	select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentType' 
)
   DROP PROCEDURE dbo.spInsertComponentType
GO

CREATE PROCEDURE dbo.spInsertComponentType
	@Name nvarchar(50), 
	@IsRequired bit
AS
	INSERT INTO ComponentType ([Name],IsRequired) values(@Name,@IsRequired)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spCreateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourse' 
)
   DROP PROCEDURE dbo.spInsertCourse
GO

CREATE PROCEDURE dbo.spInsertCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourseType' 
)
   DROP PROCEDURE dbo.spInsertCourseType
GO

CREATE PROCEDURE dbo.spInsertCourseType
	@Name nvarchar(50)
AS
	INSERT into dbo.CourseType([Name]) values(@Name);
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculum' 
)
   DROP PROCEDURE dbo.spInsertCurriculum
GO

CREATE PROCEDURE dbo.spInsertCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculumType' 
)
   DROP PROCEDURE dbo.spInsertCurriculumType
GO

CREATE PROCEDURE dbo.spInsertCurriculumType
	@Name nvarchar(50) = 0
AS
	Insert Into CurriculumType values(@Name)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculumType 'NewType'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertFaculty' 
)
   DROP PROCEDURE dbo.spInsertFaculty
GO

CREATE PROCEDURE dbo.spInsertFaculty
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Insert Into Faculty Values(@FirstName, @LastName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnit' 
)
   DROP PROCEDURE dbo.spInsertOrgUnit
GO

CREATE PROCEDURE dbo.spInsertOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertRegisterStatus' 
)
   DROP PROCEDURE dbo.spInsertRegisterStatus
GO

CREATE PROCEDURE dbo.spInsertRegisterStatus
	@ShortName nvarchar(50)
AS
	INSERT INTO RegisterStatus VALUES(@ShortName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudent' 
)
   DROP PROCEDURE dbo.spInsertStudent
GO

CREATE PROCEDURE dbo.spInsertStudent
	@Identifier nvarchar(50), 
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	Insert into Student (Identifier, [Name], LastName) values(@Identifier, @FirstName, @LastName)
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudent '17b-012-cs','Maaz','Khan'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentGroup' 
)
   DROP PROCEDURE dbo.spInsertStudentGroup
GO

CREATE PROCEDURE dbo.spInsertStudentGroup
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@IsActive	bit = 0

AS
	Insert into StudentGroup
	(ShortName,[Name],IsActive) 
	values (@ShortName,@Name,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentStatus' 
)
   DROP PROCEDURE dbo.spInsertStudentStatus
GO

CREATE PROCEDURE dbo.spInsertStudentStatus
	@Name nvarchar(50)
AS
	INSERT into StudentStatus([Name]) values(@Name)
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertStudentStatus 'Pending'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertTerm' 
)
   DROP PROCEDURE dbo.spInsertTerm
GO

CREATE PROCEDURE dbo.spInsertTerm
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateBatch' 
)
   DROP PROCEDURE dbo.spUpdateBatch
GO

CREATE PROCEDURE dbo.spUpdateBatch
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateBatch 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClass' 
)
   DROP PROCEDURE dbo.spUpdateClass
GO

CREATE PROCEDURE dbo.spUpdateClass
	@ClassID	bigint,
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Update Class 
	set	ShortName=@ShortName,[Name]=@Name,Capacity=@Capacity
	where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClassModule' 
)
   DROP PROCEDURE dbo.spUpdateClassModule
GO

CREATE PROCEDURE dbo.spUpdateClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentCourse' 
)
   DROP PROCEDURE dbo.spUpdateComponentCourse
GO

CREATE PROCEDURE dbo.spUpdateComponentCourse
	@ComponentCourseID bigint,
	@ComponentID bigint,
	@CourseID bigint
AS
	Update ComponentCourse
	set ComponentID=@ComponentID,CourseID=@CourseID
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentType' 
)
   DROP PROCEDURE dbo.spUpdateComponentType
GO

CREATE PROCEDURE dbo.spUpdateComponentType
	@ComponentTypeID bigint,
	@Name nvarchar(50),
	@IsRequired bit
AS
	Update ComponentType
	set [Name]=@Name,IsRequired=@IsRequired
	where @ComponentTypeID=ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourse' 
)
   DROP PROCEDURE dbo.spUpdateCourse
GO

CREATE PROCEDURE dbo.spUpdateCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourseType' 
)
   DROP PROCEDURE dbo.spUpdateCourseType
GO

CREATE PROCEDURE dbo.spUpdateCourseType
	@CourseTypeID bigint,
	@Name nvarchar(50)
AS
	UPDATE CourseType
	set [Name] = @Name
	where [CourseTypeID] = @CourseTypeID
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculum' 
)
   DROP PROCEDURE dbo.spUpdateCurriculum
GO

CREATE PROCEDURE dbo.spUpdateCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculumType' 
)
   DROP PROCEDURE dbo.spUpdateCurriculumType
GO

CREATE PROCEDURE dbo.spUpdateCurriculumType
	@CurriculumTypeID bigint = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE CurriculumType 
		SET [Name] = @Name
		WHERE CurriculumTypeID = @CurriculumTypeID 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateFaculty' 
)
   DROP PROCEDURE dbo.spUpdateFaculty
GO

CREATE PROCEDURE dbo.spUpdateFaculty
	@FacultyID bigint, 
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Update	Faculty 
	SET		FirstName = @FirstName,
			LastName = @LastName
	WHERE	FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateFaculty
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnit' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnit
GO

CREATE PROCEDURE dbo.spUpdateOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnitType' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnitType
GO

CREATE PROCEDURE dbo.spUpdateOrgUnitType
	@OrgUnitTypeID bigint,
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE OrgUnitType SET ShortName = @ShortName, [Name] = @Name where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateOrgUnitType 8, 'Mk', 'MaazKhan'
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateRegisterStatus' 
)
   DROP PROCEDURE dbo.spUpdateRegisterStatus
GO

CREATE PROCEDURE dbo.spUpdateRegisterStatus
	@RegisterStatusID bigint,
	@ShortName nvarchar(50)
AS
	Update	RegisterStatus
	SET		ShortName = @ShortName
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudent' 
)
   DROP PROCEDURE dbo.spUpdateStudent
GO

CREATE PROCEDURE dbo.spUpdateStudent
	@StudentID bigint, 
	@Identifier nvarchar(50),
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	UPDATE Student SET Identifier = @Identifier, [Name] = @FirstName, LastName = @LastName
	where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateStudent 3,'17b-50-cs','Ahsan','Khan' 
GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentGroup' 
)
   DROP PROCEDURE dbo.spUpdateStudentGroup
GO

CREATE PROCEDURE dbo.spUpdateStudentGroup
	@StudentGroupID bigint,
	@ShortName		nvarchar(50),
	@Name			nvarchar(250),
	@IsActive		bit = 0

AS
	Update StudentGroup
	set ShortName=@ShortName,[Name]=@Name,IsActive=@IsActive
	where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentStatus' 
)
   DROP PROCEDURE dbo.spUpdateStudentStatus
GO

CREATE PROCEDURE dbo.spUpdateStudentStatus
	@StudentStatusID bigint,
	@Name nvarchar(50)
AS
	UPDATE StudentStatus SET [Name] = @Name where StudentStatusID = @StudentStatusID; 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateStudentStatus 6, 'Inprogress'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateTerm' 
)
   DROP PROCEDURE dbo.spUpdateTerm
GO

CREATE PROCEDURE dbo.spUpdateTerm
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spComponentTotalCourseCreditHrs' 
)
   DROP PROCEDURE dbo.spComponentTotalCourseCreditHrs
GO

CREATE PROCEDURE dbo.spComponentTotalCourseCreditHrs
	@CurriculumID bigint
AS
	SELECT count(ComponentID) as NumberofComponent, sum(TotalCourses) as TotalCourses,sum(TotalCredit) as TotalCredit
	from Component where CurriculumID=@CurriculumID   
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spTotalCreditCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteBatch' 
)
   DROP PROCEDURE dbo.spDeleteBatch
GO

CREATE PROCEDURE dbo.spDeleteBatch
	@BatchID bigint
AS
	Delete from Batch
	where BatchID = @BatchID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteBatch 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClass' 
)
   DROP PROCEDURE dbo.spDeleteClass
GO

CREATE PROCEDURE dbo.spDeleteClass
	@ClassID bigint
AS
	Delete Class where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClassModule' 
)
   DROP PROCEDURE dbo.spDeleteClassModule
GO

CREATE PROCEDURE dbo.spDeleteClassModule
	@ClassModuleID bigint
AS
	DELETE	ClassModule 
	WHERE	ClassModuleID = @ClassModuleID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentCourse' 
)
   DROP PROCEDURE dbo.spDeleteComponentCourse
GO

CREATE PROCEDURE dbo.spDeleteComponentCourse
	@ComponentCourseID bigint
AS
	Delete from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentType' 
)
   DROP PROCEDURE dbo.spDeleteComponentType
GO

CREATE PROCEDURE dbo.spDeleteComponentType
	@ComponentTypeID bigint
AS
	Delete From ComponentType where ComponentTypeID=@ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourse' 
)
   DROP PROCEDURE dbo.spDeleteCourse
GO

CREATE PROCEDURE dbo.spDeleteCourse
	@CourseID bigint
AS
	Delete from Course
	where CourseID=@CourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourseType' 
)
   DROP PROCEDURE dbo.spDeleteCourseType
GO

CREATE PROCEDURE dbo.spDeleteCourseType
	@CourseTypeID bigint
AS
	DELETE from CourseType where CourseTypeID=@CourseTypeID
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculum' 
)
   DROP PROCEDURE dbo.spDeleteCurriculum
GO

CREATE PROCEDURE dbo.spDeleteCurriculum
	@CurriculumID bigint
AS
	Delete from Curriculum where CurriculumID=@CurriculumID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculumType' 
)
   DROP PROCEDURE dbo.spDeleteCurriculumType
GO

CREATE PROCEDURE dbo.spDeleteCurriculumType
	@CurriculumTypeID bigint = 0
AS
	DELETE FROM CurriculumType WHERE CurriculumTypeID = @CurriculumTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteFaculty' 
)
   DROP PROCEDURE dbo.spDeleteFaculty
GO

CREATE PROCEDURE dbo.spDeleteFaculty
	@FacultyID bigint
AS
	DELETE Faculty WHERE FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnit' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnit
GO

CREATE PROCEDURE dbo.spDeleteOrgUnit
	@OrgUnitID bigint
AS
	Delete from 
	OrgUnit
	where OrgUnitID=@OrgUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnitType' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnitType
GO

CREATE PROCEDURE dbo.spDeleteOrgUnitType
	@OrgUnitTypeID bigint
AS
	DELETE FROM OrgUnitType where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteOrgUnitType 8
GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteRegisterStatus' 
)
   DROP PROCEDURE dbo.spDeleteRegisterStatus
GO

CREATE PROCEDURE dbo.spDeleteRegisterStatus
	@RegisterStatusID bigint
AS
	DELETE RegisterStatus
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudent' 
)
   DROP PROCEDURE dbo.spDeleteStudent
GO

CREATE PROCEDURE dbo.spDeleteStudent
	@StudentID bigint
AS
	DELETE from Student where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteStudent 3
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentGroup' 
)
   DROP PROCEDURE dbo.spDeleteStudentGroup
GO

CREATE PROCEDURE dbo.spDeleteStudentGroup
	@StudentGroupID bigint
AS
	Delete from StudentGroup where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudent' 
)
   DROP PROCEDURE dbo.spDeleteStudent
GO

CREATE PROCEDURE dbo.spDeleteStudent
	@StudentStatusID bigint 
AS
	DELETE from StudentStatus where StudentStatusID = @StudentStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteStudent 6
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteTerm' 
)
   DROP PROCEDURE dbo.spDeleteTerm
GO

CREATE PROCEDURE dbo.spDeleteTerm
	@TermID bigint
AS
	Delete from Term where TermID=@TermID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindBatch' 
)
   DROP PROCEDURE dbo.spFindBatch
GO

CREATE PROCEDURE dbo.spFindBatch
	@BatchID bigint
AS
	SELECT Top 1 * 
	from Batch
	where BatchID = @BatchID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spFindBatch 1
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClass' 
)
   DROP PROCEDURE dbo.spFindClass
GO

CREATE PROCEDURE dbo.spFindClass
	@ClassID bigint
AS
	SELECT Top 1 *
	from Class
	where ClassID = @ClassID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClassModule' 
)
   DROP PROCEDURE dbo.spFindClassModule
GO

CREATE PROCEDURE dbo.spFindClassModule
	@ClassModuleID bigint
AS
	SELECT Top 1 *
	from ClassModule
	where ClassModuleID = @ClassModuleID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentCourse' 
)
   DROP PROCEDURE dbo.spFindComponentCourse
GO

CREATE PROCEDURE dbo.spFindComponentCourse
	@ComponentCourseID bigint
AS
	SELECT top 1*
	from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentType' 
)
   DROP PROCEDURE dbo.spFindComponentType
GO

CREATE PROCEDURE dbo.spFindComponentType
	@ComponentTypeID bigint
AS
	SELECT Top 1 * 
	from ComponentType
	Where ComponentTypeID=@ComponentTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourse' 
)
   DROP PROCEDURE dbo.spFindCourse
GO

CREATE PROCEDURE dbo.spFindCourse
	@CourseID bigint
AS
	SELECT Top 1 *
	from Course
	where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseIDComponentCourse' 
)
   DROP PROCEDURE dbo.spFindCourseIDComponentCourse
GO

CREATE PROCEDURE dbo.spFindCourseIDComponentCourse
	@CourseID bigint
AS
	SELECT Top 1 * 
	from ComponentCourse where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourseIDComponentCourse 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseType' 
)
   DROP PROCEDURE dbo.spFindCourseType
GO

CREATE PROCEDURE dbo.spFindCourseType	
	@CourseTypeID bigint
AS
	SELECT TOP 1 *
	FROM CourseType
	WHERE CourseTypeID = @CourseTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculum' 
)
   DROP PROCEDURE dbo.spFindCurriculum
GO

CREATE PROCEDURE dbo.spFindCurriculum
	@CurriculumID bigint
AS
	SELECT Top 1 *
	from Curriculum
	where CurriculumID=@CurriculumID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apFindCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculumType' 
)
   DROP PROCEDURE dbo.spFindCurriculumType
GO

CREATE PROCEDURE dbo.spFindCurriculumType
	@CurriculumTypeID bigint = 0
AS
	SELECT	TOP 1 * 
	FROM	CurriculumType 
	WHERE	CurriculumTypeID = @CurriculumTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCurriculumType 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindFaculty' 
)
   DROP PROCEDURE dbo.spFindFaculty
GO

CREATE PROCEDURE dbo.spFindFaculty
	@FacultyID bigint
AS
	SELECT Top 1 *
	from Faculty
	where FacultyID = @FacultyID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClasModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnit' 
)
   DROP PROCEDURE dbo.spFindOrgUnit
GO

CREATE PROCEDURE dbo.spFindOrgUnit
	@OrgUnitID bigint 
AS
	Select top 1* 
	From OrgUnit
	where OrgUnitID=@OrgUnitID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnitType' 
)
   DROP PROCEDURE dbo.spFindOrgUnitType
GO

CREATE PROCEDURE dbo.spFindOrgUnitType
	@OrgUnitTypeID bigint
AS
	SELECT top 1*
	from OrgUnitType 
	where OrgUnitTypeID = @OrgUnitTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================

-- EXECUTE dbo.spFindOrgUnitType 1
-- GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindParentOrgUnit' 
)
   DROP PROCEDURE dbo.spFindParentOrgUnit
GO

CREATE PROCEDURE dbo.spFindParentOrgUnit
	@ParentUnitID bigint
AS
	SELECT * from OrgUnit 
	where ParentUnitID=@ParentUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindParentOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindRegisterStatus' 
)
   DROP PROCEDURE dbo.spFindRegisterStatus
GO

CREATE PROCEDURE dbo.spFindRegisterStatus
	@RegisterStatusID bigint
AS
	SELECT top 1 *
	from RegisterStatus
	where RegisterStatusID = @RegisterStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudent' 
)
   DROP PROCEDURE dbo.spFindStudent
GO

CREATE PROCEDURE dbo.spFindStudent
	@StudentID bigint 
AS
	SELECT Identifier, [Name], lastName from Student where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spFindStudent 1
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentGroup' 
)
   DROP PROCEDURE dbo.spFindStudentGroup
GO

CREATE PROCEDURE dbo.spFindStudentGroup
	@StudentGroupID bigint
AS
	SELECT TOP 1 *
	FROM StudentGroup
	WHERE StudentGroupID = @StudentGroupID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentStatus' 
)
   DROP PROCEDURE dbo.spFindStudentStatus
GO

CREATE PROCEDURE dbo.spFindStudentStatus
	@StudentStatusID bigint
AS
	SELECT [Name] from StudentStatus where StudentStatusID = @StudentStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spFindStudentStatus 5
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindTerm' 
)
   DROP PROCEDURE dbo.spFindTerm
GO

CREATE PROCEDURE dbo.spFindTerm
	@TermID bigint
AS
	SELECT top 1 *
	from Term
	where TermID=@TermID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllBatch' 
)
   DROP PROCEDURE dbo.spGetAllBatch
GO

CREATE PROCEDURE dbo.spGetAllBatch
AS
	SELECT * from Batch FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllBatch 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClass' 
)
   DROP PROCEDURE dbo.spGetAllClass
GO

CREATE PROCEDURE dbo.spGetAllClass

AS
	SELECT * from Class FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClassModule' 
)
   DROP PROCEDURE dbo.spGetAllClassModule
GO

CREATE PROCEDURE dbo.spGetAllClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponentCourse' 
)
   DROP PROCEDURE dbo.spGetAllComponentCourse
GO

CREATE PROCEDURE dbo.spGetAllComponentCourse

AS
	SELECT * from ComponentCourse FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGETAllComponentType' 
)
   DROP PROCEDURE dbo.spGETAllComponentType
GO

CREATE PROCEDURE dbo.spGETAllComponentType
AS
	SELECT * from ComponentType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGETALLComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourse' 
)
   DROP PROCEDURE dbo.spGetAllCourse
GO

CREATE PROCEDURE dbo.spGetAllCourse
AS
	SELECT *
	From Course
	For json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourseType' 
)
   DROP PROCEDURE dbo.spGetAllCourseType
GO

CREATE PROCEDURE dbo.spGetAllCourseType
AS
	SELECT * from  dbo.CourseType FOR JSON Auto;
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculum' 
)
   DROP PROCEDURE dbo.spGetAllCurriculum
GO

CREATE PROCEDURE dbo.spGetAllCurriculum

AS
	SELECT * from Curriculum FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculumType' 
)
   DROP PROCEDURE dbo.spGetAllCurriculumType
GO

CREATE PROCEDURE dbo.spGetAllCurriculumType
AS
	SELECT	*
	FROM	CurriculumType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllFaculty' 
)
   DROP PROCEDURE dbo.spGetAllFaculty
GO

CREATE PROCEDURE dbo.spGetAllFaculty
AS
	SELECT	* FROM Faculty FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnit' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnit
GO

CREATE PROCEDURE dbo.spGetAllOrgUnit

AS
	SELECT * 
	from OrgUnit FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnitType' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnitType
GO

CREATE PROCEDURE dbo.spGetAllOrgUnitType	
AS
	SELECT *From OrgUnitType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnitType 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllRegisterStatus' 
)
   DROP PROCEDURE dbo.spGetAllRegisterStatus
GO

CREATE PROCEDURE dbo.spGetAllRegisterStatus
AS
	SELECT * FROM RegisterStatus FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudent' 
)
   DROP PROCEDURE dbo.spGetAllStudent
GO

CREATE PROCEDURE dbo.spGetAllStudent
AS
	SELECT *from Student FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudent 
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentGroup' 
)
   DROP PROCEDURE dbo.spGetAllStudentGroup
GO

CREATE PROCEDURE dbo.spGetAllStudentGroup

AS
	SELECT * from StudentGroup FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentStatus' 
)
   DROP PROCEDURE dbo.spGetAllStudentStatus
GO

CREATE PROCEDURE dbo.spGetAllStudentStatus

AS
	SELECT *from StudentStatus FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudentStatus
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllTerm' 
)
   DROP PROCEDURE dbo.spGetAllTerm
GO

CREATE PROCEDURE dbo.spGetAllTerm
AS
	SELECT * from Term FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetComponentSummary' 
)
   DROP PROCEDURE dbo.spGetComponentSummary
GO

CREATE PROCEDURE dbo.spGetComponentSummary
	@ComponentID bigint
AS
		select CC.ComponentID,  COUNT(c.CourseID) as 'TotalCourses', 
		Sum(c.TheoryCredit+c.LabCredit) as 'TotalCreditHrs' 
from	Course as c Inner join ComponentCourse CC on CC.CourseID = C.CourseID
where	CC.ComponentID = @ComponentID
group by CC.ComponentID
		
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetComponentSummary 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCourseName' 
)
   DROP PROCEDURE dbo.spGetCourseName
GO

CREATE PROCEDURE dbo.spGetCourseName
	@Name nvarchar(50)
AS
	SELECT * from Course where [Name] =@Name
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCourseName 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCurriculumType' 
)
   DROP PROCEDURE dbo.spGetCurriculumType
GO

CREATE PROCEDURE dbo.spGetCurriculumType
	@CurriculumTypeID bigint
AS
	SELECT * from Curriculum where CurriculumTypeID=@CurriculumTypeID
	FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetOwnerUnit' 
)
   DROP PROCEDURE dbo.spGetOwnerUnit
GO

CREATE PROCEDURE dbo.spGetOwnerUnit
	@OwnerUnitID bigint
AS
	SELECT * from Curriculum where OwnerUnitID =@OwnerUnitID
	FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetOwnerUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertBatch' 
)
   DROP PROCEDURE dbo.spInsertBatch
GO

CREATE PROCEDURE dbo.spInsertBatch
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertBatch "BS-2022", "BS(CS)2022", 2022, 2026, 4, 2  
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClass' 
)
   DROP PROCEDURE dbo.spInsertClass
GO

CREATE PROCEDURE dbo.spInsertClass
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Insert into Class (ShortName,[Name],Capacity) values (@ShortName,@Name,@Capacity)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClassModule' 
)
   DROP PROCEDURE dbo.spInsertClassModule
GO

CREATE PROCEDURE dbo.spInsertClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentCourse' 
)
   DROP PROCEDURE dbo.spInsertComponentCourse
GO

CREATE PROCEDURE dbo.spInsertComponentCourse
	@ComponentID bigint,
	@CourseID bigint
AS
	Insert into ComponentCourse (ComponentID,CourseID) values (@ComponentID,@CourseID)
	select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentType' 
)
   DROP PROCEDURE dbo.spInsertComponentType
GO

CREATE PROCEDURE dbo.spInsertComponentType
	@Name nvarchar(50), 
	@IsRequired bit
AS
	INSERT INTO ComponentType ([Name],IsRequired) values(@Name,@IsRequired)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spCreateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourse' 
)
   DROP PROCEDURE dbo.spInsertCourse
GO

CREATE PROCEDURE dbo.spInsertCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourseType' 
)
   DROP PROCEDURE dbo.spInsertCourseType
GO

CREATE PROCEDURE dbo.spInsertCourseType
	@Name nvarchar(50)
AS
	INSERT into dbo.CourseType([Name]) values(@Name);
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculum' 
)
   DROP PROCEDURE dbo.spInsertCurriculum
GO

CREATE PROCEDURE dbo.spInsertCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculumType' 
)
   DROP PROCEDURE dbo.spInsertCurriculumType
GO

CREATE PROCEDURE dbo.spInsertCurriculumType
	@Name nvarchar(50) = 0
AS
	Insert Into CurriculumType values(@Name)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculumType 'NewType'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertFaculty' 
)
   DROP PROCEDURE dbo.spInsertFaculty
GO

CREATE PROCEDURE dbo.spInsertFaculty
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Insert Into Faculty Values(@FirstName, @LastName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnit' 
)
   DROP PROCEDURE dbo.spInsertOrgUnit
GO

CREATE PROCEDURE dbo.spInsertOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertRegisterStatus' 
)
   DROP PROCEDURE dbo.spInsertRegisterStatus
GO

CREATE PROCEDURE dbo.spInsertRegisterStatus
	@ShortName nvarchar(50)
AS
	INSERT INTO RegisterStatus VALUES(@ShortName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudent' 
)
   DROP PROCEDURE dbo.spInsertStudent
GO

CREATE PROCEDURE dbo.spInsertStudent
	@Identifier nvarchar(50), 
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	Insert into Student (Identifier, [Name], LastName) values(@Identifier, @FirstName, @LastName)
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudent '17b-012-cs','Maaz','Khan'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentGroup' 
)
   DROP PROCEDURE dbo.spInsertStudentGroup
GO

CREATE PROCEDURE dbo.spInsertStudentGroup
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@IsActive	bit = 0

AS
	Insert into StudentGroup
	(ShortName,[Name],IsActive) 
	values (@ShortName,@Name,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentStatus' 
)
   DROP PROCEDURE dbo.spInsertStudentStatus
GO

CREATE PROCEDURE dbo.spInsertStudentStatus
	@Name nvarchar(50)
AS
	INSERT into StudentStatus([Name]) values(@Name)
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertStudentStatus 'Pending'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertTerm' 
)
   DROP PROCEDURE dbo.spInsertTerm
GO

CREATE PROCEDURE dbo.spInsertTerm
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateBatch' 
)
   DROP PROCEDURE dbo.spUpdateBatch
GO

CREATE PROCEDURE dbo.spUpdateBatch
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateBatch 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClass' 
)
   DROP PROCEDURE dbo.spUpdateClass
GO

CREATE PROCEDURE dbo.spUpdateClass
	@ClassID	bigint,
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Update Class 
	set	ShortName=@ShortName,[Name]=@Name,Capacity=@Capacity
	where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClassModule' 
)
   DROP PROCEDURE dbo.spUpdateClassModule
GO

CREATE PROCEDURE dbo.spUpdateClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentCourse' 
)
   DROP PROCEDURE dbo.spUpdateComponentCourse
GO

CREATE PROCEDURE dbo.spUpdateComponentCourse
	@ComponentCourseID bigint,
	@ComponentID bigint,
	@CourseID bigint
AS
	Update ComponentCourse
	set ComponentID=@ComponentID,CourseID=@CourseID
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentType' 
)
   DROP PROCEDURE dbo.spUpdateComponentType
GO

CREATE PROCEDURE dbo.spUpdateComponentType
	@ComponentTypeID bigint,
	@Name nvarchar(50),
	@IsRequired bit
AS
	Update ComponentType
	set [Name]=@Name,IsRequired=@IsRequired
	where @ComponentTypeID=ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourse' 
)
   DROP PROCEDURE dbo.spUpdateCourse
GO

CREATE PROCEDURE dbo.spUpdateCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourseType' 
)
   DROP PROCEDURE dbo.spUpdateCourseType
GO

CREATE PROCEDURE dbo.spUpdateCourseType
	@CourseTypeID bigint,
	@Name nvarchar(50)
AS
	UPDATE CourseType
	set [Name] = @Name
	where [CourseTypeID] = @CourseTypeID
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculum' 
)
   DROP PROCEDURE dbo.spUpdateCurriculum
GO

CREATE PROCEDURE dbo.spUpdateCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculumType' 
)
   DROP PROCEDURE dbo.spUpdateCurriculumType
GO

CREATE PROCEDURE dbo.spUpdateCurriculumType
	@CurriculumTypeID bigint = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE CurriculumType 
		SET [Name] = @Name
		WHERE CurriculumTypeID = @CurriculumTypeID 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateFaculty' 
)
   DROP PROCEDURE dbo.spUpdateFaculty
GO

CREATE PROCEDURE dbo.spUpdateFaculty
	@FacultyID bigint, 
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Update	Faculty 
	SET		FirstName = @FirstName,
			LastName = @LastName
	WHERE	FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateFaculty
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnit' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnit
GO

CREATE PROCEDURE dbo.spUpdateOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnitType' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnitType
GO

CREATE PROCEDURE dbo.spUpdateOrgUnitType
	@OrgUnitTypeID bigint,
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE OrgUnitType SET ShortName = @ShortName, [Name] = @Name where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateOrgUnitType 8, 'Mk', 'MaazKhan'
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateRegisterStatus' 
)
   DROP PROCEDURE dbo.spUpdateRegisterStatus
GO

CREATE PROCEDURE dbo.spUpdateRegisterStatus
	@RegisterStatusID bigint,
	@ShortName nvarchar(50)
AS
	Update	RegisterStatus
	SET		ShortName = @ShortName
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudent' 
)
   DROP PROCEDURE dbo.spUpdateStudent
GO

CREATE PROCEDURE dbo.spUpdateStudent
	@StudentID bigint, 
	@Identifier nvarchar(50),
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	UPDATE Student SET Identifier = @Identifier, [Name] = @FirstName, LastName = @LastName
	where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateStudent 3,'17b-50-cs','Ahsan','Khan' 
GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentGroup' 
)
   DROP PROCEDURE dbo.spUpdateStudentGroup
GO

CREATE PROCEDURE dbo.spUpdateStudentGroup
	@StudentGroupID bigint,
	@ShortName		nvarchar(50),
	@Name			nvarchar(250),
	@IsActive		bit = 0

AS
	Update StudentGroup
	set ShortName=@ShortName,[Name]=@Name,IsActive=@IsActive
	where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentStatus' 
)
   DROP PROCEDURE dbo.spUpdateStudentStatus
GO

CREATE PROCEDURE dbo.spUpdateStudentStatus
	@StudentStatusID bigint,
	@Name nvarchar(50)
AS
	UPDATE StudentStatus SET [Name] = @Name where StudentStatusID = @StudentStatusID; 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateStudentStatus 6, 'Inprogress'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateTerm' 
)
   DROP PROCEDURE dbo.spUpdateTerm
GO

CREATE PROCEDURE dbo.spUpdateTerm
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spComponentTotalCourseCreditHrs' 
)
   DROP PROCEDURE dbo.spComponentTotalCourseCreditHrs
GO

CREATE PROCEDURE dbo.spComponentTotalCourseCreditHrs
	@CurriculumID bigint
AS
	SELECT count(ComponentID) as NumberofComponent, sum(TotalCourses) as TotalCourses,sum(TotalCredit) as TotalCredit
	from Component where CurriculumID=@CurriculumID   
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spTotalCreditCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteAssessmentCategory' 
)
   DROP PROCEDURE dbo.spDeleteAssessmentCategory
GO

CREATE PROCEDURE dbo.spDeleteAssessmentCategory
	@AssessmentCategoryID bigint 
AS
	DELETE FROM AssessmentCategory  
	WHERE AssessmentCategoryID = @AssessmentCategoryID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteAssessmentCategory 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteBatch' 
)
   DROP PROCEDURE dbo.spDeleteBatch
GO

CREATE PROCEDURE dbo.spDeleteBatch
	@BatchID bigint
AS
	Delete from Batch
	where BatchID = @BatchID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteBatch 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClass' 
)
   DROP PROCEDURE dbo.spDeleteClass
GO

CREATE PROCEDURE dbo.spDeleteClass
	@ClassID bigint
AS
	Delete Class where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClassModule' 
)
   DROP PROCEDURE dbo.spDeleteClassModule
GO

CREATE PROCEDURE dbo.spDeleteClassModule
	@ClassModuleID bigint
AS
	DELETE	ClassModule 
	WHERE	ClassModuleID = @ClassModuleID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponent' 
)
   DROP PROCEDURE dbo.spDeleteComponent
GO

CREATE PROCEDURE dbo.spDeleteComponent
	@ComponentID bigint
AS
	Delete from Component
	where ComponentID = @ComponentID
GO
-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentCourse' 
)
   DROP PROCEDURE dbo.spDeleteComponentCourse
GO

CREATE PROCEDURE dbo.spDeleteComponentCourse
	@ComponentCourseID bigint
AS
	Delete from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentType' 
)
   DROP PROCEDURE dbo.spDeleteComponentType
GO

CREATE PROCEDURE dbo.spDeleteComponentType
	@ComponentTypeID bigint
AS
	Delete From ComponentType where ComponentTypeID=@ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourse' 
)
   DROP PROCEDURE dbo.spDeleteCourse
GO

CREATE PROCEDURE dbo.spDeleteCourse
	@CourseID bigint
AS
	Delete from Course
	where CourseID=@CourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourseType' 
)
   DROP PROCEDURE dbo.spDeleteCourseType
GO

CREATE PROCEDURE dbo.spDeleteCourseType
	@CourseTypeID bigint
AS
	DELETE from CourseType where CourseTypeID=@CourseTypeID
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculum' 
)
   DROP PROCEDURE dbo.spDeleteCurriculum
GO

CREATE PROCEDURE dbo.spDeleteCurriculum
	@CurriculumID bigint
AS
	Delete from Curriculum where CurriculumID=@CurriculumID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculumType' 
)
   DROP PROCEDURE dbo.spDeleteCurriculumType
GO

CREATE PROCEDURE dbo.spDeleteCurriculumType
	@CurriculumTypeID bigint = 0
AS
	DELETE FROM CurriculumType WHERE CurriculumTypeID = @CurriculumTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteFaculty' 
)
   DROP PROCEDURE dbo.spDeleteFaculty
GO

CREATE PROCEDURE dbo.spDeleteFaculty
	@FacultyID bigint
AS
	DELETE Faculty WHERE FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteModuleAssessment' 
)
   DROP PROCEDURE dbo.spDeleteModuleAssessment
GO

CREATE PROCEDURE dbo.spDeleteModuleAssessment
	@ModuleAssessmentID bigint
AS
	DELETE FROM ModuleAssessment 
	WHERE ModuleAssessmentID = @ModuleAssessmentID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteModuleAssessment 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spDeleteModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spDeleteModuleAssessmentMark
	@ModuleAssessmentMarkID bigint
AS
	DELETE FROM ModuleAssessmentMark
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteModuleAssessmentMark 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnit' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnit
GO

CREATE PROCEDURE dbo.spDeleteOrgUnit
	@OrgUnitID bigint
AS
	Delete from 
	OrgUnit
	where OrgUnitID=@OrgUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnitType' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnitType
GO

CREATE PROCEDURE dbo.spDeleteOrgUnitType
	@OrgUnitTypeID bigint
AS
	DELETE FROM OrgUnitType where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteOrgUnitType 8
GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteRegisterStatus' 
)
   DROP PROCEDURE dbo.spDeleteRegisterStatus
GO

CREATE PROCEDURE dbo.spDeleteRegisterStatus
	@RegisterStatusID bigint
AS
	DELETE RegisterStatus
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudent' 
)
   DROP PROCEDURE dbo.spDeleteStudent
GO

CREATE PROCEDURE dbo.spDeleteStudent
	@StudentID bigint
AS
	DELETE from Student where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudent 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentGroup' 
)
   DROP PROCEDURE dbo.spDeleteStudentGroup
GO

CREATE PROCEDURE dbo.spDeleteStudentGroup
	@StudentGroupID bigint
AS
	Delete from StudentGroup where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentStatus' 
)
   DROP PROCEDURE dbo.spDeleteStudentStatus
GO

CREATE PROCEDURE dbo.spDeleteStudentStatus
	@StudentStatusID bigint 
AS
	DELETE from StudentStatus where StudentStatusID = @StudentStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudent 6
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteTerm' 
)
   DROP PROCEDURE dbo.spDeleteTerm
GO

CREATE PROCEDURE dbo.spDeleteTerm
	@TermID bigint
AS
	Delete from Term where TermID=@TermID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindAssessmentCategory' 
)
   DROP PROCEDURE dbo.spFindAssessmentCategory
GO

CREATE PROCEDURE dbo.spFindAssessmentCategory
	@AssessmentCategoryID bigint
AS
	SELECT * FROM AssessmentCategory
	WHERE AssessmentCategoryID = @AssessmentCategoryID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindAssessmentCategory 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindBatch' 
)
   DROP PROCEDURE dbo.spFindBatch
GO

CREATE PROCEDURE dbo.spFindBatch
	@BatchID bigint
AS
	SELECT Top 1 * 
	from Batch
	where BatchID = @BatchID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindBatch 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClass' 
)
   DROP PROCEDURE dbo.spFindClass
GO

CREATE PROCEDURE dbo.spFindClass
	@ClassID bigint
AS
	SELECT Top 1 *
	from Class
	where ClassID = @ClassID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClassModule' 
)
   DROP PROCEDURE dbo.spFindClassModule
GO

CREATE PROCEDURE dbo.spFindClassModule
	@ClassModuleID bigint
AS
	SELECT Top 1 *
	from ClassModule
	where ClassModuleID = @ClassModuleID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponent' 
)
   DROP PROCEDURE dbo.spFindComponent
GO

CREATE PROCEDURE dbo.spFindComponent
	@ComponentID bigint
AS
	SELECT Top 1 * 
	from Component
	where ComponentID = @ComponentID
	For json Auto, Without_Array_Wrapper;
GO
-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentCourse' 
)
   DROP PROCEDURE dbo.spFindComponentCourse
GO

CREATE PROCEDURE dbo.spFindComponentCourse
	@ComponentCourseID bigint
AS
	SELECT top 1*
	from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentType' 
)
   DROP PROCEDURE dbo.spFindComponentType
GO

CREATE PROCEDURE dbo.spFindComponentType
	@ComponentTypeID bigint
AS
	SELECT Top 1 * 
	from ComponentType
	Where ComponentTypeID=@ComponentTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourse' 
)
   DROP PROCEDURE dbo.spFindCourse
GO

CREATE PROCEDURE dbo.spFindCourse
	@CourseID bigint
AS
	SELECT Top 1 *
	from Course
	where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseIDComponentCourse' 
)
   DROP PROCEDURE dbo.spFindCourseIDComponentCourse
GO

CREATE PROCEDURE dbo.spFindCourseIDComponentCourse
	@CourseID bigint
AS
	SELECT Top 1 * 
	from ComponentCourse where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourseIDComponentCourse 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseType' 
)
   DROP PROCEDURE dbo.spFindCourseType
GO

CREATE PROCEDURE dbo.spFindCourseType	
	@CourseTypeID bigint
AS
	SELECT TOP 1 *
	FROM CourseType
	WHERE CourseTypeID = @CourseTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculum' 
)
   DROP PROCEDURE dbo.spFindCurriculum
GO

CREATE PROCEDURE dbo.spFindCurriculum
	@CurriculumID bigint
AS
	SELECT Top 1 *
	from Curriculum
	where CurriculumID=@CurriculumID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apFindCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculumType' 
)
   DROP PROCEDURE dbo.spFindCurriculumType
GO

CREATE PROCEDURE dbo.spFindCurriculumType
	@CurriculumTypeID bigint = 0
AS
	SELECT	TOP 1 * 
	FROM	CurriculumType 
	WHERE	CurriculumTypeID = @CurriculumTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCurriculumType 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindFaculty' 
)
   DROP PROCEDURE dbo.spFindFaculty
GO

CREATE PROCEDURE dbo.spFindFaculty
	@FacultyID bigint
AS
	SELECT Top 1 *
	from Faculty
	where FacultyID = @FacultyID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClasModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindModuleAssessment' 
)
   DROP PROCEDURE dbo.spFindModuleAssessment
GO

CREATE PROCEDURE dbo.spFindModuleAssessment
	@ModuleAssessmentID bigint

AS
	SELECT Top 1 * 
	FROM ModuleAssessment
	WHERE ModuleAssessmentID = @ModuleAssessmentID
	For json Auto, without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindModuleAssessment 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spFindModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spFindModuleAssessmentMark
	@ModuleAssessmentMarkID bigint
AS
	SELECT Top 1 *
	FROM ModuleAssessmentMark
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindModuleAssessmentMark 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnit' 
)
   DROP PROCEDURE dbo.spFindOrgUnit
GO

CREATE PROCEDURE dbo.spFindOrgUnit
	@OrgUnitID bigint 
AS
	Select top 1* 
	From OrgUnit
	where OrgUnitID=@OrgUnitID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnitType' 
)
   DROP PROCEDURE dbo.spFindOrgUnitType
GO

CREATE PROCEDURE dbo.spFindOrgUnitType
	@OrgUnitTypeID bigint
AS
	SELECT top 1*
	from OrgUnitType 
	where OrgUnitTypeID = @OrgUnitTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================

-- EXECUTE dbo.spFindOrgUnitType 1
-- GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindParentOrgUnit' 
)
   DROP PROCEDURE dbo.spFindParentOrgUnit
GO

CREATE PROCEDURE dbo.spFindParentOrgUnit
	@ParentUnitID bigint
AS
	SELECT * from OrgUnit 
	where ParentUnitID=@ParentUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindParentOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindRegisterStatus' 
)
   DROP PROCEDURE dbo.spFindRegisterStatus
GO

CREATE PROCEDURE dbo.spFindRegisterStatus
	@RegisterStatusID bigint
AS
	SELECT top 1 *
	from RegisterStatus
	where RegisterStatusID = @RegisterStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudent' 
)
   DROP PROCEDURE dbo.spFindStudent
GO

CREATE PROCEDURE dbo.spFindStudent
	@StudentID bigint 
AS
	Select top 1*
	from Student 
	where StudentID = @StudentID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudent 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentGroup' 
)
   DROP PROCEDURE dbo.spFindStudentGroup
GO

CREATE PROCEDURE dbo.spFindStudentGroup
	@StudentGroupID bigint
AS
	SELECT TOP 1 *
	FROM StudentGroup
	WHERE StudentGroupID = @StudentGroupID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentStatus' 
)
   DROP PROCEDURE dbo.spFindStudentStatus
GO

CREATE PROCEDURE dbo.spFindStudentStatus
	@StudentStatusID bigint
AS
	Select top 1*from StudentStatus where StudentStatusID = @StudentStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentStatus 5
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindTerm' 
)
   DROP PROCEDURE dbo.spFindTerm
GO

CREATE PROCEDURE dbo.spFindTerm
	@TermID bigint
AS
	SELECT top 1 *
	from Term
	where TermID=@TermID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllAssessmentCategory' 
)
   DROP PROCEDURE dbo.spGetAllAssessmentCategory
GO

CREATE PROCEDURE dbo.spGetAllAssessmentCategory
AS
	SELECT * FROM AssessmentCategory FOR JSON AUTO;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllAssessmentCategory 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllBatch' 
)
   DROP PROCEDURE dbo.spGetAllBatch
GO

CREATE PROCEDURE dbo.spGetAllBatch
AS
	SELECT * from Batch FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllBatch 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClass' 
)
   DROP PROCEDURE dbo.spGetAllClass
GO

CREATE PROCEDURE dbo.spGetAllClass

AS
	SELECT * from Class FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClassModule' 
)
   DROP PROCEDURE dbo.spGetAllClassModule
GO

CREATE PROCEDURE dbo.spGetAllClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponent' 
)
   DROP PROCEDURE dbo.spGetAllComponent
GO

CREATE PROCEDURE dbo.spGetAllComponent
AS
	SELECT * from Component FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponentCourse' 
)
   DROP PROCEDURE dbo.spGetAllComponentCourse
GO

CREATE PROCEDURE dbo.spGetAllComponentCourse

AS
	SELECT * from ComponentCourse FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGETAllComponentType' 
)
   DROP PROCEDURE dbo.spGETAllComponentType
GO

CREATE PROCEDURE dbo.spGETAllComponentType
AS
	SELECT * from ComponentType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGETALLComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourse' 
)
   DROP PROCEDURE dbo.spGetAllCourse
GO

CREATE PROCEDURE dbo.spGetAllCourse
AS
	SELECT *
	From Course
	For json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourseType' 
)
   DROP PROCEDURE dbo.spGetAllCourseType
GO

CREATE PROCEDURE dbo.spGetAllCourseType
AS
	SELECT * from  dbo.CourseType FOR JSON Auto;
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculum' 
)
   DROP PROCEDURE dbo.spGetAllCurriculum
GO

CREATE PROCEDURE dbo.spGetAllCurriculum

AS
	SELECT * from Curriculum FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculumType' 
)
   DROP PROCEDURE dbo.spGetAllCurriculumType
GO

CREATE PROCEDURE dbo.spGetAllCurriculumType
AS
	SELECT	*
	FROM	CurriculumType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllFaculty' 
)
   DROP PROCEDURE dbo.spGetAllFaculty
GO

CREATE PROCEDURE dbo.spGetAllFaculty
AS
	SELECT	* FROM Faculty FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllModuleAssessment' 
)
   DROP PROCEDURE dbo.spGetAllModuleAssessment
GO

CREATE PROCEDURE dbo.spGetAllModuleAssessment
AS
	SELECT *
	From ModuleAssessment
	For json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllModuleAssessment
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spGetAllModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spGetAllModuleAssessmentMark
AS
	SELECT * FROM ModuleAssessmentMark FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllModuleAssessmentMark 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnit' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnit
GO

CREATE PROCEDURE dbo.spGetAllOrgUnit

AS
	SELECT * 
	from OrgUnit FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnitType' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnitType
GO

CREATE PROCEDURE dbo.spGetAllOrgUnitType	
AS
	SELECT *From OrgUnitType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnitType 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllRegisterStatus' 
)
   DROP PROCEDURE dbo.spGetAllRegisterStatus
GO

CREATE PROCEDURE dbo.spGetAllRegisterStatus
AS
	SELECT * FROM RegisterStatus FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudent' 
)
   DROP PROCEDURE dbo.spGetAllStudent
GO

CREATE PROCEDURE dbo.spGetAllStudent
AS
	SELECT *from Student FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudent 
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentGroup' 
)
   DROP PROCEDURE dbo.spGetAllStudentGroup
GO

CREATE PROCEDURE dbo.spGetAllStudentGroup

AS
	SELECT * from StudentGroup FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentStatus' 
)
   DROP PROCEDURE dbo.spGetAllStudentStatus
GO

CREATE PROCEDURE dbo.spGetAllStudentStatus

AS
	SELECT *from StudentStatus FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudentStatus
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllTerm' 
)
   DROP PROCEDURE dbo.spGetAllTerm
GO

CREATE PROCEDURE dbo.spGetAllTerm
AS
	SELECT * from Term FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetComponentSummary' 
)
   DROP PROCEDURE dbo.spGetComponentSummary
GO

CREATE PROCEDURE dbo.spGetComponentSummary
	@ComponentID bigint
AS
		select CC.ComponentID,  COUNT(c.CourseID) as 'TotalCourses', 
		Sum(c.TheoryCredit+c.LabCredit) as 'TotalCreditHrs' 
from	Course as c Inner join ComponentCourse CC on CC.CourseID = C.CourseID
where	CC.ComponentID = @ComponentID
group by CC.ComponentID
		
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetComponentSummary 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCourseName' 
)
   DROP PROCEDURE dbo.spGetCourseName
GO

CREATE PROCEDURE dbo.spGetCourseName
	@Name nvarchar(50)
AS
	SELECT * from Course where [Name] =@Name
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCourseName 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCurriculumType' 
)
   DROP PROCEDURE dbo.spGetCurriculumType
GO

CREATE PROCEDURE dbo.spGetCurriculumType
	@CurriculumTypeID bigint
AS
	SELECT * from Curriculum where CurriculumTypeID=@CurriculumTypeID
	FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetOwnerUnit' 
)
   DROP PROCEDURE dbo.spGetOwnerUnit
GO

CREATE PROCEDURE dbo.spGetOwnerUnit
	@OwnerUnitID bigint
AS
	SELECT * from Curriculum where OwnerUnitID =@OwnerUnitID
	FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetOwnerUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertAssessmentCategory' 
)
   DROP PROCEDURE dbo.spInsertAssessmentCategory
GO

CREATE PROCEDURE dbo.spInsertAssessmentCategory
	@Name nvarchar(50), 
	@Weight dec(18, 0),
	@ClassModuleID bigint
AS
	INSERT INTO AssessmentCategory ([Name], [Weight], ClassModuleID) values(@Name, @Weight, @ClassModuleID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertAssessmentCategory 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertBatch' 
)
   DROP PROCEDURE dbo.spInsertBatch
GO

CREATE PROCEDURE dbo.spInsertBatch
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertBatch "BS-2022", "BS(CS)2022", 2022, 2026, 4, 2  
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClass' 
)
   DROP PROCEDURE dbo.spInsertClass
GO

CREATE PROCEDURE dbo.spInsertClass
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Insert into Class (ShortName,[Name],Capacity) values (@ShortName,@Name,@Capacity)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClassModule' 
)
   DROP PROCEDURE dbo.spInsertClassModule
GO

CREATE PROCEDURE dbo.spInsertClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponent' 
)
   DROP PROCEDURE dbo.spInsertComponent
GO

CREATE PROCEDURE dbo.spInsertComponent
	@ShortName nvarchar(10),
	@Name nvarchar(50),
	@ComponentTypeID bigint,
	@CurriculumID bigint,
	@TotalCredit int,
	@TotalCourses int,
	@IsLimitCourses bit,
	@IsLimitCreditHrs bit

AS
	INSERT INTO Component (ShortName,[Name],ComponentTypeID,CurriculumID,TotalCredit,TotalCourses,IsLimitCourses,IsLimitCreditHrs) 
	values(@ShortName,@Name,@ComponentTypeID,@CurriculumID,@TotalCredit,@TotalCourses,@IsLimitCourses,@IsLimitCreditHrs)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentCourse' 
)
   DROP PROCEDURE dbo.spInsertComponentCourse
GO

CREATE PROCEDURE dbo.spInsertComponentCourse
	@ComponentID bigint,
	@CourseID bigint
AS
	Insert into ComponentCourse (ComponentID,CourseID) values (@ComponentID,@CourseID)
	select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentType' 
)
   DROP PROCEDURE dbo.spInsertComponentType
GO

CREATE PROCEDURE dbo.spInsertComponentType
	@Name nvarchar(50), 
	@IsRequired bit
AS
	INSERT INTO ComponentType ([Name],IsRequired) values(@Name,@IsRequired)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spCreateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourse' 
)
   DROP PROCEDURE dbo.spInsertCourse
GO

CREATE PROCEDURE dbo.spInsertCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourseType' 
)
   DROP PROCEDURE dbo.spInsertCourseType
GO

CREATE PROCEDURE dbo.spInsertCourseType
	@Name nvarchar(50)
AS
	INSERT into dbo.CourseType([Name]) values(@Name);
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculum' 
)
   DROP PROCEDURE dbo.spInsertCurriculum
GO

CREATE PROCEDURE dbo.spInsertCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculumType' 
)
   DROP PROCEDURE dbo.spInsertCurriculumType
GO

CREATE PROCEDURE dbo.spInsertCurriculumType
	@Name nvarchar(50) = 0
AS
	Insert Into CurriculumType values(@Name)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculumType 'NewType'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertFaculty' 
)
   DROP PROCEDURE dbo.spInsertFaculty
GO

CREATE PROCEDURE dbo.spInsertFaculty
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Insert Into Faculty Values(@FirstName, @LastName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertModuleAssessment' 
)
   DROP PROCEDURE dbo.spInsertModuleAssessment
GO

CREATE PROCEDURE dbo.spInsertModuleAssessment
	@Name nvarchar(50),
	@Weight dec(18,0),
	@AssessmentCategoryID bigint
AS
	INSERT INTO ModuleAssessment ([Name], [Weight], AssessmentCategoryID) values (@Name, @Weight, @AssessmentCategoryID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertModuleAssessment 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spInsertModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spInsertModuleAssessmentMark
	@ObtainMark dec(18,0), 
	@RegistrationID bigint,
	@ModuleAssessmentID bigint
AS
	INSERT INTO ModuleAssessmentMark (ObtainMark, RegistrationID, ModuleAssessmentID) values (@ObtainMark, @RegistrationID, @ModuleAssessmentID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertModuleAssessmentMark 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnit' 
)
   DROP PROCEDURE dbo.spInsertOrgUnit
GO

CREATE PROCEDURE dbo.spInsertOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnitType' 
)
   DROP PROCEDURE dbo.spInsertOrgUnitType
GO

CREATE PROCEDURE dbo.spInsertOrgUnitType
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	Insert Into OrgUnitType ([Name],ShortName) 
	values(@Name,@ShortName)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOrgUnitType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertRegisterStatus' 
)
   DROP PROCEDURE dbo.spInsertRegisterStatus
GO

CREATE PROCEDURE dbo.spInsertRegisterStatus
	@ShortName nvarchar(50)
AS
	INSERT INTO RegisterStatus VALUES(@ShortName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudent' 
)
   DROP PROCEDURE dbo.spInsertStudent
GO

CREATE PROCEDURE dbo.spInsertStudent
	@Identifier nvarchar(50), 
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	Insert into Student (Identifier, FirstName, LastName) values(@Identifier, @FirstName, @LastName)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudent '17b-012-cs','Maaz','Khan'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentGroup' 
)
   DROP PROCEDURE dbo.spInsertStudentGroup
GO

CREATE PROCEDURE dbo.spInsertStudentGroup
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@IsActive	bit = 0

AS
	Insert into StudentGroup
	(ShortName,[Name],IsActive) 
	values (@ShortName,@Name,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentStatus' 
)
   DROP PROCEDURE dbo.spInsertStudentStatus
GO

CREATE PROCEDURE dbo.spInsertStudentStatus
	@Name nvarchar(50)
AS
	INSERT into StudentStatus([Name]) values(@Name)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertStudentStatus 'Pending'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertTerm' 
)
   DROP PROCEDURE dbo.spInsertTerm
GO

CREATE PROCEDURE dbo.spInsertTerm
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@StartDate	date = '0',
	@EndDate	date = '0',
	@IsActive	bit

AS
	Insert into Term 
	(ShortName,[Name],StartDate,EndDate,IsActive) 
	values (@ShortName,@Name,@StartDate,@EndDate,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateAssessmentCategory' 
)
   DROP PROCEDURE dbo.spUpdateAssessmentCategory
GO

CREATE PROCEDURE dbo.spUpdateAssessmentCategory
	@AssessmentCategoryID bigint,
	@Name nvarchar(50),
	@Weight dec(18,0),
	@ClassModuleID bigint
AS
	UPDATE AssessmentCategory 
	SET [Name] = @Name, [Weight] = @Weight, ClassModuleID = @ClassModuleID
	WHERE AssessmentCategoryID = @AssessmentCategoryID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateBatch' 
)
   DROP PROCEDURE dbo.spUpdateBatch
GO

CREATE PROCEDURE dbo.spUpdateBatch
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateBatch 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClass' 
)
   DROP PROCEDURE dbo.spUpdateClass
GO

CREATE PROCEDURE dbo.spUpdateClass
	@ClassID	bigint,
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Update Class 
	set	ShortName=@ShortName,[Name]=@Name,Capacity=@Capacity
	where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClassModule' 
)
   DROP PROCEDURE dbo.spUpdateClassModule
GO

CREATE PROCEDURE dbo.spUpdateClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponent' 
)
   DROP PROCEDURE dbo.spUpdateComponent
GO

CREATE PROCEDURE dbo.spUpdateComponent
	@ComponentID bigint,
	@ShortName nvarchar(10),
	@Name nvarchar(50),
	@ComponentTypeID bigint,
	@CurriculumID bigint,
	@TotalCredit int,
	@TotalCourses int,
	@IsLimitCourses bit,
	@IsLimitCreditHrs bit
AS
	UPDATE Component
	SET ShortName=@ShortName, [Name]=@Name, ComponentTypeID=@ComponentTypeID, CurriculumID=@CurriculumID,TotalCredit=@TotalCredit,TotalCourses=@TotalCourses,
	IsLimitCourses=@IsLimitCourses,IsLimitCreditHrs=@IsLimitCreditHrs
	WHERE ComponentID=@ComponentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentCourse' 
)
   DROP PROCEDURE dbo.spUpdateComponentCourse
GO

CREATE PROCEDURE dbo.spUpdateComponentCourse
	@ComponentCourseID bigint,
	@ComponentID bigint,
	@CourseID bigint
AS
	Update ComponentCourse
	set ComponentID=@ComponentID,CourseID=@CourseID
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentType' 
)
   DROP PROCEDURE dbo.spUpdateComponentType
GO

CREATE PROCEDURE dbo.spUpdateComponentType
	@ComponentTypeID bigint,
	@Name nvarchar(50),
	@IsRequired bit
AS
	Update ComponentType
	set [Name]=@Name,IsRequired=@IsRequired
	where @ComponentTypeID=ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourse' 
)
   DROP PROCEDURE dbo.spUpdateCourse
GO

CREATE PROCEDURE dbo.spUpdateCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourseType' 
)
   DROP PROCEDURE dbo.spUpdateCourseType
GO

CREATE PROCEDURE dbo.spUpdateCourseType
	@CourseTypeID bigint,
	@Name nvarchar(50)
AS
	UPDATE CourseType
	set [Name] = @Name
	where [CourseTypeID] = @CourseTypeID
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculum' 
)
   DROP PROCEDURE dbo.spUpdateCurriculum
GO

CREATE PROCEDURE dbo.spUpdateCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculumType' 
)
   DROP PROCEDURE dbo.spUpdateCurriculumType
GO

CREATE PROCEDURE dbo.spUpdateCurriculumType
	@CurriculumTypeID bigint = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE CurriculumType 
		SET [Name] = @Name
		WHERE CurriculumTypeID = @CurriculumTypeID 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateFaculty' 
)
   DROP PROCEDURE dbo.spUpdateFaculty
GO

CREATE PROCEDURE dbo.spUpdateFaculty
	@FacultyID bigint, 
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Update	Faculty 
	SET		FirstName = @FirstName,
			LastName = @LastName
	WHERE	FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateFaculty
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateModuleAssessment' 
)
   DROP PROCEDURE dbo.spUpdateModuleAssessment
GO

CREATE PROCEDURE dbo.spUpdateModuleAssessment
	@ModuleAssessmentID bigint,
	@Name nvarchar(50),
	@Weight dec(18, 0),
	@AssessmentCategoryID bigint
AS
	UPDATE ModuleAssessment
	SET [Name] = @Name, [Weight] = @Weight, AssessmentCategoryID = @AssessmentCategoryID
	WHERE ModuleAssessmentID = @ModuleAssessmentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateModuleAssessment 1, 2, 3, 4
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spUpdateModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spUpdateModuleAssessmentMark
	@ModuleAssessmentMarkID bigint,
	@ObtainMark dec(18, 0),
	@RegistrationID bigint,
	@ModuleAssessmentID bigint
AS
	UPDATE ModuleAssessmentMark
	SET ObtainMark = @ObtainMark, RegistrationID = @RegistrationID, ModuleAssessmentID = @ModuleAssessmentID
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateModuleAssessmentMark 1, 2, 3, 4
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnit' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnit
GO

CREATE PROCEDURE dbo.spUpdateOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnitType' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnitType
GO

CREATE PROCEDURE dbo.spUpdateOrgUnitType
	@OrgUnitTypeID bigint,
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE OrgUnitType SET ShortName = @ShortName, [Name] = @Name where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateOrgUnitType 8, 'Mk', 'MaazKhan'
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateRegisterStatus' 
)
   DROP PROCEDURE dbo.spUpdateRegisterStatus
GO

CREATE PROCEDURE dbo.spUpdateRegisterStatus
	@RegisterStatusID bigint,
	@ShortName nvarchar(50)
AS
	Update	RegisterStatus
	SET		ShortName = @ShortName
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudent' 
)
   DROP PROCEDURE dbo.spUpdateStudent
GO

CREATE PROCEDURE dbo.spUpdateStudent
	@StudentID bigint, 
	@Identifier nvarchar(50),
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	UPDATE Student SET Identifier = @Identifier, FirstName = @FirstName, LastName = @LastName
	where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudent 3,'17b-50-cs','Ahsan','Khan' 
--GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentGroup' 
)
   DROP PROCEDURE dbo.spUpdateStudentGroup
GO

CREATE PROCEDURE dbo.spUpdateStudentGroup
	@StudentGroupID bigint,
	@ShortName		nvarchar(50),
	@Name			nvarchar(250),
	@IsActive		bit = 0

AS
	Update StudentGroup
	set ShortName=@ShortName,[Name]=@Name,IsActive=@IsActive
	where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentStatus' 
)
   DROP PROCEDURE dbo.spUpdateStudentStatus
GO

CREATE PROCEDURE dbo.spUpdateStudentStatus
	@StudentStatusID bigint,
	@Name nvarchar(50)
AS
	UPDATE StudentStatus SET [Name] = @Name where StudentStatusID = @StudentStatusID; 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateStudentStatus 6, 'Inprogress'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateTerm' 
)
   DROP PROCEDURE dbo.spUpdateTerm
GO

CREATE PROCEDURE dbo.spUpdateTerm
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spComponentTotalCourseCreditHrs' 
)
   DROP PROCEDURE dbo.spComponentTotalCourseCreditHrs
GO

CREATE PROCEDURE dbo.spComponentTotalCourseCreditHrs
	@CurriculumID bigint
AS
	SELECT count(ComponentID) as NumberofComponent, sum(TotalCourses) as TotalCourses,sum(TotalCredit) as TotalCredit
	from Component where CurriculumID=@CurriculumID   
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spTotalCreditCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteAssessmentCategory' 
)
   DROP PROCEDURE dbo.spDeleteAssessmentCategory
GO

CREATE PROCEDURE dbo.spDeleteAssessmentCategory
	@AssessmentCategoryID bigint 
AS
	DELETE FROM AssessmentCategory  
	WHERE AssessmentCategoryID = @AssessmentCategoryID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteAssessmentCategory 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteBatch' 
)
   DROP PROCEDURE dbo.spDeleteBatch
GO

CREATE PROCEDURE dbo.spDeleteBatch
	@BatchID bigint
AS
	Delete from Batch
	where BatchID = @BatchID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteBatch 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClass' 
)
   DROP PROCEDURE dbo.spDeleteClass
GO

CREATE PROCEDURE dbo.spDeleteClass
	@ClassID bigint
AS
	Delete Class where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClassModule' 
)
   DROP PROCEDURE dbo.spDeleteClassModule
GO

CREATE PROCEDURE dbo.spDeleteClassModule
	@ClassModuleID bigint
AS
	DELETE	ClassModule 
	WHERE	ClassModuleID = @ClassModuleID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponent' 
)
   DROP PROCEDURE dbo.spDeleteComponent
GO

CREATE PROCEDURE dbo.spDeleteComponent
	@ComponentID bigint
AS
	Delete from Component
	where ComponentID = @ComponentID
GO
-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentCourse' 
)
   DROP PROCEDURE dbo.spDeleteComponentCourse
GO

CREATE PROCEDURE dbo.spDeleteComponentCourse
	@ComponentCourseID bigint
AS
	Delete from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentType' 
)
   DROP PROCEDURE dbo.spDeleteComponentType
GO

CREATE PROCEDURE dbo.spDeleteComponentType
	@ComponentTypeID bigint
AS
	Delete From ComponentType where ComponentTypeID=@ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourse' 
)
   DROP PROCEDURE dbo.spDeleteCourse
GO

CREATE PROCEDURE dbo.spDeleteCourse
	@CourseID bigint
AS
	Delete from Course
	where CourseID=@CourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourseType' 
)
   DROP PROCEDURE dbo.spDeleteCourseType
GO

CREATE PROCEDURE dbo.spDeleteCourseType
	@CourseTypeID bigint
AS
	DELETE from CourseType where CourseTypeID=@CourseTypeID
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculum' 
)
   DROP PROCEDURE dbo.spDeleteCurriculum
GO

CREATE PROCEDURE dbo.spDeleteCurriculum
	@CurriculumID bigint
AS
	Delete from Curriculum where CurriculumID=@CurriculumID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculumType' 
)
   DROP PROCEDURE dbo.spDeleteCurriculumType
GO

CREATE PROCEDURE dbo.spDeleteCurriculumType
	@CurriculumTypeID bigint = 0
AS
	DELETE FROM CurriculumType WHERE CurriculumTypeID = @CurriculumTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteFaculty' 
)
   DROP PROCEDURE dbo.spDeleteFaculty
GO

CREATE PROCEDURE dbo.spDeleteFaculty
	@FacultyID bigint
AS
	DELETE Faculty WHERE FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteModuleAssessment' 
)
   DROP PROCEDURE dbo.spDeleteModuleAssessment
GO

CREATE PROCEDURE dbo.spDeleteModuleAssessment
	@ModuleAssessmentID bigint
AS
	DELETE FROM ModuleAssessment 
	WHERE ModuleAssessmentID = @ModuleAssessmentID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteModuleAssessment 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spDeleteModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spDeleteModuleAssessmentMark
	@ModuleAssessmentMarkID bigint
AS
	DELETE FROM ModuleAssessmentMark
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteModuleAssessmentMark 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnit' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnit
GO

CREATE PROCEDURE dbo.spDeleteOrgUnit
	@OrgUnitID bigint
AS
	Delete from 
	OrgUnit
	where OrgUnitID=@OrgUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnitType' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnitType
GO

CREATE PROCEDURE dbo.spDeleteOrgUnitType
	@OrgUnitTypeID bigint
AS
	DELETE FROM OrgUnitType where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteOrgUnitType 8
GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteRegisterStatus' 
)
   DROP PROCEDURE dbo.spDeleteRegisterStatus
GO

CREATE PROCEDURE dbo.spDeleteRegisterStatus
	@RegisterStatusID bigint
AS
	DELETE RegisterStatus
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudent' 
)
   DROP PROCEDURE dbo.spDeleteStudent
GO

CREATE PROCEDURE dbo.spDeleteStudent
	@StudentID bigint
AS
	DELETE from Student where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudent 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentGroup' 
)
   DROP PROCEDURE dbo.spDeleteStudentGroup
GO

CREATE PROCEDURE dbo.spDeleteStudentGroup
	@StudentGroupID bigint
AS
	Delete from StudentGroup where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentProgram' 
)
   DROP PROCEDURE dbo.spDeleteStudentProgram
GO

CREATE PROCEDURE dbo.spDeleteStudentProgram
	@StudentProgramID bigint
AS
	Delete from StudentProgram
	where StudentProgramID = @StudentProgramID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentStatus' 
)
   DROP PROCEDURE dbo.spDeleteStudentStatus
GO

CREATE PROCEDURE dbo.spDeleteStudentStatus
	@StudentStatusID bigint 
AS
	DELETE from StudentStatus where StudentStatusID = @StudentStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudent 6
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteTerm' 
)
   DROP PROCEDURE dbo.spDeleteTerm
GO

CREATE PROCEDURE dbo.spDeleteTerm
	@TermID bigint
AS
	Delete from Term where TermID=@TermID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindAssessmentCategory' 
)
   DROP PROCEDURE dbo.spFindAssessmentCategory
GO

CREATE PROCEDURE dbo.spFindAssessmentCategory
	@AssessmentCategoryID bigint
AS
	SELECT * FROM AssessmentCategory
	WHERE AssessmentCategoryID = @AssessmentCategoryID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindAssessmentCategory 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindBatch' 
)
   DROP PROCEDURE dbo.spFindBatch
GO

CREATE PROCEDURE dbo.spFindBatch
	@BatchID bigint
AS
	SELECT Top 1 * 
	from Batch
	where BatchID = @BatchID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindBatch 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClass' 
)
   DROP PROCEDURE dbo.spFindClass
GO

CREATE PROCEDURE dbo.spFindClass
	@ClassID bigint
AS
	SELECT Top 1 *
	from Class
	where ClassID = @ClassID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClassModule' 
)
   DROP PROCEDURE dbo.spFindClassModule
GO

CREATE PROCEDURE dbo.spFindClassModule
	@ClassModuleID bigint
AS
	SELECT Top 1 *
	from ClassModule
	where ClassModuleID = @ClassModuleID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponent' 
)
   DROP PROCEDURE dbo.spFindComponent
GO

CREATE PROCEDURE dbo.spFindComponent
	@ComponentID bigint
AS
	SELECT Top 1 * 
	from Component
	where ComponentID = @ComponentID
	For json Auto, Without_Array_Wrapper;
GO
-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentCourse' 
)
   DROP PROCEDURE dbo.spFindComponentCourse
GO

CREATE PROCEDURE dbo.spFindComponentCourse
	@ComponentCourseID bigint
AS
	SELECT top 1*
	from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentType' 
)
   DROP PROCEDURE dbo.spFindComponentType
GO

CREATE PROCEDURE dbo.spFindComponentType
	@ComponentTypeID bigint
AS
	SELECT Top 1 * 
	from ComponentType
	Where ComponentTypeID=@ComponentTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourse' 
)
   DROP PROCEDURE dbo.spFindCourse
GO

CREATE PROCEDURE dbo.spFindCourse
	@CourseID bigint
AS
	SELECT Top 1 *
	from Course
	where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseIDComponentCourse' 
)
   DROP PROCEDURE dbo.spFindCourseIDComponentCourse
GO

CREATE PROCEDURE dbo.spFindCourseIDComponentCourse
	@CourseID bigint
AS
	SELECT Top 1 * 
	from ComponentCourse where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourseIDComponentCourse 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseType' 
)
   DROP PROCEDURE dbo.spFindCourseType
GO

CREATE PROCEDURE dbo.spFindCourseType	
	@CourseTypeID bigint
AS
	SELECT TOP 1 *
	FROM CourseType
	WHERE CourseTypeID = @CourseTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculum' 
)
   DROP PROCEDURE dbo.spFindCurriculum
GO

CREATE PROCEDURE dbo.spFindCurriculum
	@CurriculumID bigint
AS
	SELECT Top 1 *
	from Curriculum
	where CurriculumID=@CurriculumID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apFindCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculumType' 
)
   DROP PROCEDURE dbo.spFindCurriculumType
GO

CREATE PROCEDURE dbo.spFindCurriculumType
	@CurriculumTypeID bigint = 0
AS
	SELECT	TOP 1 * 
	FROM	CurriculumType 
	WHERE	CurriculumTypeID = @CurriculumTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCurriculumType 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindFaculty' 
)
   DROP PROCEDURE dbo.spFindFaculty
GO

CREATE PROCEDURE dbo.spFindFaculty
	@FacultyID bigint
AS
	SELECT Top 1 *
	from Faculty
	where FacultyID = @FacultyID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClasModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindModuleAssessment' 
)
   DROP PROCEDURE dbo.spFindModuleAssessment
GO

CREATE PROCEDURE dbo.spFindModuleAssessment
	@ModuleAssessmentID bigint

AS
	SELECT Top 1 * 
	FROM ModuleAssessment
	WHERE ModuleAssessmentID = @ModuleAssessmentID
	For json Auto, without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindModuleAssessment 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spFindModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spFindModuleAssessmentMark
	@ModuleAssessmentMarkID bigint
AS
	SELECT Top 1 *
	FROM ModuleAssessmentMark
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindModuleAssessmentMark 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnit' 
)
   DROP PROCEDURE dbo.spFindOrgUnit
GO

CREATE PROCEDURE dbo.spFindOrgUnit
	@OrgUnitID bigint 
AS
	Select top 1* 
	From OrgUnit
	where OrgUnitID=@OrgUnitID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnitType' 
)
   DROP PROCEDURE dbo.spFindOrgUnitType
GO

CREATE PROCEDURE dbo.spFindOrgUnitType
	@OrgUnitTypeID bigint
AS
	SELECT top 1*
	from OrgUnitType 
	where OrgUnitTypeID = @OrgUnitTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================

-- EXECUTE dbo.spFindOrgUnitType 1
-- GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindParentOrgUnit' 
)
   DROP PROCEDURE dbo.spFindParentOrgUnit
GO

CREATE PROCEDURE dbo.spFindParentOrgUnit
	@ParentUnitID bigint
AS
	SELECT * from OrgUnit 
	where ParentUnitID=@ParentUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindParentOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindRegisterStatus' 
)
   DROP PROCEDURE dbo.spFindRegisterStatus
GO

CREATE PROCEDURE dbo.spFindRegisterStatus
	@RegisterStatusID bigint
AS
	SELECT top 1 *
	from RegisterStatus
	where RegisterStatusID = @RegisterStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudent' 
)
   DROP PROCEDURE dbo.spFindStudent
GO

CREATE PROCEDURE dbo.spFindStudent
	@StudentID bigint 
AS
	Select top 1*
	from Student 
	where StudentID = @StudentID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudent 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentGroup' 
)
   DROP PROCEDURE dbo.spFindStudentGroup
GO

CREATE PROCEDURE dbo.spFindStudentGroup
	@StudentGroupID bigint
AS
	SELECT TOP 1 *
	FROM StudentGroup
	WHERE StudentGroupID = @StudentGroupID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentProgram' 
)
   DROP PROCEDURE dbo.spFindStudentProgram
GO

CREATE PROCEDURE dbo.spFindStudentProgram
	@StudentProgramID bigint
AS
	SELECT Top 1 * from StudentProgram
	where StudentProgramID = @StudentProgramID
	For json Auto, Without_Array_Wrapper;
GO	


-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentStatus' 
)
   DROP PROCEDURE dbo.spFindStudentStatus
GO

CREATE PROCEDURE dbo.spFindStudentStatus
	@StudentStatusID bigint
AS
	Select top 1*from StudentStatus where StudentStatusID = @StudentStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentStatus 5
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindTerm' 
)
   DROP PROCEDURE dbo.spFindTerm
GO

CREATE PROCEDURE dbo.spFindTerm
	@TermID bigint
AS
	SELECT top 1 *
	from Term
	where TermID=@TermID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllAssessmentCategory' 
)
   DROP PROCEDURE dbo.spGetAllAssessmentCategory
GO

CREATE PROCEDURE dbo.spGetAllAssessmentCategory
AS
	SELECT * FROM AssessmentCategory FOR JSON AUTO;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllAssessmentCategory 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllBatch' 
)
   DROP PROCEDURE dbo.spGetAllBatch
GO

CREATE PROCEDURE dbo.spGetAllBatch
AS
	SELECT * from Batch FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllBatch 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClass' 
)
   DROP PROCEDURE dbo.spGetAllClass
GO

CREATE PROCEDURE dbo.spGetAllClass

AS
	SELECT * from Class FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClassModule' 
)
   DROP PROCEDURE dbo.spGetAllClassModule
GO

CREATE PROCEDURE dbo.spGetAllClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponent' 
)
   DROP PROCEDURE dbo.spGetAllComponent
GO

CREATE PROCEDURE dbo.spGetAllComponent
AS
	SELECT * from Component FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponentCourse' 
)
   DROP PROCEDURE dbo.spGetAllComponentCourse
GO

CREATE PROCEDURE dbo.spGetAllComponentCourse

AS
	SELECT * from ComponentCourse FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGETAllComponentType' 
)
   DROP PROCEDURE dbo.spGETAllComponentType
GO

CREATE PROCEDURE dbo.spGETAllComponentType
AS
	SELECT * from ComponentType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGETALLComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourse' 
)
   DROP PROCEDURE dbo.spGetAllCourse
GO

CREATE PROCEDURE dbo.spGetAllCourse
AS
	SELECT *
	From Course
	For json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourseType' 
)
   DROP PROCEDURE dbo.spGetAllCourseType
GO

CREATE PROCEDURE dbo.spGetAllCourseType
AS
	SELECT * from  dbo.CourseType FOR JSON Auto;
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculum' 
)
   DROP PROCEDURE dbo.spGetAllCurriculum
GO

CREATE PROCEDURE dbo.spGetAllCurriculum

AS
	SELECT * from Curriculum FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculumType' 
)
   DROP PROCEDURE dbo.spGetAllCurriculumType
GO

CREATE PROCEDURE dbo.spGetAllCurriculumType
AS
	SELECT	*
	FROM	CurriculumType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllFaculty' 
)
   DROP PROCEDURE dbo.spGetAllFaculty
GO

CREATE PROCEDURE dbo.spGetAllFaculty
AS
	SELECT	* FROM Faculty FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllModuleAssessment' 
)
   DROP PROCEDURE dbo.spGetAllModuleAssessment
GO

CREATE PROCEDURE dbo.spGetAllModuleAssessment
AS
	SELECT *
	From ModuleAssessment
	For json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllModuleAssessment
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spGetAllModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spGetAllModuleAssessmentMark
AS
	SELECT * FROM ModuleAssessmentMark FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllModuleAssessmentMark 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnit' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnit
GO

CREATE PROCEDURE dbo.spGetAllOrgUnit

AS
	SELECT * 
	from OrgUnit FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnitType' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnitType
GO

CREATE PROCEDURE dbo.spGetAllOrgUnitType	
AS
	SELECT *From OrgUnitType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnitType 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllRegisterStatus' 
)
   DROP PROCEDURE dbo.spGetAllRegisterStatus
GO

CREATE PROCEDURE dbo.spGetAllRegisterStatus
AS
	SELECT * FROM RegisterStatus FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudent' 
)
   DROP PROCEDURE dbo.spGetAllStudent
GO

CREATE PROCEDURE dbo.spGetAllStudent
AS
	SELECT *from Student FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudent 
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentGroup' 
)
   DROP PROCEDURE dbo.spGetAllStudentGroup
GO

CREATE PROCEDURE dbo.spGetAllStudentGroup

AS
	SELECT * from StudentGroup FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentProgram' 
)
   DROP PROCEDURE dbo.spGetAllStudentProgram
GO

CREATE PROCEDURE dbo.spGetAllStudentProgram
	
AS
	SELECT * from StudentProgram FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentStatus' 
)
   DROP PROCEDURE dbo.spGetAllStudentStatus
GO

CREATE PROCEDURE dbo.spGetAllStudentStatus

AS
	SELECT *from StudentStatus FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudentStatus
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllTerm' 
)
   DROP PROCEDURE dbo.spGetAllTerm
GO

CREATE PROCEDURE dbo.spGetAllTerm
AS
	SELECT * from Term FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetComponentSummary' 
)
   DROP PROCEDURE dbo.spGetComponentSummary
GO

CREATE PROCEDURE dbo.spGetComponentSummary
	@ComponentID bigint
AS
		select CC.ComponentID,  COUNT(c.CourseID) as 'TotalCourses', 
		Sum(c.TheoryCredit+c.LabCredit) as 'TotalCreditHrs' 
from	Course as c Inner join ComponentCourse CC on CC.CourseID = C.CourseID
where	CC.ComponentID = @ComponentID
group by CC.ComponentID
		
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetComponentSummary 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCourseName' 
)
   DROP PROCEDURE dbo.spGetCourseName
GO

CREATE PROCEDURE dbo.spGetCourseName
	@Name nvarchar(50)
AS
	SELECT * from Course where [Name] =@Name
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCourseName 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCurriculumType' 
)
   DROP PROCEDURE dbo.spGetCurriculumType
GO

CREATE PROCEDURE dbo.spGetCurriculumType
	@CurriculumTypeID bigint
AS
	SELECT * from Curriculum where CurriculumTypeID=@CurriculumTypeID
	FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetOwnerUnit' 
)
   DROP PROCEDURE dbo.spGetOwnerUnit
GO

CREATE PROCEDURE dbo.spGetOwnerUnit
	@OwnerUnitID bigint
AS
	SELECT * from Curriculum where OwnerUnitID =@OwnerUnitID
	FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetOwnerUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertAssessmentCategory' 
)
   DROP PROCEDURE dbo.spInsertAssessmentCategory
GO

CREATE PROCEDURE dbo.spInsertAssessmentCategory
	@Name nvarchar(50), 
	@Weight dec(18, 0),
	@ClassModuleID bigint
AS
	INSERT INTO AssessmentCategory ([Name], [Weight], ClassModuleID) values(@Name, @Weight, @ClassModuleID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertAssessmentCategory 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertBatch' 
)
   DROP PROCEDURE dbo.spInsertBatch
GO

CREATE PROCEDURE dbo.spInsertBatch
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertBatch "BS-2022", "BS(CS)2022", 2022, 2026, 4, 2  
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClass' 
)
   DROP PROCEDURE dbo.spInsertClass
GO

CREATE PROCEDURE dbo.spInsertClass
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Insert into Class (ShortName,[Name],Capacity) values (@ShortName,@Name,@Capacity)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClassModule' 
)
   DROP PROCEDURE dbo.spInsertClassModule
GO

CREATE PROCEDURE dbo.spInsertClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponent' 
)
   DROP PROCEDURE dbo.spInsertComponent
GO

CREATE PROCEDURE dbo.spInsertComponent
	@ShortName nvarchar(10),
	@Name nvarchar(50),
	@ComponentTypeID bigint,
	@CurriculumID bigint,
	@TotalCredit int,
	@TotalCourses int,
	@IsLimitCourses bit,
	@IsLimitCreditHrs bit

AS
	INSERT INTO Component (ShortName,[Name],ComponentTypeID,CurriculumID,TotalCredit,TotalCourses,IsLimitCourses,IsLimitCreditHrs) 
	values(@ShortName,@Name,@ComponentTypeID,@CurriculumID,@TotalCredit,@TotalCourses,@IsLimitCourses,@IsLimitCreditHrs)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentCourse' 
)
   DROP PROCEDURE dbo.spInsertComponentCourse
GO

CREATE PROCEDURE dbo.spInsertComponentCourse
	@ComponentID bigint,
	@CourseID bigint
AS
	Insert into ComponentCourse (ComponentID,CourseID) values (@ComponentID,@CourseID)
	select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentType' 
)
   DROP PROCEDURE dbo.spInsertComponentType
GO

CREATE PROCEDURE dbo.spInsertComponentType
	@Name nvarchar(50), 
	@IsRequired bit
AS
	INSERT INTO ComponentType ([Name],IsRequired) values(@Name,@IsRequired)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spCreateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourse' 
)
   DROP PROCEDURE dbo.spInsertCourse
GO

CREATE PROCEDURE dbo.spInsertCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourseType' 
)
   DROP PROCEDURE dbo.spInsertCourseType
GO

CREATE PROCEDURE dbo.spInsertCourseType
	@Name nvarchar(50)
AS
	INSERT into dbo.CourseType([Name]) values(@Name);
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculum' 
)
   DROP PROCEDURE dbo.spInsertCurriculum
GO

CREATE PROCEDURE dbo.spInsertCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculumType' 
)
   DROP PROCEDURE dbo.spInsertCurriculumType
GO

CREATE PROCEDURE dbo.spInsertCurriculumType
	@Name nvarchar(50) = 0
AS
	Insert Into CurriculumType values(@Name)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculumType 'NewType'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertFaculty' 
)
   DROP PROCEDURE dbo.spInsertFaculty
GO

CREATE PROCEDURE dbo.spInsertFaculty
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Insert Into Faculty Values(@FirstName, @LastName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertModuleAssessment' 
)
   DROP PROCEDURE dbo.spInsertModuleAssessment
GO

CREATE PROCEDURE dbo.spInsertModuleAssessment
	@Name nvarchar(50),
	@Weight dec(18,0),
	@AssessmentCategoryID bigint
AS
	INSERT INTO ModuleAssessment ([Name], [Weight], AssessmentCategoryID) values (@Name, @Weight, @AssessmentCategoryID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertModuleAssessment 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spInsertModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spInsertModuleAssessmentMark
	@ObtainMark dec(18,0), 
	@RegistrationID bigint,
	@ModuleAssessmentID bigint
AS
	INSERT INTO ModuleAssessmentMark (ObtainMark, RegistrationID, ModuleAssessmentID) values (@ObtainMark, @RegistrationID, @ModuleAssessmentID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertModuleAssessmentMark 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnit' 
)
   DROP PROCEDURE dbo.spInsertOrgUnit
GO

CREATE PROCEDURE dbo.spInsertOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnitType' 
)
   DROP PROCEDURE dbo.spInsertOrgUnitType
GO

CREATE PROCEDURE dbo.spInsertOrgUnitType
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	Insert Into OrgUnitType ([Name],ShortName) 
	values(@Name,@ShortName)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOrgUnitType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertRegisterStatus' 
)
   DROP PROCEDURE dbo.spInsertRegisterStatus
GO

CREATE PROCEDURE dbo.spInsertRegisterStatus
	@ShortName nvarchar(50)
AS
	INSERT INTO RegisterStatus VALUES(@ShortName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudent' 
)
   DROP PROCEDURE dbo.spInsertStudent
GO

CREATE PROCEDURE dbo.spInsertStudent
	@Identifier nvarchar(50), 
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	Insert into Student (Identifier, FirstName, LastName) values(@Identifier, @FirstName, @LastName)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudent '17b-012-cs','Maaz','Khan'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentGroup' 
)
   DROP PROCEDURE dbo.spInsertStudentGroup
GO

CREATE PROCEDURE dbo.spInsertStudentGroup
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@IsActive	bit = 0

AS
	Insert into StudentGroup
	(ShortName,[Name],IsActive) 
	values (@ShortName,@Name,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentProgram' 
)
   DROP PROCEDURE dbo.spInsertStudentProgram
GO

CREATE PROCEDURE dbo.spInsertStudentProgram
	@StudentID bigint,
	@BatchID bigint,
	@StartDate date,
	@EndDate date,
	@StudentStatusID bigint,
	@OverrideCurriculumID bigint,
	@MinorCurriculumID	bigint,
	@StudentGroupID bigint
AS
	Insert into StudentProgram (StudentID, BatchID, StartDate, EndDate, StudentStatusID, OverrideCurriculumID,
	MinorCurriculumID, StudentGroupID) 
	Values (@StudentID,@BatchID,@StartDate,@EndDate,@StudentStatusID,@OverrideCurriculumID,@MinorCurriculumID,@StudentGroupID)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudentProgram 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentStatus' 
)
   DROP PROCEDURE dbo.spInsertStudentStatus
GO

CREATE PROCEDURE dbo.spInsertStudentStatus
	@Name nvarchar(50)
AS
	INSERT into StudentStatus([Name]) values(@Name)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertStudentStatus 'Pending'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertTerm' 
)
   DROP PROCEDURE dbo.spInsertTerm
GO

CREATE PROCEDURE dbo.spInsertTerm
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@StartDate	date = '0',
	@EndDate	date = '0',
	@IsActive	bit

AS
	Insert into Term 
	(ShortName,[Name],StartDate,EndDate,IsActive) 
	values (@ShortName,@Name,@StartDate,@EndDate,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateAssessmentCategory' 
)
   DROP PROCEDURE dbo.spUpdateAssessmentCategory
GO

CREATE PROCEDURE dbo.spUpdateAssessmentCategory
	@AssessmentCategoryID bigint,
	@Name nvarchar(50),
	@Weight dec(18,0),
	@ClassModuleID bigint
AS
	UPDATE AssessmentCategory 
	SET [Name] = @Name, [Weight] = @Weight, ClassModuleID = @ClassModuleID
	WHERE AssessmentCategoryID = @AssessmentCategoryID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateBatch' 
)
   DROP PROCEDURE dbo.spUpdateBatch
GO

CREATE PROCEDURE dbo.spUpdateBatch
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateBatch 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClass' 
)
   DROP PROCEDURE dbo.spUpdateClass
GO

CREATE PROCEDURE dbo.spUpdateClass
	@ClassID	bigint,
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Update Class 
	set	ShortName=@ShortName,[Name]=@Name,Capacity=@Capacity
	where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClassModule' 
)
   DROP PROCEDURE dbo.spUpdateClassModule
GO

CREATE PROCEDURE dbo.spUpdateClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponent' 
)
   DROP PROCEDURE dbo.spUpdateComponent
GO

CREATE PROCEDURE dbo.spUpdateComponent
	@ComponentID bigint,
	@ShortName nvarchar(10),
	@Name nvarchar(50),
	@ComponentTypeID bigint,
	@CurriculumID bigint,
	@TotalCredit int,
	@TotalCourses int,
	@IsLimitCourses bit,
	@IsLimitCreditHrs bit
AS
	UPDATE Component
	SET ShortName=@ShortName, [Name]=@Name, ComponentTypeID=@ComponentTypeID, CurriculumID=@CurriculumID,TotalCredit=@TotalCredit,TotalCourses=@TotalCourses,
	IsLimitCourses=@IsLimitCourses,IsLimitCreditHrs=@IsLimitCreditHrs
	WHERE ComponentID=@ComponentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentCourse' 
)
   DROP PROCEDURE dbo.spUpdateComponentCourse
GO

CREATE PROCEDURE dbo.spUpdateComponentCourse
	@ComponentCourseID bigint,
	@ComponentID bigint,
	@CourseID bigint
AS
	Update ComponentCourse
	set ComponentID=@ComponentID,CourseID=@CourseID
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentType' 
)
   DROP PROCEDURE dbo.spUpdateComponentType
GO

CREATE PROCEDURE dbo.spUpdateComponentType
	@ComponentTypeID bigint,
	@Name nvarchar(50),
	@IsRequired bit
AS
	Update ComponentType
	set [Name]=@Name,IsRequired=@IsRequired
	where @ComponentTypeID=ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourse' 
)
   DROP PROCEDURE dbo.spUpdateCourse
GO

CREATE PROCEDURE dbo.spUpdateCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourseType' 
)
   DROP PROCEDURE dbo.spUpdateCourseType
GO

CREATE PROCEDURE dbo.spUpdateCourseType
	@CourseTypeID bigint,
	@Name nvarchar(50)
AS
	UPDATE CourseType
	set [Name] = @Name
	where [CourseTypeID] = @CourseTypeID
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculum' 
)
   DROP PROCEDURE dbo.spUpdateCurriculum
GO

CREATE PROCEDURE dbo.spUpdateCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculumType' 
)
   DROP PROCEDURE dbo.spUpdateCurriculumType
GO

CREATE PROCEDURE dbo.spUpdateCurriculumType
	@CurriculumTypeID bigint = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE CurriculumType 
		SET [Name] = @Name
		WHERE CurriculumTypeID = @CurriculumTypeID 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateFaculty' 
)
   DROP PROCEDURE dbo.spUpdateFaculty
GO

CREATE PROCEDURE dbo.spUpdateFaculty
	@FacultyID bigint, 
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Update	Faculty 
	SET		FirstName = @FirstName,
			LastName = @LastName
	WHERE	FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateFaculty
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateModuleAssessment' 
)
   DROP PROCEDURE dbo.spUpdateModuleAssessment
GO

CREATE PROCEDURE dbo.spUpdateModuleAssessment
	@ModuleAssessmentID bigint,
	@Name nvarchar(50),
	@Weight dec(18, 0),
	@AssessmentCategoryID bigint
AS
	UPDATE ModuleAssessment
	SET [Name] = @Name, [Weight] = @Weight, AssessmentCategoryID = @AssessmentCategoryID
	WHERE ModuleAssessmentID = @ModuleAssessmentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateModuleAssessment 1, 2, 3, 4
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spUpdateModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spUpdateModuleAssessmentMark
	@ModuleAssessmentMarkID bigint,
	@ObtainMark dec(18, 0),
	@RegistrationID bigint,
	@ModuleAssessmentID bigint
AS
	UPDATE ModuleAssessmentMark
	SET ObtainMark = @ObtainMark, RegistrationID = @RegistrationID, ModuleAssessmentID = @ModuleAssessmentID
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateModuleAssessmentMark 1, 2, 3, 4
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnit' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnit
GO

CREATE PROCEDURE dbo.spUpdateOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnitType' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnitType
GO

CREATE PROCEDURE dbo.spUpdateOrgUnitType
	@OrgUnitTypeID bigint,
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE OrgUnitType SET ShortName = @ShortName, [Name] = @Name where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateOrgUnitType 8, 'Mk', 'MaazKhan'
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateRegisterStatus' 
)
   DROP PROCEDURE dbo.spUpdateRegisterStatus
GO

CREATE PROCEDURE dbo.spUpdateRegisterStatus
	@RegisterStatusID bigint,
	@ShortName nvarchar(50)
AS
	Update	RegisterStatus
	SET		ShortName = @ShortName
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudent' 
)
   DROP PROCEDURE dbo.spUpdateStudent
GO

CREATE PROCEDURE dbo.spUpdateStudent
	@StudentID bigint, 
	@Identifier nvarchar(50),
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	UPDATE Student SET Identifier = @Identifier, FirstName = @FirstName, LastName = @LastName
	where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudent 3,'17b-50-cs','Ahsan','Khan' 
--GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentGroup' 
)
   DROP PROCEDURE dbo.spUpdateStudentGroup
GO

CREATE PROCEDURE dbo.spUpdateStudentGroup
	@StudentGroupID bigint,
	@ShortName		nvarchar(50),
	@Name			nvarchar(250),
	@IsActive		bit = 0

AS
	Update StudentGroup
	set ShortName=@ShortName,[Name]=@Name,IsActive=@IsActive
	where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentProgram' 
)
   DROP PROCEDURE dbo.spUpdateStudentProgram
GO

CREATE PROCEDURE dbo.spUpdateStudentProgram
	@StudentProgramID bigint,
	@StudentID bigint,
	@BatchID bigint,
	@StartDate date,
	@EndDate date,
	@StudentStatusID bigint,
	@OverrideCurriculumID bigint,
	@MinorCurriculumID	bigint,
	@StudentGroupID bigint
AS
	UPDATE StudentProgram SET StudentID = @StudentID, BatchID = @BatchID, StartDate = @StartDate, EndDate = @EndDate, 
	StudentStatusID = @StudentStatusID, OverrideCurriculumID = @OverrideCurriculumID, MinorCurriculumID = @MinorCurriculumID,
	StudentGroupID = @StudentGroupID 
	where StudentProgramID = @StudentProgramID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentStatus' 
)
   DROP PROCEDURE dbo.spUpdateStudentStatus
GO

CREATE PROCEDURE dbo.spUpdateStudentStatus
	@StudentStatusID bigint,
	@Name nvarchar(50)
AS
	UPDATE StudentStatus SET [Name] = @Name where StudentStatusID = @StudentStatusID; 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateStudentStatus 6, 'Inprogress'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateTerm' 
)
   DROP PROCEDURE dbo.spUpdateTerm
GO

CREATE PROCEDURE dbo.spUpdateTerm
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spComponentTotalCourseCreditHrs' 
)
   DROP PROCEDURE dbo.spComponentTotalCourseCreditHrs
GO

CREATE PROCEDURE dbo.spComponentTotalCourseCreditHrs
	@CurriculumID bigint
AS
	SELECT count(ComponentID) as NumberofComponent, sum(TotalCourses) as TotalCourses,sum(TotalCredit) as TotalCredit
	from Component where CurriculumID=@CurriculumID   
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spTotalCreditCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteAssessmentCategory' 
)
   DROP PROCEDURE dbo.spDeleteAssessmentCategory
GO

CREATE PROCEDURE dbo.spDeleteAssessmentCategory
	@AssessmentCategoryID bigint 
AS
	DELETE FROM AssessmentCategory  
	WHERE AssessmentCategoryID = @AssessmentCategoryID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteAssessmentCategory 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteBatch' 
)
   DROP PROCEDURE dbo.spDeleteBatch
GO

CREATE PROCEDURE dbo.spDeleteBatch
	@BatchID bigint
AS
	Delete from Batch
	where BatchID = @BatchID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteBatch 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClass' 
)
   DROP PROCEDURE dbo.spDeleteClass
GO

CREATE PROCEDURE dbo.spDeleteClass
	@ClassID bigint
AS
	Delete Class where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClassModule' 
)
   DROP PROCEDURE dbo.spDeleteClassModule
GO

CREATE PROCEDURE dbo.spDeleteClassModule
	@ClassModuleID bigint
AS
	DELETE	ClassModule 
	WHERE	ClassModuleID = @ClassModuleID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponent' 
)
   DROP PROCEDURE dbo.spDeleteComponent
GO

CREATE PROCEDURE dbo.spDeleteComponent
	@ComponentID bigint
AS
	Delete from Component
	where ComponentID = @ComponentID
GO
-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentCourse' 
)
   DROP PROCEDURE dbo.spDeleteComponentCourse
GO

CREATE PROCEDURE dbo.spDeleteComponentCourse
	@ComponentCourseID bigint
AS
	Delete from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentType' 
)
   DROP PROCEDURE dbo.spDeleteComponentType
GO

CREATE PROCEDURE dbo.spDeleteComponentType
	@ComponentTypeID bigint
AS
	Delete From ComponentType where ComponentTypeID=@ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourse' 
)
   DROP PROCEDURE dbo.spDeleteCourse
GO

CREATE PROCEDURE dbo.spDeleteCourse
	@CourseID bigint
AS
	Delete from Course
	where CourseID=@CourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourseType' 
)
   DROP PROCEDURE dbo.spDeleteCourseType
GO

CREATE PROCEDURE dbo.spDeleteCourseType
	@CourseTypeID bigint
AS
	DELETE from CourseType where CourseTypeID=@CourseTypeID
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculum' 
)
   DROP PROCEDURE dbo.spDeleteCurriculum
GO

CREATE PROCEDURE dbo.spDeleteCurriculum
	@CurriculumID bigint
AS
	Delete from Curriculum where CurriculumID=@CurriculumID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculumType' 
)
   DROP PROCEDURE dbo.spDeleteCurriculumType
GO

CREATE PROCEDURE dbo.spDeleteCurriculumType
	@CurriculumTypeID bigint = 0
AS
	DELETE FROM CurriculumType WHERE CurriculumTypeID = @CurriculumTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteFaculty' 
)
   DROP PROCEDURE dbo.spDeleteFaculty
GO

CREATE PROCEDURE dbo.spDeleteFaculty
	@FacultyID bigint
AS
	DELETE Faculty WHERE FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteModuleAssessment' 
)
   DROP PROCEDURE dbo.spDeleteModuleAssessment
GO

CREATE PROCEDURE dbo.spDeleteModuleAssessment
	@ModuleAssessmentID bigint
AS
	DELETE FROM ModuleAssessment 
	WHERE ModuleAssessmentID = @ModuleAssessmentID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteModuleAssessment 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spDeleteModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spDeleteModuleAssessmentMark
	@ModuleAssessmentMarkID bigint
AS
	DELETE FROM ModuleAssessmentMark
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteModuleAssessmentMark 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnit' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnit
GO

CREATE PROCEDURE dbo.spDeleteOrgUnit
	@OrgUnitID bigint
AS
	Delete from 
	OrgUnit
	where OrgUnitID=@OrgUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnitType' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnitType
GO

CREATE PROCEDURE dbo.spDeleteOrgUnitType
	@OrgUnitTypeID bigint
AS
	DELETE FROM OrgUnitType where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteOrgUnitType 8
GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteRegisterStatus' 
)
   DROP PROCEDURE dbo.spDeleteRegisterStatus
GO

CREATE PROCEDURE dbo.spDeleteRegisterStatus
	@RegisterStatusID bigint
AS
	DELETE RegisterStatus
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteSemester' 
)
   DROP PROCEDURE dbo.spDeleteSemester
GO

CREATE PROCEDURE dbo.spDeleteSemester
	@SemesterID bigint
AS
	Delete from Semester 
	where SemesterID = @SemesterID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudent' 
)
   DROP PROCEDURE dbo.spDeleteStudent
GO

CREATE PROCEDURE dbo.spDeleteStudent
	@StudentID bigint
AS
	DELETE from Student where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudent 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentGroup' 
)
   DROP PROCEDURE dbo.spDeleteStudentGroup
GO

CREATE PROCEDURE dbo.spDeleteStudentGroup
	@StudentGroupID bigint
AS
	Delete from StudentGroup where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentProgram' 
)
   DROP PROCEDURE dbo.spDeleteStudentProgram
GO

CREATE PROCEDURE dbo.spDeleteStudentProgram
	@StudentProgramID bigint
AS
	Delete from StudentProgram
	where StudentProgramID = @StudentProgramID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentStatus' 
)
   DROP PROCEDURE dbo.spDeleteStudentStatus
GO

CREATE PROCEDURE dbo.spDeleteStudentStatus
	@StudentStatusID bigint 
AS
	DELETE from StudentStatus where StudentStatusID = @StudentStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudent 6
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteTerm' 
)
   DROP PROCEDURE dbo.spDeleteTerm
GO

CREATE PROCEDURE dbo.spDeleteTerm
	@TermID bigint
AS
	Delete from Term where TermID=@TermID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindAssessmentCategory' 
)
   DROP PROCEDURE dbo.spFindAssessmentCategory
GO

CREATE PROCEDURE dbo.spFindAssessmentCategory
	@AssessmentCategoryID bigint
AS
	SELECT * FROM AssessmentCategory
	WHERE AssessmentCategoryID = @AssessmentCategoryID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindAssessmentCategory 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindBatch' 
)
   DROP PROCEDURE dbo.spFindBatch
GO

CREATE PROCEDURE dbo.spFindBatch
	@BatchID bigint
AS
	SELECT Top 1 * 
	from Batch
	where BatchID = @BatchID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindBatch 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClass' 
)
   DROP PROCEDURE dbo.spFindClass
GO

CREATE PROCEDURE dbo.spFindClass
	@ClassID bigint
AS
	SELECT Top 1 *
	from Class
	where ClassID = @ClassID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClassModule' 
)
   DROP PROCEDURE dbo.spFindClassModule
GO

CREATE PROCEDURE dbo.spFindClassModule
	@ClassModuleID bigint
AS
	SELECT Top 1 *
	from ClassModule
	where ClassModuleID = @ClassModuleID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponent' 
)
   DROP PROCEDURE dbo.spFindComponent
GO

CREATE PROCEDURE dbo.spFindComponent
	@ComponentID bigint
AS
	SELECT Top 1 * 
	from Component
	where ComponentID = @ComponentID
	For json Auto, Without_Array_Wrapper;
GO
-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentCourse' 
)
   DROP PROCEDURE dbo.spFindComponentCourse
GO

CREATE PROCEDURE dbo.spFindComponentCourse
	@ComponentCourseID bigint
AS
	SELECT top 1*
	from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentType' 
)
   DROP PROCEDURE dbo.spFindComponentType
GO

CREATE PROCEDURE dbo.spFindComponentType
	@ComponentTypeID bigint
AS
	SELECT Top 1 * 
	from ComponentType
	Where ComponentTypeID=@ComponentTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourse' 
)
   DROP PROCEDURE dbo.spFindCourse
GO

CREATE PROCEDURE dbo.spFindCourse
	@CourseID bigint
AS
	SELECT Top 1 *
	from Course
	where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseIDComponentCourse' 
)
   DROP PROCEDURE dbo.spFindCourseIDComponentCourse
GO

CREATE PROCEDURE dbo.spFindCourseIDComponentCourse
	@CourseID bigint
AS
	SELECT Top 1 * 
	from ComponentCourse where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourseIDComponentCourse 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseType' 
)
   DROP PROCEDURE dbo.spFindCourseType
GO

CREATE PROCEDURE dbo.spFindCourseType	
	@CourseTypeID bigint
AS
	SELECT TOP 1 *
	FROM CourseType
	WHERE CourseTypeID = @CourseTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculum' 
)
   DROP PROCEDURE dbo.spFindCurriculum
GO

CREATE PROCEDURE dbo.spFindCurriculum
	@CurriculumID bigint
AS
	SELECT Top 1 *
	from Curriculum
	where CurriculumID=@CurriculumID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apFindCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculumType' 
)
   DROP PROCEDURE dbo.spFindCurriculumType
GO

CREATE PROCEDURE dbo.spFindCurriculumType
	@CurriculumTypeID bigint = 0
AS
	SELECT	TOP 1 * 
	FROM	CurriculumType 
	WHERE	CurriculumTypeID = @CurriculumTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCurriculumType 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindFaculty' 
)
   DROP PROCEDURE dbo.spFindFaculty
GO

CREATE PROCEDURE dbo.spFindFaculty
	@FacultyID bigint
AS
	SELECT Top 1 *
	from Faculty
	where FacultyID = @FacultyID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClasModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindModuleAssessment' 
)
   DROP PROCEDURE dbo.spFindModuleAssessment
GO

CREATE PROCEDURE dbo.spFindModuleAssessment
	@ModuleAssessmentID bigint

AS
	SELECT Top 1 * 
	FROM ModuleAssessment
	WHERE ModuleAssessmentID = @ModuleAssessmentID
	For json Auto, without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindModuleAssessment 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spFindModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spFindModuleAssessmentMark
	@ModuleAssessmentMarkID bigint
AS
	SELECT Top 1 *
	FROM ModuleAssessmentMark
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindModuleAssessmentMark 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnit' 
)
   DROP PROCEDURE dbo.spFindOrgUnit
GO

CREATE PROCEDURE dbo.spFindOrgUnit
	@OrgUnitID bigint 
AS
	Select top 1* 
	From OrgUnit
	where OrgUnitID=@OrgUnitID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnitType' 
)
   DROP PROCEDURE dbo.spFindOrgUnitType
GO

CREATE PROCEDURE dbo.spFindOrgUnitType
	@OrgUnitTypeID bigint
AS
	SELECT top 1*
	from OrgUnitType 
	where OrgUnitTypeID = @OrgUnitTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================

-- EXECUTE dbo.spFindOrgUnitType 1
-- GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindParentOrgUnit' 
)
   DROP PROCEDURE dbo.spFindParentOrgUnit
GO

CREATE PROCEDURE dbo.spFindParentOrgUnit
	@ParentUnitID bigint
AS
	SELECT * from OrgUnit 
	where ParentUnitID=@ParentUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindParentOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindRegisterStatus' 
)
   DROP PROCEDURE dbo.spFindRegisterStatus
GO

CREATE PROCEDURE dbo.spFindRegisterStatus
	@RegisterStatusID bigint
AS
	SELECT top 1 *
	from RegisterStatus
	where RegisterStatusID = @RegisterStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindSemester' 
)
   DROP PROCEDURE dbo.spFindSemester
GO

CREATE PROCEDURE dbo.spFindSemester
	@SemesterID bigint
AS
	SELECT top 1* from Semester
	Where SemesterID = @SemesterID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudent' 
)
   DROP PROCEDURE dbo.spFindStudent
GO

CREATE PROCEDURE dbo.spFindStudent
	@StudentID bigint 
AS
	Select top 1*
	from Student 
	where StudentID = @StudentID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudent 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentGroup' 
)
   DROP PROCEDURE dbo.spFindStudentGroup
GO

CREATE PROCEDURE dbo.spFindStudentGroup
	@StudentGroupID bigint
AS
	SELECT TOP 1 *
	FROM StudentGroup
	WHERE StudentGroupID = @StudentGroupID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentProgram' 
)
   DROP PROCEDURE dbo.spFindStudentProgram
GO

CREATE PROCEDURE dbo.spFindStudentProgram
	@StudentProgramID bigint
AS
	SELECT Top 1 * from StudentProgram
	where StudentProgramID = @StudentProgramID
	For json Auto, Without_Array_Wrapper;
GO	


-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentStatus' 
)
   DROP PROCEDURE dbo.spFindStudentStatus
GO

CREATE PROCEDURE dbo.spFindStudentStatus
	@StudentStatusID bigint
AS
	Select top 1*from StudentStatus where StudentStatusID = @StudentStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentStatus 5
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindTerm' 
)
   DROP PROCEDURE dbo.spFindTerm
GO

CREATE PROCEDURE dbo.spFindTerm
	@TermID bigint
AS
	SELECT top 1 *
	from Term
	where TermID=@TermID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllAssessmentCategory' 
)
   DROP PROCEDURE dbo.spGetAllAssessmentCategory
GO

CREATE PROCEDURE dbo.spGetAllAssessmentCategory
AS
	SELECT * FROM AssessmentCategory FOR JSON AUTO;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllAssessmentCategory 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllBatch' 
)
   DROP PROCEDURE dbo.spGetAllBatch
GO

CREATE PROCEDURE dbo.spGetAllBatch
AS
	SELECT * from Batch FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllBatch 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClass' 
)
   DROP PROCEDURE dbo.spGetAllClass
GO

CREATE PROCEDURE dbo.spGetAllClass

AS
	SELECT * from Class FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClassModule' 
)
   DROP PROCEDURE dbo.spGetAllClassModule
GO

CREATE PROCEDURE dbo.spGetAllClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponent' 
)
   DROP PROCEDURE dbo.spGetAllComponent
GO

CREATE PROCEDURE dbo.spGetAllComponent
AS
	SELECT * from Component FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponentCourse' 
)
   DROP PROCEDURE dbo.spGetAllComponentCourse
GO

CREATE PROCEDURE dbo.spGetAllComponentCourse

AS
	SELECT * from ComponentCourse FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGETAllComponentType' 
)
   DROP PROCEDURE dbo.spGETAllComponentType
GO

CREATE PROCEDURE dbo.spGETAllComponentType
AS
	SELECT * from ComponentType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGETALLComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourse' 
)
   DROP PROCEDURE dbo.spGetAllCourse
GO

CREATE PROCEDURE dbo.spGetAllCourse
AS
	SELECT *
	From Course
	For json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourseType' 
)
   DROP PROCEDURE dbo.spGetAllCourseType
GO

CREATE PROCEDURE dbo.spGetAllCourseType
AS
	SELECT * from  dbo.CourseType FOR JSON Auto;
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculum' 
)
   DROP PROCEDURE dbo.spGetAllCurriculum
GO

CREATE PROCEDURE dbo.spGetAllCurriculum

AS
	SELECT * from Curriculum FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculumType' 
)
   DROP PROCEDURE dbo.spGetAllCurriculumType
GO

CREATE PROCEDURE dbo.spGetAllCurriculumType
AS
	SELECT	*
	FROM	CurriculumType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllFaculty' 
)
   DROP PROCEDURE dbo.spGetAllFaculty
GO

CREATE PROCEDURE dbo.spGetAllFaculty
AS
	SELECT	* FROM Faculty FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllModuleAssessment' 
)
   DROP PROCEDURE dbo.spGetAllModuleAssessment
GO

CREATE PROCEDURE dbo.spGetAllModuleAssessment
AS
	SELECT *
	From ModuleAssessment
	For json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllModuleAssessment
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spGetAllModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spGetAllModuleAssessmentMark
AS
	SELECT * FROM ModuleAssessmentMark FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllModuleAssessmentMark 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnit' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnit
GO

CREATE PROCEDURE dbo.spGetAllOrgUnit

AS
	SELECT * 
	from OrgUnit FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnitType' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnitType
GO

CREATE PROCEDURE dbo.spGetAllOrgUnitType	
AS
	SELECT *From OrgUnitType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnitType 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllRegisterStatus' 
)
   DROP PROCEDURE dbo.spGetAllRegisterStatus
GO

CREATE PROCEDURE dbo.spGetAllRegisterStatus
AS
	SELECT * FROM RegisterStatus FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllSemester' 
)
   DROP PROCEDURE dbo.spGetAllSemester
GO

CREATE PROCEDURE dbo.spGetAllSemester
	
AS
	SELECT * from Semester For Json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudent' 
)
   DROP PROCEDURE dbo.spGetAllStudent
GO

CREATE PROCEDURE dbo.spGetAllStudent
AS
	SELECT *from Student FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudent 
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentGroup' 
)
   DROP PROCEDURE dbo.spGetAllStudentGroup
GO

CREATE PROCEDURE dbo.spGetAllStudentGroup

AS
	SELECT * from StudentGroup FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentProgram' 
)
   DROP PROCEDURE dbo.spGetAllStudentProgram
GO

CREATE PROCEDURE dbo.spGetAllStudentProgram
	
AS
	SELECT * from StudentProgram FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentStatus' 
)
   DROP PROCEDURE dbo.spGetAllStudentStatus
GO

CREATE PROCEDURE dbo.spGetAllStudentStatus

AS
	SELECT *from StudentStatus FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudentStatus
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllTerm' 
)
   DROP PROCEDURE dbo.spGetAllTerm
GO

CREATE PROCEDURE dbo.spGetAllTerm
AS
	SELECT * from Term FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetComponentSummary' 
)
   DROP PROCEDURE dbo.spGetComponentSummary
GO

CREATE PROCEDURE dbo.spGetComponentSummary
	@ComponentID bigint
AS
		select CC.ComponentID,  COUNT(c.CourseID) as 'TotalCourses', 
		Sum(c.TheoryCredit+c.LabCredit) as 'TotalCreditHrs' 
from	Course as c Inner join ComponentCourse CC on CC.CourseID = C.CourseID
where	CC.ComponentID = @ComponentID
group by CC.ComponentID
		
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetComponentSummary 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCourseName' 
)
   DROP PROCEDURE dbo.spGetCourseName
GO

CREATE PROCEDURE dbo.spGetCourseName
	@Name nvarchar(50)
AS
	SELECT * from Course where [Name] =@Name
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCourseName 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCurriculumType' 
)
   DROP PROCEDURE dbo.spGetCurriculumType
GO

CREATE PROCEDURE dbo.spGetCurriculumType
	@CurriculumTypeID bigint
AS
	SELECT * from Curriculum where CurriculumTypeID=@CurriculumTypeID
	FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetOwnerUnit' 
)
   DROP PROCEDURE dbo.spGetOwnerUnit
GO

CREATE PROCEDURE dbo.spGetOwnerUnit
	@OwnerUnitID bigint
AS
	SELECT * from Curriculum where OwnerUnitID =@OwnerUnitID
	FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetOwnerUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertAssessmentCategory' 
)
   DROP PROCEDURE dbo.spInsertAssessmentCategory
GO

CREATE PROCEDURE dbo.spInsertAssessmentCategory
	@Name nvarchar(50), 
	@Weight dec(18, 0),
	@ClassModuleID bigint
AS
	INSERT INTO AssessmentCategory ([Name], [Weight], ClassModuleID) values(@Name, @Weight, @ClassModuleID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertAssessmentCategory 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertBatch' 
)
   DROP PROCEDURE dbo.spInsertBatch
GO

CREATE PROCEDURE dbo.spInsertBatch
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertBatch "BS-2022", "BS(CS)2022", 2022, 2026, 4, 2  
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClass' 
)
   DROP PROCEDURE dbo.spInsertClass
GO

CREATE PROCEDURE dbo.spInsertClass
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Insert into Class (ShortName,[Name],Capacity) values (@ShortName,@Name,@Capacity)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClassModule' 
)
   DROP PROCEDURE dbo.spInsertClassModule
GO

CREATE PROCEDURE dbo.spInsertClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponent' 
)
   DROP PROCEDURE dbo.spInsertComponent
GO

CREATE PROCEDURE dbo.spInsertComponent
	@ShortName nvarchar(10),
	@Name nvarchar(50),
	@ComponentTypeID bigint,
	@CurriculumID bigint,
	@TotalCredit int,
	@TotalCourses int,
	@IsLimitCourses bit,
	@IsLimitCreditHrs bit

AS
	INSERT INTO Component (ShortName,[Name],ComponentTypeID,CurriculumID,TotalCredit,TotalCourses,IsLimitCourses,IsLimitCreditHrs) 
	values(@ShortName,@Name,@ComponentTypeID,@CurriculumID,@TotalCredit,@TotalCourses,@IsLimitCourses,@IsLimitCreditHrs)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentCourse' 
)
   DROP PROCEDURE dbo.spInsertComponentCourse
GO

CREATE PROCEDURE dbo.spInsertComponentCourse
	@ComponentID bigint,
	@CourseID bigint
AS
	Insert into ComponentCourse (ComponentID,CourseID) values (@ComponentID,@CourseID)
	select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentType' 
)
   DROP PROCEDURE dbo.spInsertComponentType
GO

CREATE PROCEDURE dbo.spInsertComponentType
	@Name nvarchar(50), 
	@IsRequired bit
AS
	INSERT INTO ComponentType ([Name],IsRequired) values(@Name,@IsRequired)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spCreateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourse' 
)
   DROP PROCEDURE dbo.spInsertCourse
GO

CREATE PROCEDURE dbo.spInsertCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourseType' 
)
   DROP PROCEDURE dbo.spInsertCourseType
GO

CREATE PROCEDURE dbo.spInsertCourseType
	@Name nvarchar(50)
AS
	INSERT into dbo.CourseType([Name]) values(@Name);
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculum' 
)
   DROP PROCEDURE dbo.spInsertCurriculum
GO

CREATE PROCEDURE dbo.spInsertCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculumType' 
)
   DROP PROCEDURE dbo.spInsertCurriculumType
GO

CREATE PROCEDURE dbo.spInsertCurriculumType
	@Name nvarchar(50) = 0
AS
	Insert Into CurriculumType values(@Name)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculumType 'NewType'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertFaculty' 
)
   DROP PROCEDURE dbo.spInsertFaculty
GO

CREATE PROCEDURE dbo.spInsertFaculty
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Insert Into Faculty Values(@FirstName, @LastName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertModuleAssessment' 
)
   DROP PROCEDURE dbo.spInsertModuleAssessment
GO

CREATE PROCEDURE dbo.spInsertModuleAssessment
	@Name nvarchar(50),
	@Weight dec(18,0),
	@AssessmentCategoryID bigint
AS
	INSERT INTO ModuleAssessment ([Name], [Weight], AssessmentCategoryID) values (@Name, @Weight, @AssessmentCategoryID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertModuleAssessment 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spInsertModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spInsertModuleAssessmentMark
	@ObtainMark dec(18,0), 
	@RegistrationID bigint,
	@ModuleAssessmentID bigint
AS
	INSERT INTO ModuleAssessmentMark (ObtainMark, RegistrationID, ModuleAssessmentID) values (@ObtainMark, @RegistrationID, @ModuleAssessmentID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertModuleAssessmentMark 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnit' 
)
   DROP PROCEDURE dbo.spInsertOrgUnit
GO

CREATE PROCEDURE dbo.spInsertOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnitType' 
)
   DROP PROCEDURE dbo.spInsertOrgUnitType
GO

CREATE PROCEDURE dbo.spInsertOrgUnitType
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	Insert Into OrgUnitType ([Name],ShortName) 
	values(@Name,@ShortName)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOrgUnitType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertRegisterStatus' 
)
   DROP PROCEDURE dbo.spInsertRegisterStatus
GO

CREATE PROCEDURE dbo.spInsertRegisterStatus
	@ShortName nvarchar(50)
AS
	INSERT INTO RegisterStatus VALUES(@ShortName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertSemester' 
)
   DROP PROCEDURE dbo.spInsertSemester
GO

CREATE PROCEDURE dbo.spInsertSemester
	@ShortName nvarchar(50),
	@Name nvarchar(250),
	@StudentGroupID bigint,
	@TermID bigint
AS
	Insert into Semester (ShortName, [Name], StudentGroupID, TermID)
	Values (@ShortName, @Name, @StudentGroupID, @TermID) Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbi.spInsertSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudent' 
)
   DROP PROCEDURE dbo.spInsertStudent
GO

CREATE PROCEDURE dbo.spInsertStudent
	@Identifier nvarchar(50), 
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	Insert into Student (Identifier, FirstName, LastName) values(@Identifier, @FirstName, @LastName)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudent '17b-012-cs','Maaz','Khan'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentGroup' 
)
   DROP PROCEDURE dbo.spInsertStudentGroup
GO

CREATE PROCEDURE dbo.spInsertStudentGroup
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@IsActive	bit = 0

AS
	Insert into StudentGroup
	(ShortName,[Name],IsActive) 
	values (@ShortName,@Name,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentProgram' 
)
   DROP PROCEDURE dbo.spInsertStudentProgram
GO

CREATE PROCEDURE dbo.spInsertStudentProgram
	@StudentID bigint,
	@BatchID bigint,
	@StartDate date,
	@EndDate date,
	@StudentStatusID bigint,
	@OverrideCurriculumID bigint,
	@MinorCurriculumID	bigint,
	@StudentGroupID bigint
AS
	Insert into StudentProgram (StudentID, BatchID, StartDate, EndDate, StudentStatusID, OverrideCurriculumID,
	MinorCurriculumID, StudentGroupID) 
	Values (@StudentID,@BatchID,@StartDate,@EndDate,@StudentStatusID,@OverrideCurriculumID,@MinorCurriculumID,@StudentGroupID)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudentProgram 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentStatus' 
)
   DROP PROCEDURE dbo.spInsertStudentStatus
GO

CREATE PROCEDURE dbo.spInsertStudentStatus
	@Name nvarchar(50)
AS
	INSERT into StudentStatus([Name]) values(@Name)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertStudentStatus 'Pending'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertTerm' 
)
   DROP PROCEDURE dbo.spInsertTerm
GO

CREATE PROCEDURE dbo.spInsertTerm
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@StartDate	date = '0',
	@EndDate	date = '0',
	@IsActive	bit

AS
	Insert into Term 
	(ShortName,[Name],StartDate,EndDate,IsActive) 
	values (@ShortName,@Name,@StartDate,@EndDate,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateAssessmentCategory' 
)
   DROP PROCEDURE dbo.spUpdateAssessmentCategory
GO

CREATE PROCEDURE dbo.spUpdateAssessmentCategory
	@AssessmentCategoryID bigint,
	@Name nvarchar(50),
	@Weight dec(18,0),
	@ClassModuleID bigint
AS
	UPDATE AssessmentCategory 
	SET [Name] = @Name, [Weight] = @Weight, ClassModuleID = @ClassModuleID
	WHERE AssessmentCategoryID = @AssessmentCategoryID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateBatch' 
)
   DROP PROCEDURE dbo.spUpdateBatch
GO

CREATE PROCEDURE dbo.spUpdateBatch
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateBatch 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClass' 
)
   DROP PROCEDURE dbo.spUpdateClass
GO

CREATE PROCEDURE dbo.spUpdateClass
	@ClassID	bigint,
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Update Class 
	set	ShortName=@ShortName,[Name]=@Name,Capacity=@Capacity
	where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClassModule' 
)
   DROP PROCEDURE dbo.spUpdateClassModule
GO

CREATE PROCEDURE dbo.spUpdateClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponent' 
)
   DROP PROCEDURE dbo.spUpdateComponent
GO

CREATE PROCEDURE dbo.spUpdateComponent
	@ComponentID bigint,
	@ShortName nvarchar(10),
	@Name nvarchar(50),
	@ComponentTypeID bigint,
	@CurriculumID bigint,
	@TotalCredit int,
	@TotalCourses int,
	@IsLimitCourses bit,
	@IsLimitCreditHrs bit
AS
	UPDATE Component
	SET ShortName=@ShortName, [Name]=@Name, ComponentTypeID=@ComponentTypeID, CurriculumID=@CurriculumID,TotalCredit=@TotalCredit,TotalCourses=@TotalCourses,
	IsLimitCourses=@IsLimitCourses,IsLimitCreditHrs=@IsLimitCreditHrs
	WHERE ComponentID=@ComponentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentCourse' 
)
   DROP PROCEDURE dbo.spUpdateComponentCourse
GO

CREATE PROCEDURE dbo.spUpdateComponentCourse
	@ComponentCourseID bigint,
	@ComponentID bigint,
	@CourseID bigint
AS
	Update ComponentCourse
	set ComponentID=@ComponentID,CourseID=@CourseID
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentType' 
)
   DROP PROCEDURE dbo.spUpdateComponentType
GO

CREATE PROCEDURE dbo.spUpdateComponentType
	@ComponentTypeID bigint,
	@Name nvarchar(50),
	@IsRequired bit
AS
	Update ComponentType
	set [Name]=@Name,IsRequired=@IsRequired
	where @ComponentTypeID=ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourse' 
)
   DROP PROCEDURE dbo.spUpdateCourse
GO

CREATE PROCEDURE dbo.spUpdateCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourseType' 
)
   DROP PROCEDURE dbo.spUpdateCourseType
GO

CREATE PROCEDURE dbo.spUpdateCourseType
	@CourseTypeID bigint,
	@Name nvarchar(50)
AS
	UPDATE CourseType
	set [Name] = @Name
	where [CourseTypeID] = @CourseTypeID
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculum' 
)
   DROP PROCEDURE dbo.spUpdateCurriculum
GO

CREATE PROCEDURE dbo.spUpdateCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculumType' 
)
   DROP PROCEDURE dbo.spUpdateCurriculumType
GO

CREATE PROCEDURE dbo.spUpdateCurriculumType
	@CurriculumTypeID bigint = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE CurriculumType 
		SET [Name] = @Name
		WHERE CurriculumTypeID = @CurriculumTypeID 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateFaculty' 
)
   DROP PROCEDURE dbo.spUpdateFaculty
GO

CREATE PROCEDURE dbo.spUpdateFaculty
	@FacultyID bigint, 
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Update	Faculty 
	SET		FirstName = @FirstName,
			LastName = @LastName
	WHERE	FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateFaculty
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateModuleAssessment' 
)
   DROP PROCEDURE dbo.spUpdateModuleAssessment
GO

CREATE PROCEDURE dbo.spUpdateModuleAssessment
	@ModuleAssessmentID bigint,
	@Name nvarchar(50),
	@Weight dec(18, 0),
	@AssessmentCategoryID bigint
AS
	UPDATE ModuleAssessment
	SET [Name] = @Name, [Weight] = @Weight, AssessmentCategoryID = @AssessmentCategoryID
	WHERE ModuleAssessmentID = @ModuleAssessmentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateModuleAssessment 1, 2, 3, 4
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spUpdateModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spUpdateModuleAssessmentMark
	@ModuleAssessmentMarkID bigint,
	@ObtainMark dec(18, 0),
	@RegistrationID bigint,
	@ModuleAssessmentID bigint
AS
	UPDATE ModuleAssessmentMark
	SET ObtainMark = @ObtainMark, RegistrationID = @RegistrationID, ModuleAssessmentID = @ModuleAssessmentID
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateModuleAssessmentMark 1, 2, 3, 4
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnit' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnit
GO

CREATE PROCEDURE dbo.spUpdateOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnitType' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnitType
GO

CREATE PROCEDURE dbo.spUpdateOrgUnitType
	@OrgUnitTypeID bigint,
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE OrgUnitType SET ShortName = @ShortName, [Name] = @Name where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateOrgUnitType 8, 'Mk', 'MaazKhan'
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateRegisterStatus' 
)
   DROP PROCEDURE dbo.spUpdateRegisterStatus
GO

CREATE PROCEDURE dbo.spUpdateRegisterStatus
	@RegisterStatusID bigint,
	@ShortName nvarchar(50)
AS
	Update	RegisterStatus
	SET		ShortName = @ShortName
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateSemester' 
)
   DROP PROCEDURE dbo.spUpdateSemester
GO

CREATE PROCEDURE dbo.spUpdateSemester
	@SemesterID bigint,
	@ShortName nvarchar(50),
	@Name nvarchar(250),
	@StudentGroupID bigint,
	@TermID bigint
AS
	Update Semester Set ShortName = @ShortName, [Name] = @Name, StudentGroupID = @StudentGroupID, TermID = @TermID
	Where SemesterID = @SemesterID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudent' 
)
   DROP PROCEDURE dbo.spUpdateStudent
GO

CREATE PROCEDURE dbo.spUpdateStudent
	@StudentID bigint, 
	@Identifier nvarchar(50),
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	UPDATE Student SET Identifier = @Identifier, FirstName = @FirstName, LastName = @LastName
	where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudent 3,'17b-50-cs','Ahsan','Khan' 
--GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentGroup' 
)
   DROP PROCEDURE dbo.spUpdateStudentGroup
GO

CREATE PROCEDURE dbo.spUpdateStudentGroup
	@StudentGroupID bigint,
	@ShortName		nvarchar(50),
	@Name			nvarchar(250),
	@IsActive		bit = 0

AS
	Update StudentGroup
	set ShortName=@ShortName,[Name]=@Name,IsActive=@IsActive
	where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentProgram' 
)
   DROP PROCEDURE dbo.spUpdateStudentProgram
GO

CREATE PROCEDURE dbo.spUpdateStudentProgram
	@StudentProgramID bigint,
	@StudentID bigint,
	@BatchID bigint,
	@StartDate date,
	@EndDate date,
	@StudentStatusID bigint,
	@OverrideCurriculumID bigint,
	@MinorCurriculumID	bigint,
	@StudentGroupID bigint
AS
	UPDATE StudentProgram SET StudentID = @StudentID, BatchID = @BatchID, StartDate = @StartDate, EndDate = @EndDate, 
	StudentStatusID = @StudentStatusID, OverrideCurriculumID = @OverrideCurriculumID, MinorCurriculumID = @MinorCurriculumID,
	StudentGroupID = @StudentGroupID 
	where StudentProgramID = @StudentProgramID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentStatus' 
)
   DROP PROCEDURE dbo.spUpdateStudentStatus
GO

CREATE PROCEDURE dbo.spUpdateStudentStatus
	@StudentStatusID bigint,
	@Name nvarchar(50)
AS
	UPDATE StudentStatus SET [Name] = @Name where StudentStatusID = @StudentStatusID; 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateStudentStatus 6, 'Inprogress'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateTerm' 
)
   DROP PROCEDURE dbo.spUpdateTerm
GO

CREATE PROCEDURE dbo.spUpdateTerm
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spComponentTotalCourseCreditHrs' 
)
   DROP PROCEDURE dbo.spComponentTotalCourseCreditHrs
GO

CREATE PROCEDURE dbo.spComponentTotalCourseCreditHrs
	@CurriculumID bigint
AS
	SELECT count(ComponentID) as NumberofComponent, sum(TotalCourses) as TotalCourses,sum(TotalCredit) as TotalCredit
	from Component where CurriculumID=@CurriculumID   
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spTotalCreditCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteAssessmentCategory' 
)
   DROP PROCEDURE dbo.spDeleteAssessmentCategory
GO

CREATE PROCEDURE dbo.spDeleteAssessmentCategory
	@AssessmentCategoryID bigint 
AS
	DELETE FROM AssessmentCategory  
	WHERE AssessmentCategoryID = @AssessmentCategoryID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteAssessmentCategory 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteBatch' 
)
   DROP PROCEDURE dbo.spDeleteBatch
GO

CREATE PROCEDURE dbo.spDeleteBatch
	@BatchID bigint
AS
	Delete from Batch
	where BatchID = @BatchID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteBatch 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClass' 
)
   DROP PROCEDURE dbo.spDeleteClass
GO

CREATE PROCEDURE dbo.spDeleteClass
	@ClassID bigint
AS
	Delete Class where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClassModule' 
)
   DROP PROCEDURE dbo.spDeleteClassModule
GO

CREATE PROCEDURE dbo.spDeleteClassModule
	@ClassModuleID bigint
AS
	DELETE	ClassModule 
	WHERE	ClassModuleID = @ClassModuleID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponent' 
)
   DROP PROCEDURE dbo.spDeleteComponent
GO

CREATE PROCEDURE dbo.spDeleteComponent
	@ComponentID bigint
AS
	Delete from Component
	where ComponentID = @ComponentID
GO
-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentCourse' 
)
   DROP PROCEDURE dbo.spDeleteComponentCourse
GO

CREATE PROCEDURE dbo.spDeleteComponentCourse
	@ComponentCourseID bigint
AS
	Delete from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentType' 
)
   DROP PROCEDURE dbo.spDeleteComponentType
GO

CREATE PROCEDURE dbo.spDeleteComponentType
	@ComponentTypeID bigint
AS
	Delete From ComponentType where ComponentTypeID=@ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourse' 
)
   DROP PROCEDURE dbo.spDeleteCourse
GO

CREATE PROCEDURE dbo.spDeleteCourse
	@CourseID bigint
AS
	Delete from Course
	where CourseID=@CourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourseType' 
)
   DROP PROCEDURE dbo.spDeleteCourseType
GO

CREATE PROCEDURE dbo.spDeleteCourseType
	@CourseTypeID bigint
AS
	DELETE from CourseType where CourseTypeID=@CourseTypeID
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculum' 
)
   DROP PROCEDURE dbo.spDeleteCurriculum
GO

CREATE PROCEDURE dbo.spDeleteCurriculum
	@CurriculumID bigint
AS
	Delete from Curriculum where CurriculumID=@CurriculumID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculumType' 
)
   DROP PROCEDURE dbo.spDeleteCurriculumType
GO

CREATE PROCEDURE dbo.spDeleteCurriculumType
	@CurriculumTypeID bigint = 0
AS
	DELETE FROM CurriculumType WHERE CurriculumTypeID = @CurriculumTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteFaculty' 
)
   DROP PROCEDURE dbo.spDeleteFaculty
GO

CREATE PROCEDURE dbo.spDeleteFaculty
	@FacultyID bigint
AS
	DELETE Faculty WHERE FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteModuleAssessment' 
)
   DROP PROCEDURE dbo.spDeleteModuleAssessment
GO

CREATE PROCEDURE dbo.spDeleteModuleAssessment
	@ModuleAssessmentID bigint
AS
	DELETE FROM ModuleAssessment 
	WHERE ModuleAssessmentID = @ModuleAssessmentID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteModuleAssessment 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spDeleteModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spDeleteModuleAssessmentMark
	@ModuleAssessmentMarkID bigint
AS
	DELETE FROM ModuleAssessmentMark
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteModuleAssessmentMark 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnit' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnit
GO

CREATE PROCEDURE dbo.spDeleteOrgUnit
	@OrgUnitID bigint
AS
	Delete from 
	OrgUnit
	where OrgUnitID=@OrgUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnitType' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnitType
GO

CREATE PROCEDURE dbo.spDeleteOrgUnitType
	@OrgUnitTypeID bigint
AS
	DELETE FROM OrgUnitType where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteOrgUnitType 8
GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteRegisterStatus' 
)
   DROP PROCEDURE dbo.spDeleteRegisterStatus
GO

CREATE PROCEDURE dbo.spDeleteRegisterStatus
	@RegisterStatusID bigint
AS
	DELETE RegisterStatus
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteRegistration' 
)
   DROP PROCEDURE dbo.spDeleteRegistration
GO

CREATE PROCEDURE dbo.spDeleteRegistration
	@RegistrationID bigint
AS
	Delete from Registration 
	Where RegistrationID = @RegistrationID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteRegistration
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteSemester' 
)
   DROP PROCEDURE dbo.spDeleteSemester
GO

CREATE PROCEDURE dbo.spDeleteSemester
	@SemesterID bigint
AS
	Delete from Semester 
	where SemesterID = @SemesterID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudent' 
)
   DROP PROCEDURE dbo.spDeleteStudent
GO

CREATE PROCEDURE dbo.spDeleteStudent
	@StudentID bigint
AS
	DELETE from Student where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudent 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentGroup' 
)
   DROP PROCEDURE dbo.spDeleteStudentGroup
GO

CREATE PROCEDURE dbo.spDeleteStudentGroup
	@StudentGroupID bigint
AS
	Delete from StudentGroup where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentProgram' 
)
   DROP PROCEDURE dbo.spDeleteStudentProgram
GO

CREATE PROCEDURE dbo.spDeleteStudentProgram
	@StudentProgramID bigint
AS
	Delete from StudentProgram
	where StudentProgramID = @StudentProgramID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentStatus' 
)
   DROP PROCEDURE dbo.spDeleteStudentStatus
GO

CREATE PROCEDURE dbo.spDeleteStudentStatus
	@StudentStatusID bigint 
AS
	DELETE from StudentStatus where StudentStatusID = @StudentStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudent 6
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteTerm' 
)
   DROP PROCEDURE dbo.spDeleteTerm
GO

CREATE PROCEDURE dbo.spDeleteTerm
	@TermID bigint
AS
	Delete from Term where TermID=@TermID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindAssessmentCategory' 
)
   DROP PROCEDURE dbo.spFindAssessmentCategory
GO

CREATE PROCEDURE dbo.spFindAssessmentCategory
	@AssessmentCategoryID bigint
AS
	SELECT * FROM AssessmentCategory
	WHERE AssessmentCategoryID = @AssessmentCategoryID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindAssessmentCategory 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindBatch' 
)
   DROP PROCEDURE dbo.spFindBatch
GO

CREATE PROCEDURE dbo.spFindBatch
	@BatchID bigint
AS
	SELECT Top 1 * 
	from Batch
	where BatchID = @BatchID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindBatch 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClass' 
)
   DROP PROCEDURE dbo.spFindClass
GO

CREATE PROCEDURE dbo.spFindClass
	@ClassID bigint
AS
	SELECT Top 1 *
	from Class
	where ClassID = @ClassID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClassModule' 
)
   DROP PROCEDURE dbo.spFindClassModule
GO

CREATE PROCEDURE dbo.spFindClassModule
	@ClassModuleID bigint
AS
	SELECT Top 1 *
	from ClassModule
	where ClassModuleID = @ClassModuleID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponent' 
)
   DROP PROCEDURE dbo.spFindComponent
GO

CREATE PROCEDURE dbo.spFindComponent
	@ComponentID bigint
AS
	SELECT Top 1 * 
	from Component
	where ComponentID = @ComponentID
	For json Auto, Without_Array_Wrapper;
GO
-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentCourse' 
)
   DROP PROCEDURE dbo.spFindComponentCourse
GO

CREATE PROCEDURE dbo.spFindComponentCourse
	@ComponentCourseID bigint
AS
	SELECT top 1*
	from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentType' 
)
   DROP PROCEDURE dbo.spFindComponentType
GO

CREATE PROCEDURE dbo.spFindComponentType
	@ComponentTypeID bigint
AS
	SELECT Top 1 * 
	from ComponentType
	Where ComponentTypeID=@ComponentTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourse' 
)
   DROP PROCEDURE dbo.spFindCourse
GO

CREATE PROCEDURE dbo.spFindCourse
	@CourseID bigint
AS
	SELECT Top 1 *
	from Course
	where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseIDComponentCourse' 
)
   DROP PROCEDURE dbo.spFindCourseIDComponentCourse
GO

CREATE PROCEDURE dbo.spFindCourseIDComponentCourse
	@CourseID bigint
AS
	SELECT Top 1 * 
	from ComponentCourse where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourseIDComponentCourse 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseType' 
)
   DROP PROCEDURE dbo.spFindCourseType
GO

CREATE PROCEDURE dbo.spFindCourseType	
	@CourseTypeID bigint
AS
	SELECT TOP 1 *
	FROM CourseType
	WHERE CourseTypeID = @CourseTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculum' 
)
   DROP PROCEDURE dbo.spFindCurriculum
GO

CREATE PROCEDURE dbo.spFindCurriculum
	@CurriculumID bigint
AS
	SELECT Top 1 *
	from Curriculum
	where CurriculumID=@CurriculumID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apFindCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculumType' 
)
   DROP PROCEDURE dbo.spFindCurriculumType
GO

CREATE PROCEDURE dbo.spFindCurriculumType
	@CurriculumTypeID bigint = 0
AS
	SELECT	TOP 1 * 
	FROM	CurriculumType 
	WHERE	CurriculumTypeID = @CurriculumTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCurriculumType 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindFaculty' 
)
   DROP PROCEDURE dbo.spFindFaculty
GO

CREATE PROCEDURE dbo.spFindFaculty
	@FacultyID bigint
AS
	SELECT Top 1 *
	from Faculty
	where FacultyID = @FacultyID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClasModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindModuleAssessment' 
)
   DROP PROCEDURE dbo.spFindModuleAssessment
GO

CREATE PROCEDURE dbo.spFindModuleAssessment
	@ModuleAssessmentID bigint

AS
	SELECT Top 1 * 
	FROM ModuleAssessment
	WHERE ModuleAssessmentID = @ModuleAssessmentID
	For json Auto, without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindModuleAssessment 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spFindModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spFindModuleAssessmentMark
	@ModuleAssessmentMarkID bigint
AS
	SELECT Top 1 *
	FROM ModuleAssessmentMark
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindModuleAssessmentMark 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnit' 
)
   DROP PROCEDURE dbo.spFindOrgUnit
GO

CREATE PROCEDURE dbo.spFindOrgUnit
	@OrgUnitID bigint 
AS
	Select top 1* 
	From OrgUnit
	where OrgUnitID=@OrgUnitID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnitType' 
)
   DROP PROCEDURE dbo.spFindOrgUnitType
GO

CREATE PROCEDURE dbo.spFindOrgUnitType
	@OrgUnitTypeID bigint
AS
	SELECT top 1*
	from OrgUnitType 
	where OrgUnitTypeID = @OrgUnitTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================

-- EXECUTE dbo.spFindOrgUnitType 1
-- GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindParentOrgUnit' 
)
   DROP PROCEDURE dbo.spFindParentOrgUnit
GO

CREATE PROCEDURE dbo.spFindParentOrgUnit
	@ParentUnitID bigint
AS
	SELECT * from OrgUnit 
	where ParentUnitID=@ParentUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindParentOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindRegisterStatus' 
)
   DROP PROCEDURE dbo.spFindRegisterStatus
GO

CREATE PROCEDURE dbo.spFindRegisterStatus
	@RegisterStatusID bigint
AS
	SELECT top 1 *
	from RegisterStatus
	where RegisterStatusID = @RegisterStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindRegistration' 
)
   DROP PROCEDURE dbo.spFindRegistration
GO

CREATE PROCEDURE dbo.spFindRegistration
	@RegistrationID bigint
AS
	Select top 1* from Registration
	Where RegistrationID = @RegistrationID for json auto, without_Array_Wrapper
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindRegistration
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindSemester' 
)
   DROP PROCEDURE dbo.spFindSemester
GO

CREATE PROCEDURE dbo.spFindSemester
	@SemesterID bigint
AS
	SELECT top 1* from Semester
	Where SemesterID = @SemesterID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudent' 
)
   DROP PROCEDURE dbo.spFindStudent
GO

CREATE PROCEDURE dbo.spFindStudent
	@StudentID bigint 
AS
	Select top 1*
	from Student 
	where StudentID = @StudentID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudent 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentGroup' 
)
   DROP PROCEDURE dbo.spFindStudentGroup
GO

CREATE PROCEDURE dbo.spFindStudentGroup
	@StudentGroupID bigint
AS
	SELECT TOP 1 *
	FROM StudentGroup
	WHERE StudentGroupID = @StudentGroupID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentProgram' 
)
   DROP PROCEDURE dbo.spFindStudentProgram
GO

CREATE PROCEDURE dbo.spFindStudentProgram
	@StudentProgramID bigint
AS
	SELECT Top 1 * from StudentProgram
	where StudentProgramID = @StudentProgramID
	For json Auto, Without_Array_Wrapper;
GO	


-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentStatus' 
)
   DROP PROCEDURE dbo.spFindStudentStatus
GO

CREATE PROCEDURE dbo.spFindStudentStatus
	@StudentStatusID bigint
AS
	Select top 1*from StudentStatus where StudentStatusID = @StudentStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentStatus 5
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindTerm' 
)
   DROP PROCEDURE dbo.spFindTerm
GO

CREATE PROCEDURE dbo.spFindTerm
	@TermID bigint
AS
	SELECT top 1 *
	from Term
	where TermID=@TermID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllAssessmentCategory' 
)
   DROP PROCEDURE dbo.spGetAllAssessmentCategory
GO

CREATE PROCEDURE dbo.spGetAllAssessmentCategory
AS
	SELECT * FROM AssessmentCategory FOR JSON AUTO;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllAssessmentCategory 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllBatch' 
)
   DROP PROCEDURE dbo.spGetAllBatch
GO

CREATE PROCEDURE dbo.spGetAllBatch
AS
	SELECT * from Batch FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllBatch 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClass' 
)
   DROP PROCEDURE dbo.spGetAllClass
GO

CREATE PROCEDURE dbo.spGetAllClass

AS
	SELECT * from Class FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClassModule' 
)
   DROP PROCEDURE dbo.spGetAllClassModule
GO

CREATE PROCEDURE dbo.spGetAllClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponent' 
)
   DROP PROCEDURE dbo.spGetAllComponent
GO

CREATE PROCEDURE dbo.spGetAllComponent
AS
	SELECT * from Component FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponentCourse' 
)
   DROP PROCEDURE dbo.spGetAllComponentCourse
GO

CREATE PROCEDURE dbo.spGetAllComponentCourse

AS
	SELECT * from ComponentCourse FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGETAllComponentType' 
)
   DROP PROCEDURE dbo.spGETAllComponentType
GO

CREATE PROCEDURE dbo.spGETAllComponentType
AS
	SELECT * from ComponentType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGETALLComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourse' 
)
   DROP PROCEDURE dbo.spGetAllCourse
GO

CREATE PROCEDURE dbo.spGetAllCourse
AS
	SELECT *
	From Course
	For json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourseType' 
)
   DROP PROCEDURE dbo.spGetAllCourseType
GO

CREATE PROCEDURE dbo.spGetAllCourseType
AS
	SELECT * from  dbo.CourseType FOR JSON Auto;
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculum' 
)
   DROP PROCEDURE dbo.spGetAllCurriculum
GO

CREATE PROCEDURE dbo.spGetAllCurriculum

AS
	SELECT * from Curriculum FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculumType' 
)
   DROP PROCEDURE dbo.spGetAllCurriculumType
GO

CREATE PROCEDURE dbo.spGetAllCurriculumType
AS
	SELECT	*
	FROM	CurriculumType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllFaculty' 
)
   DROP PROCEDURE dbo.spGetAllFaculty
GO

CREATE PROCEDURE dbo.spGetAllFaculty
AS
	SELECT	* FROM Faculty FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllModuleAssessment' 
)
   DROP PROCEDURE dbo.spGetAllModuleAssessment
GO

CREATE PROCEDURE dbo.spGetAllModuleAssessment
AS
	SELECT *
	From ModuleAssessment
	For json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllModuleAssessment
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spGetAllModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spGetAllModuleAssessmentMark
AS
	SELECT * FROM ModuleAssessmentMark FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllModuleAssessmentMark 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnit' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnit
GO

CREATE PROCEDURE dbo.spGetAllOrgUnit

AS
	SELECT * 
	from OrgUnit FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnitType' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnitType
GO

CREATE PROCEDURE dbo.spGetAllOrgUnitType	
AS
	SELECT *From OrgUnitType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnitType 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllRegisterStatus' 
)
   DROP PROCEDURE dbo.spGetAllRegisterStatus
GO

CREATE PROCEDURE dbo.spGetAllRegisterStatus
AS
	SELECT * FROM RegisterStatus FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllRegistration' 
)
   DROP PROCEDURE dbo.spGetAllRegistration
GO

CREATE PROCEDURE dbo.spGetAllRegistration
AS
	Select * from Registration for Json Auto 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllRegistration
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllSemester' 
)
   DROP PROCEDURE dbo.spGetAllSemester
GO

CREATE PROCEDURE dbo.spGetAllSemester
	
AS
	SELECT * from Semester For Json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudent' 
)
   DROP PROCEDURE dbo.spGetAllStudent
GO

CREATE PROCEDURE dbo.spGetAllStudent
AS
	SELECT *from Student FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudent 
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentGroup' 
)
   DROP PROCEDURE dbo.spGetAllStudentGroup
GO

CREATE PROCEDURE dbo.spGetAllStudentGroup

AS
	SELECT * from StudentGroup FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentProgram' 
)
   DROP PROCEDURE dbo.spGetAllStudentProgram
GO

CREATE PROCEDURE dbo.spGetAllStudentProgram
	
AS
	SELECT * from StudentProgram FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentStatus' 
)
   DROP PROCEDURE dbo.spGetAllStudentStatus
GO

CREATE PROCEDURE dbo.spGetAllStudentStatus

AS
	SELECT *from StudentStatus FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudentStatus
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllTerm' 
)
   DROP PROCEDURE dbo.spGetAllTerm
GO

CREATE PROCEDURE dbo.spGetAllTerm
AS
	SELECT * from Term FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetComponentSummary' 
)
   DROP PROCEDURE dbo.spGetComponentSummary
GO

CREATE PROCEDURE dbo.spGetComponentSummary
	@ComponentID bigint
AS
		select CC.ComponentID,  COUNT(c.CourseID) as 'TotalCourses', 
		Sum(c.TheoryCredit+c.LabCredit) as 'TotalCreditHrs' 
from	Course as c Inner join ComponentCourse CC on CC.CourseID = C.CourseID
where	CC.ComponentID = @ComponentID
group by CC.ComponentID
		
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetComponentSummary 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCourseName' 
)
   DROP PROCEDURE dbo.spGetCourseName
GO

CREATE PROCEDURE dbo.spGetCourseName
	@Name nvarchar(50)
AS
	SELECT * from Course where [Name] =@Name
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCourseName 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCurriculumType' 
)
   DROP PROCEDURE dbo.spGetCurriculumType
GO

CREATE PROCEDURE dbo.spGetCurriculumType
	@CurriculumTypeID bigint
AS
	SELECT * from Curriculum where CurriculumTypeID=@CurriculumTypeID
	FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetOwnerUnit' 
)
   DROP PROCEDURE dbo.spGetOwnerUnit
GO

CREATE PROCEDURE dbo.spGetOwnerUnit
	@OwnerUnitID bigint
AS
	SELECT * from Curriculum where OwnerUnitID =@OwnerUnitID
	FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetOwnerUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertAssessmentCategory' 
)
   DROP PROCEDURE dbo.spInsertAssessmentCategory
GO

CREATE PROCEDURE dbo.spInsertAssessmentCategory
	@Name nvarchar(50), 
	@Weight dec(18, 0),
	@ClassModuleID bigint
AS
	INSERT INTO AssessmentCategory ([Name], [Weight], ClassModuleID) values(@Name, @Weight, @ClassModuleID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertAssessmentCategory 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertBatch' 
)
   DROP PROCEDURE dbo.spInsertBatch
GO

CREATE PROCEDURE dbo.spInsertBatch
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertBatch "BS-2022", "BS(CS)2022", 2022, 2026, 4, 2  
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClass' 
)
   DROP PROCEDURE dbo.spInsertClass
GO

CREATE PROCEDURE dbo.spInsertClass
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Insert into Class (ShortName,[Name],Capacity) values (@ShortName,@Name,@Capacity)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClassModule' 
)
   DROP PROCEDURE dbo.spInsertClassModule
GO

CREATE PROCEDURE dbo.spInsertClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponent' 
)
   DROP PROCEDURE dbo.spInsertComponent
GO

CREATE PROCEDURE dbo.spInsertComponent
	@ShortName nvarchar(10),
	@Name nvarchar(50),
	@ComponentTypeID bigint,
	@CurriculumID bigint,
	@TotalCredit int,
	@TotalCourses int,
	@IsLimitCourses bit,
	@IsLimitCreditHrs bit

AS
	INSERT INTO Component (ShortName,[Name],ComponentTypeID,CurriculumID,TotalCredit,TotalCourses,IsLimitCourses,IsLimitCreditHrs) 
	values(@ShortName,@Name,@ComponentTypeID,@CurriculumID,@TotalCredit,@TotalCourses,@IsLimitCourses,@IsLimitCreditHrs)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentCourse' 
)
   DROP PROCEDURE dbo.spInsertComponentCourse
GO

CREATE PROCEDURE dbo.spInsertComponentCourse
	@ComponentID bigint,
	@CourseID bigint
AS
	Insert into ComponentCourse (ComponentID,CourseID) values (@ComponentID,@CourseID)
	select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentType' 
)
   DROP PROCEDURE dbo.spInsertComponentType
GO

CREATE PROCEDURE dbo.spInsertComponentType
	@Name nvarchar(50), 
	@IsRequired bit
AS
	INSERT INTO ComponentType ([Name],IsRequired) values(@Name,@IsRequired)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spCreateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourse' 
)
   DROP PROCEDURE dbo.spInsertCourse
GO

CREATE PROCEDURE dbo.spInsertCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourseType' 
)
   DROP PROCEDURE dbo.spInsertCourseType
GO

CREATE PROCEDURE dbo.spInsertCourseType
	@Name nvarchar(50)
AS
	INSERT into dbo.CourseType([Name]) values(@Name);
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculum' 
)
   DROP PROCEDURE dbo.spInsertCurriculum
GO

CREATE PROCEDURE dbo.spInsertCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculumType' 
)
   DROP PROCEDURE dbo.spInsertCurriculumType
GO

CREATE PROCEDURE dbo.spInsertCurriculumType
	@Name nvarchar(50) = 0
AS
	Insert Into CurriculumType values(@Name)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculumType 'NewType'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertFaculty' 
)
   DROP PROCEDURE dbo.spInsertFaculty
GO

CREATE PROCEDURE dbo.spInsertFaculty
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Insert Into Faculty Values(@FirstName, @LastName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertModuleAssessment' 
)
   DROP PROCEDURE dbo.spInsertModuleAssessment
GO

CREATE PROCEDURE dbo.spInsertModuleAssessment
	@Name nvarchar(50),
	@Weight dec(18,0),
	@AssessmentCategoryID bigint
AS
	INSERT INTO ModuleAssessment ([Name], [Weight], AssessmentCategoryID) values (@Name, @Weight, @AssessmentCategoryID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertModuleAssessment 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spInsertModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spInsertModuleAssessmentMark
	@ObtainMark dec(18,0), 
	@RegistrationID bigint,
	@ModuleAssessmentID bigint
AS
	INSERT INTO ModuleAssessmentMark (ObtainMark, RegistrationID, ModuleAssessmentID) values (@ObtainMark, @RegistrationID, @ModuleAssessmentID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertModuleAssessmentMark 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnit' 
)
   DROP PROCEDURE dbo.spInsertOrgUnit
GO

CREATE PROCEDURE dbo.spInsertOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnitType' 
)
   DROP PROCEDURE dbo.spInsertOrgUnitType
GO

CREATE PROCEDURE dbo.spInsertOrgUnitType
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	Insert Into OrgUnitType ([Name],ShortName) 
	values(@Name,@ShortName)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOrgUnitType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertRegisterStatus' 
)
   DROP PROCEDURE dbo.spInsertRegisterStatus
GO

CREATE PROCEDURE dbo.spInsertRegisterStatus
	@ShortName nvarchar(50)
AS
	INSERT INTO RegisterStatus VALUES(@ShortName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertRegistration' 
)
   DROP PROCEDURE dbo.spInsertRegistration
GO

CREATE PROCEDURE dbo.spInsertRegistration
	@RegisterDate datetime,
	@StudentProgramID bigint,
	@ClassID bigint,
	@RegisterStatusID bigint
AS
	Insert into Registration (RegisterDate, StudentProgramID, ClassID, RegisterStatusID) 
	Values (@RegisterDate,@StudentProgramID,@ClassID,@RegisterStatusID) Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertRegistration
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertSemester' 
)
   DROP PROCEDURE dbo.spInsertSemester
GO

CREATE PROCEDURE dbo.spInsertSemester
	@ShortName nvarchar(50),
	@Name nvarchar(250),
	@StudentGroupID bigint,
	@TermID bigint
AS
	Insert into Semester (ShortName, [Name], StudentGroupID, TermID)
	Values (@ShortName, @Name, @StudentGroupID, @TermID) Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbi.spInsertSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudent' 
)
   DROP PROCEDURE dbo.spInsertStudent
GO

CREATE PROCEDURE dbo.spInsertStudent
	@Identifier nvarchar(50), 
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	Insert into Student (Identifier, FirstName, LastName) values(@Identifier, @FirstName, @LastName)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudent '17b-012-cs','Maaz','Khan'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentGroup' 
)
   DROP PROCEDURE dbo.spInsertStudentGroup
GO

CREATE PROCEDURE dbo.spInsertStudentGroup
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@IsActive	bit = 0

AS
	Insert into StudentGroup
	(ShortName,[Name],IsActive) 
	values (@ShortName,@Name,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentProgram' 
)
   DROP PROCEDURE dbo.spInsertStudentProgram
GO

CREATE PROCEDURE dbo.spInsertStudentProgram
	@StudentID bigint,
	@BatchID bigint,
	@StartDate date,
	@EndDate date,
	@StudentStatusID bigint,
	@OverrideCurriculumID bigint,
	@MinorCurriculumID	bigint,
	@StudentGroupID bigint
AS
	Insert into StudentProgram (StudentID, BatchID, StartDate, EndDate, StudentStatusID, OverrideCurriculumID,
	MinorCurriculumID, StudentGroupID) 
	Values (@StudentID,@BatchID,@StartDate,@EndDate,@StudentStatusID,@OverrideCurriculumID,@MinorCurriculumID,@StudentGroupID)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudentProgram 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentStatus' 
)
   DROP PROCEDURE dbo.spInsertStudentStatus
GO

CREATE PROCEDURE dbo.spInsertStudentStatus
	@Name nvarchar(50)
AS
	INSERT into StudentStatus([Name]) values(@Name)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertStudentStatus 'Pending'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertTerm' 
)
   DROP PROCEDURE dbo.spInsertTerm
GO

CREATE PROCEDURE dbo.spInsertTerm
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@StartDate	date = '0',
	@EndDate	date = '0',
	@IsActive	bit

AS
	Insert into Term 
	(ShortName,[Name],StartDate,EndDate,IsActive) 
	values (@ShortName,@Name,@StartDate,@EndDate,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateAssessmentCategory' 
)
   DROP PROCEDURE dbo.spUpdateAssessmentCategory
GO

CREATE PROCEDURE dbo.spUpdateAssessmentCategory
	@AssessmentCategoryID bigint,
	@Name nvarchar(50),
	@Weight dec(18,0),
	@ClassModuleID bigint
AS
	UPDATE AssessmentCategory 
	SET [Name] = @Name, [Weight] = @Weight, ClassModuleID = @ClassModuleID
	WHERE AssessmentCategoryID = @AssessmentCategoryID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateBatch' 
)
   DROP PROCEDURE dbo.spUpdateBatch
GO

CREATE PROCEDURE dbo.spUpdateBatch
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateBatch 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClass' 
)
   DROP PROCEDURE dbo.spUpdateClass
GO

CREATE PROCEDURE dbo.spUpdateClass
	@ClassID	bigint,
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Update Class 
	set	ShortName=@ShortName,[Name]=@Name,Capacity=@Capacity
	where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClassModule' 
)
   DROP PROCEDURE dbo.spUpdateClassModule
GO

CREATE PROCEDURE dbo.spUpdateClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponent' 
)
   DROP PROCEDURE dbo.spUpdateComponent
GO

CREATE PROCEDURE dbo.spUpdateComponent
	@ComponentID bigint,
	@ShortName nvarchar(10),
	@Name nvarchar(50),
	@ComponentTypeID bigint,
	@CurriculumID bigint,
	@TotalCredit int,
	@TotalCourses int,
	@IsLimitCourses bit,
	@IsLimitCreditHrs bit
AS
	UPDATE Component
	SET ShortName=@ShortName, [Name]=@Name, ComponentTypeID=@ComponentTypeID, CurriculumID=@CurriculumID,TotalCredit=@TotalCredit,TotalCourses=@TotalCourses,
	IsLimitCourses=@IsLimitCourses,IsLimitCreditHrs=@IsLimitCreditHrs
	WHERE ComponentID=@ComponentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentCourse' 
)
   DROP PROCEDURE dbo.spUpdateComponentCourse
GO

CREATE PROCEDURE dbo.spUpdateComponentCourse
	@ComponentCourseID bigint,
	@ComponentID bigint,
	@CourseID bigint
AS
	Update ComponentCourse
	set ComponentID=@ComponentID,CourseID=@CourseID
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentType' 
)
   DROP PROCEDURE dbo.spUpdateComponentType
GO

CREATE PROCEDURE dbo.spUpdateComponentType
	@ComponentTypeID bigint,
	@Name nvarchar(50),
	@IsRequired bit
AS
	Update ComponentType
	set [Name]=@Name,IsRequired=@IsRequired
	where @ComponentTypeID=ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourse' 
)
   DROP PROCEDURE dbo.spUpdateCourse
GO

CREATE PROCEDURE dbo.spUpdateCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourseType' 
)
   DROP PROCEDURE dbo.spUpdateCourseType
GO

CREATE PROCEDURE dbo.spUpdateCourseType
	@CourseTypeID bigint,
	@Name nvarchar(50)
AS
	UPDATE CourseType
	set [Name] = @Name
	where [CourseTypeID] = @CourseTypeID
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculum' 
)
   DROP PROCEDURE dbo.spUpdateCurriculum
GO

CREATE PROCEDURE dbo.spUpdateCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculumType' 
)
   DROP PROCEDURE dbo.spUpdateCurriculumType
GO

CREATE PROCEDURE dbo.spUpdateCurriculumType
	@CurriculumTypeID bigint = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE CurriculumType 
		SET [Name] = @Name
		WHERE CurriculumTypeID = @CurriculumTypeID 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateFaculty' 
)
   DROP PROCEDURE dbo.spUpdateFaculty
GO

CREATE PROCEDURE dbo.spUpdateFaculty
	@FacultyID bigint, 
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Update	Faculty 
	SET		FirstName = @FirstName,
			LastName = @LastName
	WHERE	FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateFaculty
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateModuleAssessment' 
)
   DROP PROCEDURE dbo.spUpdateModuleAssessment
GO

CREATE PROCEDURE dbo.spUpdateModuleAssessment
	@ModuleAssessmentID bigint,
	@Name nvarchar(50),
	@Weight dec(18, 0),
	@AssessmentCategoryID bigint
AS
	UPDATE ModuleAssessment
	SET [Name] = @Name, [Weight] = @Weight, AssessmentCategoryID = @AssessmentCategoryID
	WHERE ModuleAssessmentID = @ModuleAssessmentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateModuleAssessment 1, 2, 3, 4
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spUpdateModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spUpdateModuleAssessmentMark
	@ModuleAssessmentMarkID bigint,
	@ObtainMark dec(18, 0),
	@RegistrationID bigint,
	@ModuleAssessmentID bigint
AS
	UPDATE ModuleAssessmentMark
	SET ObtainMark = @ObtainMark, RegistrationID = @RegistrationID, ModuleAssessmentID = @ModuleAssessmentID
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateModuleAssessmentMark 1, 2, 3, 4
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnit' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnit
GO

CREATE PROCEDURE dbo.spUpdateOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnitType' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnitType
GO

CREATE PROCEDURE dbo.spUpdateOrgUnitType
	@OrgUnitTypeID bigint,
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE OrgUnitType SET ShortName = @ShortName, [Name] = @Name where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateOrgUnitType 8, 'Mk', 'MaazKhan'
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateRegisterStatus' 
)
   DROP PROCEDURE dbo.spUpdateRegisterStatus
GO

CREATE PROCEDURE dbo.spUpdateRegisterStatus
	@RegisterStatusID bigint,
	@ShortName nvarchar(50)
AS
	Update	RegisterStatus
	SET		ShortName = @ShortName
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateRegistration' 
)
   DROP PROCEDURE dbo.spUpdateRegistration
GO

CREATE PROCEDURE dbo.spUpdateRegistration
	@RegistrationID bigint,
	@RegisterDate datetime,
	@StudentProgramID bigint,
	@ClassID bigint,
	@RegisterStatusID bigint
AS
	Update Registration Set RegisterDate = @RegisterDate, StudentProgramID = @StudentProgramID, 
	ClassID = @ClassID, RegisterStatusID = @RegisterStatusID
	Where RegistrationID = @RegistrationID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateRegistration
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateSemester' 
)
   DROP PROCEDURE dbo.spUpdateSemester
GO

CREATE PROCEDURE dbo.spUpdateSemester
	@SemesterID bigint,
	@ShortName nvarchar(50),
	@Name nvarchar(250),
	@StudentGroupID bigint,
	@TermID bigint
AS
	Update Semester Set ShortName = @ShortName, [Name] = @Name, StudentGroupID = @StudentGroupID, TermID = @TermID
	Where SemesterID = @SemesterID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudent' 
)
   DROP PROCEDURE dbo.spUpdateStudent
GO

CREATE PROCEDURE dbo.spUpdateStudent
	@StudentID bigint, 
	@Identifier nvarchar(50),
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	UPDATE Student SET Identifier = @Identifier, FirstName = @FirstName, LastName = @LastName
	where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudent 3,'17b-50-cs','Ahsan','Khan' 
--GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentGroup' 
)
   DROP PROCEDURE dbo.spUpdateStudentGroup
GO

CREATE PROCEDURE dbo.spUpdateStudentGroup
	@StudentGroupID bigint,
	@ShortName		nvarchar(50),
	@Name			nvarchar(250),
	@IsActive		bit = 0

AS
	Update StudentGroup
	set ShortName=@ShortName,[Name]=@Name,IsActive=@IsActive
	where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentProgram' 
)
   DROP PROCEDURE dbo.spUpdateStudentProgram
GO

CREATE PROCEDURE dbo.spUpdateStudentProgram
	@StudentProgramID bigint,
	@StudentID bigint,
	@BatchID bigint,
	@StartDate date,
	@EndDate date,
	@StudentStatusID bigint,
	@OverrideCurriculumID bigint,
	@MinorCurriculumID	bigint,
	@StudentGroupID bigint
AS
	UPDATE StudentProgram SET StudentID = @StudentID, BatchID = @BatchID, StartDate = @StartDate, EndDate = @EndDate, 
	StudentStatusID = @StudentStatusID, OverrideCurriculumID = @OverrideCurriculumID, MinorCurriculumID = @MinorCurriculumID,
	StudentGroupID = @StudentGroupID 
	where StudentProgramID = @StudentProgramID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentStatus' 
)
   DROP PROCEDURE dbo.spUpdateStudentStatus
GO

CREATE PROCEDURE dbo.spUpdateStudentStatus
	@StudentStatusID bigint,
	@Name nvarchar(50)
AS
	UPDATE StudentStatus SET [Name] = @Name where StudentStatusID = @StudentStatusID; 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateStudentStatus 6, 'Inprogress'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateTerm' 
)
   DROP PROCEDURE dbo.spUpdateTerm
GO

CREATE PROCEDURE dbo.spUpdateTerm
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spComponentTotalCourseCreditHrs' 
)
   DROP PROCEDURE dbo.spComponentTotalCourseCreditHrs
GO

CREATE PROCEDURE dbo.spComponentTotalCourseCreditHrs
	@CurriculumID bigint
AS
	SELECT count(ComponentID) as NumberofComponent, sum(TotalCourses) as TotalCourses,sum(TotalCredit) as TotalCredit
	from Component where CurriculumID=@CurriculumID   
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spTotalCreditCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteAssessmentCategory' 
)
   DROP PROCEDURE dbo.spDeleteAssessmentCategory
GO

CREATE PROCEDURE dbo.spDeleteAssessmentCategory
	@AssessmentCategoryID bigint 
AS
	DELETE FROM AssessmentCategory  
	WHERE AssessmentCategoryID = @AssessmentCategoryID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteAssessmentCategory 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteBatch' 
)
   DROP PROCEDURE dbo.spDeleteBatch
GO

CREATE PROCEDURE dbo.spDeleteBatch
	@BatchID bigint
AS
	Delete from Batch
	where BatchID = @BatchID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteBatch 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClass' 
)
   DROP PROCEDURE dbo.spDeleteClass
GO

CREATE PROCEDURE dbo.spDeleteClass
	@ClassID bigint
AS
	Delete Class where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClassModule' 
)
   DROP PROCEDURE dbo.spDeleteClassModule
GO

CREATE PROCEDURE dbo.spDeleteClassModule
	@ClassModuleID bigint
AS
	DELETE	ClassModule 
	WHERE	ClassModuleID = @ClassModuleID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponent' 
)
   DROP PROCEDURE dbo.spDeleteComponent
GO

CREATE PROCEDURE dbo.spDeleteComponent
	@ComponentID bigint
AS
	Delete from Component
	where ComponentID = @ComponentID
GO
-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentCourse' 
)
   DROP PROCEDURE dbo.spDeleteComponentCourse
GO

CREATE PROCEDURE dbo.spDeleteComponentCourse
	@ComponentCourseID bigint
AS
	Delete from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentType' 
)
   DROP PROCEDURE dbo.spDeleteComponentType
GO

CREATE PROCEDURE dbo.spDeleteComponentType
	@ComponentTypeID bigint
AS
	Delete From ComponentType where ComponentTypeID=@ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourse' 
)
   DROP PROCEDURE dbo.spDeleteCourse
GO

CREATE PROCEDURE dbo.spDeleteCourse
	@CourseID bigint
AS
	Delete from Course
	where CourseID=@CourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourseType' 
)
   DROP PROCEDURE dbo.spDeleteCourseType
GO

CREATE PROCEDURE dbo.spDeleteCourseType
	@CourseTypeID bigint
AS
	DELETE from CourseType where CourseTypeID=@CourseTypeID
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculum' 
)
   DROP PROCEDURE dbo.spDeleteCurriculum
GO

CREATE PROCEDURE dbo.spDeleteCurriculum
	@CurriculumID bigint
AS
	Delete from Curriculum where CurriculumID=@CurriculumID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculumType' 
)
   DROP PROCEDURE dbo.spDeleteCurriculumType
GO

CREATE PROCEDURE dbo.spDeleteCurriculumType
	@CurriculumTypeID bigint = 0
AS
	DELETE FROM CurriculumType WHERE CurriculumTypeID = @CurriculumTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteFaculty' 
)
   DROP PROCEDURE dbo.spDeleteFaculty
GO

CREATE PROCEDURE dbo.spDeleteFaculty
	@FacultyID bigint
AS
	DELETE Faculty WHERE FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteModuleAssessment' 
)
   DROP PROCEDURE dbo.spDeleteModuleAssessment
GO

CREATE PROCEDURE dbo.spDeleteModuleAssessment
	@ModuleAssessmentID bigint
AS
	DELETE FROM ModuleAssessment 
	WHERE ModuleAssessmentID = @ModuleAssessmentID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteModuleAssessment 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spDeleteModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spDeleteModuleAssessmentMark
	@ModuleAssessmentMarkID bigint
AS
	DELETE FROM ModuleAssessmentMark
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteModuleAssessmentMark 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOffering' 
)
   DROP PROCEDURE dbo.spDeleteOffering
GO

CREATE PROCEDURE dbo.spDeleteOffering
	@OfferingID bigint
AS
	Delete from Offering Where OfferingID = @OfferingID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteOffering
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnit' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnit
GO

CREATE PROCEDURE dbo.spDeleteOrgUnit
	@OrgUnitID bigint
AS
	Delete from 
	OrgUnit
	where OrgUnitID=@OrgUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnitType' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnitType
GO

CREATE PROCEDURE dbo.spDeleteOrgUnitType
	@OrgUnitTypeID bigint
AS
	DELETE FROM OrgUnitType where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteOrgUnitType 8
GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteRegisterStatus' 
)
   DROP PROCEDURE dbo.spDeleteRegisterStatus
GO

CREATE PROCEDURE dbo.spDeleteRegisterStatus
	@RegisterStatusID bigint
AS
	DELETE RegisterStatus
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteRegistration' 
)
   DROP PROCEDURE dbo.spDeleteRegistration
GO

CREATE PROCEDURE dbo.spDeleteRegistration
	@RegistrationID bigint
AS
	Delete from Registration 
	Where RegistrationID = @RegistrationID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteRegistration
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteSemester' 
)
   DROP PROCEDURE dbo.spDeleteSemester
GO

CREATE PROCEDURE dbo.spDeleteSemester
	@SemesterID bigint
AS
	Delete from Semester 
	where SemesterID = @SemesterID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudent' 
)
   DROP PROCEDURE dbo.spDeleteStudent
GO

CREATE PROCEDURE dbo.spDeleteStudent
	@StudentID bigint
AS
	DELETE from Student where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudent 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentGroup' 
)
   DROP PROCEDURE dbo.spDeleteStudentGroup
GO

CREATE PROCEDURE dbo.spDeleteStudentGroup
	@StudentGroupID bigint
AS
	Delete from StudentGroup where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentProgram' 
)
   DROP PROCEDURE dbo.spDeleteStudentProgram
GO

CREATE PROCEDURE dbo.spDeleteStudentProgram
	@StudentProgramID bigint
AS
	Delete from StudentProgram
	where StudentProgramID = @StudentProgramID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentStatus' 
)
   DROP PROCEDURE dbo.spDeleteStudentStatus
GO

CREATE PROCEDURE dbo.spDeleteStudentStatus
	@StudentStatusID bigint 
AS
	DELETE from StudentStatus where StudentStatusID = @StudentStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudent 6
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteTerm' 
)
   DROP PROCEDURE dbo.spDeleteTerm
GO

CREATE PROCEDURE dbo.spDeleteTerm
	@TermID bigint
AS
	Delete from Term where TermID=@TermID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindAssessmentCategory' 
)
   DROP PROCEDURE dbo.spFindAssessmentCategory
GO

CREATE PROCEDURE dbo.spFindAssessmentCategory
	@AssessmentCategoryID bigint
AS
	SELECT * FROM AssessmentCategory
	WHERE AssessmentCategoryID = @AssessmentCategoryID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindAssessmentCategory 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindBatch' 
)
   DROP PROCEDURE dbo.spFindBatch
GO

CREATE PROCEDURE dbo.spFindBatch
	@BatchID bigint
AS
	SELECT Top 1 * 
	from Batch
	where BatchID = @BatchID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindBatch 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClass' 
)
   DROP PROCEDURE dbo.spFindClass
GO

CREATE PROCEDURE dbo.spFindClass
	@ClassID bigint
AS
	SELECT Top 1 *
	from Class
	where ClassID = @ClassID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClassModule' 
)
   DROP PROCEDURE dbo.spFindClassModule
GO

CREATE PROCEDURE dbo.spFindClassModule
	@ClassModuleID bigint
AS
	SELECT Top 1 *
	from ClassModule
	where ClassModuleID = @ClassModuleID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponent' 
)
   DROP PROCEDURE dbo.spFindComponent
GO

CREATE PROCEDURE dbo.spFindComponent
	@ComponentID bigint
AS
	SELECT Top 1 * 
	from Component
	where ComponentID = @ComponentID
	For json Auto, Without_Array_Wrapper;
GO
-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentCourse' 
)
   DROP PROCEDURE dbo.spFindComponentCourse
GO

CREATE PROCEDURE dbo.spFindComponentCourse
	@ComponentCourseID bigint
AS
	SELECT top 1*
	from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentType' 
)
   DROP PROCEDURE dbo.spFindComponentType
GO

CREATE PROCEDURE dbo.spFindComponentType
	@ComponentTypeID bigint
AS
	SELECT Top 1 * 
	from ComponentType
	Where ComponentTypeID=@ComponentTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourse' 
)
   DROP PROCEDURE dbo.spFindCourse
GO

CREATE PROCEDURE dbo.spFindCourse
	@CourseID bigint
AS
	SELECT Top 1 *
	from Course
	where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseIDComponentCourse' 
)
   DROP PROCEDURE dbo.spFindCourseIDComponentCourse
GO

CREATE PROCEDURE dbo.spFindCourseIDComponentCourse
	@CourseID bigint
AS
	SELECT Top 1 * 
	from ComponentCourse where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourseIDComponentCourse 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseType' 
)
   DROP PROCEDURE dbo.spFindCourseType
GO

CREATE PROCEDURE dbo.spFindCourseType	
	@CourseTypeID bigint
AS
	SELECT TOP 1 *
	FROM CourseType
	WHERE CourseTypeID = @CourseTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculum' 
)
   DROP PROCEDURE dbo.spFindCurriculum
GO

CREATE PROCEDURE dbo.spFindCurriculum
	@CurriculumID bigint
AS
	SELECT Top 1 *
	from Curriculum
	where CurriculumID=@CurriculumID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apFindCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculumType' 
)
   DROP PROCEDURE dbo.spFindCurriculumType
GO

CREATE PROCEDURE dbo.spFindCurriculumType
	@CurriculumTypeID bigint = 0
AS
	SELECT	TOP 1 * 
	FROM	CurriculumType 
	WHERE	CurriculumTypeID = @CurriculumTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCurriculumType 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindFaculty' 
)
   DROP PROCEDURE dbo.spFindFaculty
GO

CREATE PROCEDURE dbo.spFindFaculty
	@FacultyID bigint
AS
	SELECT Top 1 *
	from Faculty
	where FacultyID = @FacultyID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClasModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindModuleAssessment' 
)
   DROP PROCEDURE dbo.spFindModuleAssessment
GO

CREATE PROCEDURE dbo.spFindModuleAssessment
	@ModuleAssessmentID bigint

AS
	SELECT Top 1 * 
	FROM ModuleAssessment
	WHERE ModuleAssessmentID = @ModuleAssessmentID
	For json Auto, without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindModuleAssessment 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spFindModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spFindModuleAssessmentMark
	@ModuleAssessmentMarkID bigint
AS
	SELECT Top 1 *
	FROM ModuleAssessmentMark
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindModuleAssessmentMark 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOffering' 
)
   DROP PROCEDURE dbo.spFindOffering
GO

CREATE PROCEDURE dbo.spFindOffering
	@OfferingID bigint
AS
	Select Top 1* from Offering 
	Where OfferingID = @OfferingID For Json Auto, Without_Array_Wrapper
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindOffering
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnit' 
)
   DROP PROCEDURE dbo.spFindOrgUnit
GO

CREATE PROCEDURE dbo.spFindOrgUnit
	@OrgUnitID bigint 
AS
	Select top 1* 
	From OrgUnit
	where OrgUnitID=@OrgUnitID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnitType' 
)
   DROP PROCEDURE dbo.spFindOrgUnitType
GO

CREATE PROCEDURE dbo.spFindOrgUnitType
	@OrgUnitTypeID bigint
AS
	SELECT top 1*
	from OrgUnitType 
	where OrgUnitTypeID = @OrgUnitTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================

-- EXECUTE dbo.spFindOrgUnitType 1
-- GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindParentOrgUnit' 
)
   DROP PROCEDURE dbo.spFindParentOrgUnit
GO

CREATE PROCEDURE dbo.spFindParentOrgUnit
	@ParentUnitID bigint
AS
	SELECT * from OrgUnit 
	where ParentUnitID=@ParentUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindParentOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindRegisterStatus' 
)
   DROP PROCEDURE dbo.spFindRegisterStatus
GO

CREATE PROCEDURE dbo.spFindRegisterStatus
	@RegisterStatusID bigint
AS
	SELECT top 1 *
	from RegisterStatus
	where RegisterStatusID = @RegisterStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindRegistration' 
)
   DROP PROCEDURE dbo.spFindRegistration
GO

CREATE PROCEDURE dbo.spFindRegistration
	@RegistrationID bigint
AS
	Select top 1* from Registration
	Where RegistrationID = @RegistrationID for json auto, without_Array_Wrapper
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindRegistration
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindSemester' 
)
   DROP PROCEDURE dbo.spFindSemester
GO

CREATE PROCEDURE dbo.spFindSemester
	@SemesterID bigint
AS
	SELECT top 1* from Semester
	Where SemesterID = @SemesterID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudent' 
)
   DROP PROCEDURE dbo.spFindStudent
GO

CREATE PROCEDURE dbo.spFindStudent
	@StudentID bigint 
AS
	Select top 1*
	from Student 
	where StudentID = @StudentID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudent 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentGroup' 
)
   DROP PROCEDURE dbo.spFindStudentGroup
GO

CREATE PROCEDURE dbo.spFindStudentGroup
	@StudentGroupID bigint
AS
	SELECT TOP 1 *
	FROM StudentGroup
	WHERE StudentGroupID = @StudentGroupID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentProgram' 
)
   DROP PROCEDURE dbo.spFindStudentProgram
GO

CREATE PROCEDURE dbo.spFindStudentProgram
	@StudentProgramID bigint
AS
	SELECT Top 1 * from StudentProgram
	where StudentProgramID = @StudentProgramID
	For json Auto, Without_Array_Wrapper;
GO	


-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentStatus' 
)
   DROP PROCEDURE dbo.spFindStudentStatus
GO

CREATE PROCEDURE dbo.spFindStudentStatus
	@StudentStatusID bigint
AS
	Select top 1*from StudentStatus where StudentStatusID = @StudentStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentStatus 5
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindTerm' 
)
   DROP PROCEDURE dbo.spFindTerm
GO

CREATE PROCEDURE dbo.spFindTerm
	@TermID bigint
AS
	SELECT top 1 *
	from Term
	where TermID=@TermID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllAssessmentCategory' 
)
   DROP PROCEDURE dbo.spGetAllAssessmentCategory
GO

CREATE PROCEDURE dbo.spGetAllAssessmentCategory
AS
	SELECT * FROM AssessmentCategory FOR JSON AUTO;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllAssessmentCategory 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllBatch' 
)
   DROP PROCEDURE dbo.spGetAllBatch
GO

CREATE PROCEDURE dbo.spGetAllBatch
AS
	SELECT * from Batch FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllBatch 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClass' 
)
   DROP PROCEDURE dbo.spGetAllClass
GO

CREATE PROCEDURE dbo.spGetAllClass

AS
	SELECT * from Class FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClassModule' 
)
   DROP PROCEDURE dbo.spGetAllClassModule
GO

CREATE PROCEDURE dbo.spGetAllClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponent' 
)
   DROP PROCEDURE dbo.spGetAllComponent
GO

CREATE PROCEDURE dbo.spGetAllComponent
AS
	SELECT * from Component FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponentCourse' 
)
   DROP PROCEDURE dbo.spGetAllComponentCourse
GO

CREATE PROCEDURE dbo.spGetAllComponentCourse

AS
	SELECT * from ComponentCourse FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGETAllComponentType' 
)
   DROP PROCEDURE dbo.spGETAllComponentType
GO

CREATE PROCEDURE dbo.spGETAllComponentType
AS
	SELECT * from ComponentType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGETALLComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourse' 
)
   DROP PROCEDURE dbo.spGetAllCourse
GO

CREATE PROCEDURE dbo.spGetAllCourse
AS
	SELECT *
	From Course
	For json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourseType' 
)
   DROP PROCEDURE dbo.spGetAllCourseType
GO

CREATE PROCEDURE dbo.spGetAllCourseType
AS
	SELECT * from  dbo.CourseType FOR JSON Auto;
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculum' 
)
   DROP PROCEDURE dbo.spGetAllCurriculum
GO

CREATE PROCEDURE dbo.spGetAllCurriculum

AS
	SELECT * from Curriculum FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculumType' 
)
   DROP PROCEDURE dbo.spGetAllCurriculumType
GO

CREATE PROCEDURE dbo.spGetAllCurriculumType
AS
	SELECT	*
	FROM	CurriculumType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllFaculty' 
)
   DROP PROCEDURE dbo.spGetAllFaculty
GO

CREATE PROCEDURE dbo.spGetAllFaculty
AS
	SELECT	* FROM Faculty FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllModuleAssessment' 
)
   DROP PROCEDURE dbo.spGetAllModuleAssessment
GO

CREATE PROCEDURE dbo.spGetAllModuleAssessment
AS
	SELECT *
	From ModuleAssessment
	For json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllModuleAssessment
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spGetAllModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spGetAllModuleAssessmentMark
AS
	SELECT * FROM ModuleAssessmentMark FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllModuleAssessmentMark 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOffering' 
)
   DROP PROCEDURE dbo.spGetAllOffering
GO

CREATE PROCEDURE dbo.spGetAllOffering
AS
	Select * from Offering For Json Auto
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOffering
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnit' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnit
GO

CREATE PROCEDURE dbo.spGetAllOrgUnit

AS
	SELECT * 
	from OrgUnit FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnitType' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnitType
GO

CREATE PROCEDURE dbo.spGetAllOrgUnitType	
AS
	SELECT *From OrgUnitType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnitType 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllRegisterStatus' 
)
   DROP PROCEDURE dbo.spGetAllRegisterStatus
GO

CREATE PROCEDURE dbo.spGetAllRegisterStatus
AS
	SELECT * FROM RegisterStatus FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllRegistration' 
)
   DROP PROCEDURE dbo.spGetAllRegistration
GO

CREATE PROCEDURE dbo.spGetAllRegistration
AS
	Select * from Registration for Json Auto 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllRegistration
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllSemester' 
)
   DROP PROCEDURE dbo.spGetAllSemester
GO

CREATE PROCEDURE dbo.spGetAllSemester
	
AS
	SELECT * from Semester For Json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudent' 
)
   DROP PROCEDURE dbo.spGetAllStudent
GO

CREATE PROCEDURE dbo.spGetAllStudent
AS
	SELECT *from Student FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudent 
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentGroup' 
)
   DROP PROCEDURE dbo.spGetAllStudentGroup
GO

CREATE PROCEDURE dbo.spGetAllStudentGroup

AS
	SELECT * from StudentGroup FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentProgram' 
)
   DROP PROCEDURE dbo.spGetAllStudentProgram
GO

CREATE PROCEDURE dbo.spGetAllStudentProgram
	
AS
	SELECT * from StudentProgram FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentStatus' 
)
   DROP PROCEDURE dbo.spGetAllStudentStatus
GO

CREATE PROCEDURE dbo.spGetAllStudentStatus

AS
	SELECT *from StudentStatus FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudentStatus
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllTerm' 
)
   DROP PROCEDURE dbo.spGetAllTerm
GO

CREATE PROCEDURE dbo.spGetAllTerm
AS
	SELECT * from Term FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetComponentSummary' 
)
   DROP PROCEDURE dbo.spGetComponentSummary
GO

CREATE PROCEDURE dbo.spGetComponentSummary
	@ComponentID bigint
AS
		select CC.ComponentID,  COUNT(c.CourseID) as 'TotalCourses', 
		Sum(c.TheoryCredit+c.LabCredit) as 'TotalCreditHrs' 
from	Course as c Inner join ComponentCourse CC on CC.CourseID = C.CourseID
where	CC.ComponentID = @ComponentID
group by CC.ComponentID
		
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetComponentSummary 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCourseName' 
)
   DROP PROCEDURE dbo.spGetCourseName
GO

CREATE PROCEDURE dbo.spGetCourseName
	@Name nvarchar(50)
AS
	SELECT * from Course where [Name] =@Name
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCourseName 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCurriculumType' 
)
   DROP PROCEDURE dbo.spGetCurriculumType
GO

CREATE PROCEDURE dbo.spGetCurriculumType
	@CurriculumTypeID bigint
AS
	SELECT * from Curriculum where CurriculumTypeID=@CurriculumTypeID
	FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetOwnerUnit' 
)
   DROP PROCEDURE dbo.spGetOwnerUnit
GO

CREATE PROCEDURE dbo.spGetOwnerUnit
	@OwnerUnitID bigint
AS
	SELECT * from Curriculum where OwnerUnitID =@OwnerUnitID
	FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetOwnerUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertAssessmentCategory' 
)
   DROP PROCEDURE dbo.spInsertAssessmentCategory
GO

CREATE PROCEDURE dbo.spInsertAssessmentCategory
	@Name nvarchar(50), 
	@Weight dec(18, 0),
	@ClassModuleID bigint
AS
	INSERT INTO AssessmentCategory ([Name], [Weight], ClassModuleID) values(@Name, @Weight, @ClassModuleID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertAssessmentCategory 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertBatch' 
)
   DROP PROCEDURE dbo.spInsertBatch
GO

CREATE PROCEDURE dbo.spInsertBatch
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertBatch "BS-2022", "BS(CS)2022", 2022, 2026, 4, 2  
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClass' 
)
   DROP PROCEDURE dbo.spInsertClass
GO

CREATE PROCEDURE dbo.spInsertClass
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Insert into Class (ShortName,[Name],Capacity) values (@ShortName,@Name,@Capacity)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClassModule' 
)
   DROP PROCEDURE dbo.spInsertClassModule
GO

CREATE PROCEDURE dbo.spInsertClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponent' 
)
   DROP PROCEDURE dbo.spInsertComponent
GO

CREATE PROCEDURE dbo.spInsertComponent
	@ShortName nvarchar(10),
	@Name nvarchar(50),
	@ComponentTypeID bigint,
	@CurriculumID bigint,
	@TotalCredit int,
	@TotalCourses int,
	@IsLimitCourses bit,
	@IsLimitCreditHrs bit

AS
	INSERT INTO Component (ShortName,[Name],ComponentTypeID,CurriculumID,TotalCredit,TotalCourses,IsLimitCourses,IsLimitCreditHrs) 
	values(@ShortName,@Name,@ComponentTypeID,@CurriculumID,@TotalCredit,@TotalCourses,@IsLimitCourses,@IsLimitCreditHrs)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentCourse' 
)
   DROP PROCEDURE dbo.spInsertComponentCourse
GO

CREATE PROCEDURE dbo.spInsertComponentCourse
	@ComponentID bigint,
	@CourseID bigint
AS
	Insert into ComponentCourse (ComponentID,CourseID) values (@ComponentID,@CourseID)
	select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentType' 
)
   DROP PROCEDURE dbo.spInsertComponentType
GO

CREATE PROCEDURE dbo.spInsertComponentType
	@Name nvarchar(50), 
	@IsRequired bit
AS
	INSERT INTO ComponentType ([Name],IsRequired) values(@Name,@IsRequired)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spCreateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourse' 
)
   DROP PROCEDURE dbo.spInsertCourse
GO

CREATE PROCEDURE dbo.spInsertCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourseType' 
)
   DROP PROCEDURE dbo.spInsertCourseType
GO

CREATE PROCEDURE dbo.spInsertCourseType
	@Name nvarchar(50)
AS
	INSERT into dbo.CourseType([Name]) values(@Name);
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculum' 
)
   DROP PROCEDURE dbo.spInsertCurriculum
GO

CREATE PROCEDURE dbo.spInsertCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculumType' 
)
   DROP PROCEDURE dbo.spInsertCurriculumType
GO

CREATE PROCEDURE dbo.spInsertCurriculumType
	@Name nvarchar(50) = 0
AS
	Insert Into CurriculumType values(@Name)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculumType 'NewType'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertFaculty' 
)
   DROP PROCEDURE dbo.spInsertFaculty
GO

CREATE PROCEDURE dbo.spInsertFaculty
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Insert Into Faculty Values(@FirstName, @LastName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertModuleAssessment' 
)
   DROP PROCEDURE dbo.spInsertModuleAssessment
GO

CREATE PROCEDURE dbo.spInsertModuleAssessment
	@Name nvarchar(50),
	@Weight dec(18,0),
	@AssessmentCategoryID bigint
AS
	INSERT INTO ModuleAssessment ([Name], [Weight], AssessmentCategoryID) values (@Name, @Weight, @AssessmentCategoryID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertModuleAssessment 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spInsertModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spInsertModuleAssessmentMark
	@ObtainMark dec(18,0), 
	@RegistrationID bigint,
	@ModuleAssessmentID bigint
AS
	INSERT INTO ModuleAssessmentMark (ObtainMark, RegistrationID, ModuleAssessmentID) values (@ObtainMark, @RegistrationID, @ModuleAssessmentID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertModuleAssessmentMark 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOffering' 
)
   DROP PROCEDURE dbo.spInsertOffering
GO

CREATE PROCEDURE dbo.spInsertOffering
	@CousreID bigint,
	@TermID bigint,
	@OrgUnitID bigint,
	@SemesterID bigint
AS
	Insert into Offering (CousreID, TermID, OrgUnitID, SemesterID)
	Values(@CousreID,@TermID,@OrgUnitID,@SemesterID) Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOffering
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnit' 
)
   DROP PROCEDURE dbo.spInsertOrgUnit
GO

CREATE PROCEDURE dbo.spInsertOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnitType' 
)
   DROP PROCEDURE dbo.spInsertOrgUnitType
GO

CREATE PROCEDURE dbo.spInsertOrgUnitType
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	Insert Into OrgUnitType ([Name],ShortName) 
	values(@Name,@ShortName)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOrgUnitType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertRegisterStatus' 
)
   DROP PROCEDURE dbo.spInsertRegisterStatus
GO

CREATE PROCEDURE dbo.spInsertRegisterStatus
	@ShortName nvarchar(50)
AS
	INSERT INTO RegisterStatus VALUES(@ShortName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertRegistration' 
)
   DROP PROCEDURE dbo.spInsertRegistration
GO

CREATE PROCEDURE dbo.spInsertRegistration
	@RegisterDate datetime,
	@StudentProgramID bigint,
	@ClassID bigint,
	@RegisterStatusID bigint
AS
	Insert into Registration (RegisterDate, StudentProgramID, ClassID, RegisterStatusID) 
	Values (@RegisterDate,@StudentProgramID,@ClassID,@RegisterStatusID) Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertRegistration
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertSemester' 
)
   DROP PROCEDURE dbo.spInsertSemester
GO

CREATE PROCEDURE dbo.spInsertSemester
	@ShortName nvarchar(50),
	@Name nvarchar(250),
	@StudentGroupID bigint,
	@TermID bigint
AS
	Insert into Semester (ShortName, [Name], StudentGroupID, TermID)
	Values (@ShortName, @Name, @StudentGroupID, @TermID) Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbi.spInsertSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudent' 
)
   DROP PROCEDURE dbo.spInsertStudent
GO

CREATE PROCEDURE dbo.spInsertStudent
	@Identifier nvarchar(50), 
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	Insert into Student (Identifier, FirstName, LastName) values(@Identifier, @FirstName, @LastName)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudent '17b-012-cs','Maaz','Khan'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentGroup' 
)
   DROP PROCEDURE dbo.spInsertStudentGroup
GO

CREATE PROCEDURE dbo.spInsertStudentGroup
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@IsActive	bit = 0

AS
	Insert into StudentGroup
	(ShortName,[Name],IsActive) 
	values (@ShortName,@Name,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentProgram' 
)
   DROP PROCEDURE dbo.spInsertStudentProgram
GO

CREATE PROCEDURE dbo.spInsertStudentProgram
	@StudentID bigint,
	@BatchID bigint,
	@StartDate date,
	@EndDate date,
	@StudentStatusID bigint,
	@OverrideCurriculumID bigint,
	@MinorCurriculumID	bigint,
	@StudentGroupID bigint
AS
	Insert into StudentProgram (StudentID, BatchID, StartDate, EndDate, StudentStatusID, OverrideCurriculumID,
	MinorCurriculumID, StudentGroupID) 
	Values (@StudentID,@BatchID,@StartDate,@EndDate,@StudentStatusID,@OverrideCurriculumID,@MinorCurriculumID,@StudentGroupID)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudentProgram 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentStatus' 
)
   DROP PROCEDURE dbo.spInsertStudentStatus
GO

CREATE PROCEDURE dbo.spInsertStudentStatus
	@Name nvarchar(50)
AS
	INSERT into StudentStatus([Name]) values(@Name)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertStudentStatus 'Pending'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertTerm' 
)
   DROP PROCEDURE dbo.spInsertTerm
GO

CREATE PROCEDURE dbo.spInsertTerm
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@StartDate	date = '0',
	@EndDate	date = '0',
	@IsActive	bit

AS
	Insert into Term 
	(ShortName,[Name],StartDate,EndDate,IsActive) 
	values (@ShortName,@Name,@StartDate,@EndDate,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateAssessmentCategory' 
)
   DROP PROCEDURE dbo.spUpdateAssessmentCategory
GO

CREATE PROCEDURE dbo.spUpdateAssessmentCategory
	@AssessmentCategoryID bigint,
	@Name nvarchar(50),
	@Weight dec(18,0),
	@ClassModuleID bigint
AS
	UPDATE AssessmentCategory 
	SET [Name] = @Name, [Weight] = @Weight, ClassModuleID = @ClassModuleID
	WHERE AssessmentCategoryID = @AssessmentCategoryID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateBatch' 
)
   DROP PROCEDURE dbo.spUpdateBatch
GO

CREATE PROCEDURE dbo.spUpdateBatch
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateBatch 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClass' 
)
   DROP PROCEDURE dbo.spUpdateClass
GO

CREATE PROCEDURE dbo.spUpdateClass
	@ClassID	bigint,
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Update Class 
	set	ShortName=@ShortName,[Name]=@Name,Capacity=@Capacity
	where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClassModule' 
)
   DROP PROCEDURE dbo.spUpdateClassModule
GO

CREATE PROCEDURE dbo.spUpdateClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponent' 
)
   DROP PROCEDURE dbo.spUpdateComponent
GO

CREATE PROCEDURE dbo.spUpdateComponent
	@ComponentID bigint,
	@ShortName nvarchar(10),
	@Name nvarchar(50),
	@ComponentTypeID bigint,
	@CurriculumID bigint,
	@TotalCredit int,
	@TotalCourses int,
	@IsLimitCourses bit,
	@IsLimitCreditHrs bit
AS
	UPDATE Component
	SET ShortName=@ShortName, [Name]=@Name, ComponentTypeID=@ComponentTypeID, CurriculumID=@CurriculumID,TotalCredit=@TotalCredit,TotalCourses=@TotalCourses,
	IsLimitCourses=@IsLimitCourses,IsLimitCreditHrs=@IsLimitCreditHrs
	WHERE ComponentID=@ComponentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentCourse' 
)
   DROP PROCEDURE dbo.spUpdateComponentCourse
GO

CREATE PROCEDURE dbo.spUpdateComponentCourse
	@ComponentCourseID bigint,
	@ComponentID bigint,
	@CourseID bigint
AS
	Update ComponentCourse
	set ComponentID=@ComponentID,CourseID=@CourseID
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentType' 
)
   DROP PROCEDURE dbo.spUpdateComponentType
GO

CREATE PROCEDURE dbo.spUpdateComponentType
	@ComponentTypeID bigint,
	@Name nvarchar(50),
	@IsRequired bit
AS
	Update ComponentType
	set [Name]=@Name,IsRequired=@IsRequired
	where @ComponentTypeID=ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourse' 
)
   DROP PROCEDURE dbo.spUpdateCourse
GO

CREATE PROCEDURE dbo.spUpdateCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourseType' 
)
   DROP PROCEDURE dbo.spUpdateCourseType
GO

CREATE PROCEDURE dbo.spUpdateCourseType
	@CourseTypeID bigint,
	@Name nvarchar(50)
AS
	UPDATE CourseType
	set [Name] = @Name
	where [CourseTypeID] = @CourseTypeID
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculum' 
)
   DROP PROCEDURE dbo.spUpdateCurriculum
GO

CREATE PROCEDURE dbo.spUpdateCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculumType' 
)
   DROP PROCEDURE dbo.spUpdateCurriculumType
GO

CREATE PROCEDURE dbo.spUpdateCurriculumType
	@CurriculumTypeID bigint = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE CurriculumType 
		SET [Name] = @Name
		WHERE CurriculumTypeID = @CurriculumTypeID 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateFaculty' 
)
   DROP PROCEDURE dbo.spUpdateFaculty
GO

CREATE PROCEDURE dbo.spUpdateFaculty
	@FacultyID bigint, 
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Update	Faculty 
	SET		FirstName = @FirstName,
			LastName = @LastName
	WHERE	FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateFaculty
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateModuleAssessment' 
)
   DROP PROCEDURE dbo.spUpdateModuleAssessment
GO

CREATE PROCEDURE dbo.spUpdateModuleAssessment
	@ModuleAssessmentID bigint,
	@Name nvarchar(50),
	@Weight dec(18, 0),
	@AssessmentCategoryID bigint
AS
	UPDATE ModuleAssessment
	SET [Name] = @Name, [Weight] = @Weight, AssessmentCategoryID = @AssessmentCategoryID
	WHERE ModuleAssessmentID = @ModuleAssessmentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateModuleAssessment 1, 2, 3, 4
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spUpdateModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spUpdateModuleAssessmentMark
	@ModuleAssessmentMarkID bigint,
	@ObtainMark dec(18, 0),
	@RegistrationID bigint,
	@ModuleAssessmentID bigint
AS
	UPDATE ModuleAssessmentMark
	SET ObtainMark = @ObtainMark, RegistrationID = @RegistrationID, ModuleAssessmentID = @ModuleAssessmentID
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateModuleAssessmentMark 1, 2, 3, 4
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOffering' 
)
   DROP PROCEDURE dbo.spUpdateOffering
GO

CREATE PROCEDURE dbo.spUpdateOffering
	@OfferingID bigint,
	@CousreID bigint,
	@TermID bigint,
	@OrgUnitID bigint,
	@SemesterID bigint
AS
	Update Offering Set CousreID = @CousreID, TermID = @TermID, OrgUnitID = @OrgUnitID, SemesterID = @SemesterID
	Where OfferingID = @OfferingID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateOffering
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnit' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnit
GO

CREATE PROCEDURE dbo.spUpdateOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnitType' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnitType
GO

CREATE PROCEDURE dbo.spUpdateOrgUnitType
	@OrgUnitTypeID bigint,
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE OrgUnitType SET ShortName = @ShortName, [Name] = @Name where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateOrgUnitType 8, 'Mk', 'MaazKhan'
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateRegisterStatus' 
)
   DROP PROCEDURE dbo.spUpdateRegisterStatus
GO

CREATE PROCEDURE dbo.spUpdateRegisterStatus
	@RegisterStatusID bigint,
	@ShortName nvarchar(50)
AS
	Update	RegisterStatus
	SET		ShortName = @ShortName
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateRegistration' 
)
   DROP PROCEDURE dbo.spUpdateRegistration
GO

CREATE PROCEDURE dbo.spUpdateRegistration
	@RegistrationID bigint,
	@RegisterDate datetime,
	@StudentProgramID bigint,
	@ClassID bigint,
	@RegisterStatusID bigint
AS
	Update Registration Set RegisterDate = @RegisterDate, StudentProgramID = @StudentProgramID, 
	ClassID = @ClassID, RegisterStatusID = @RegisterStatusID
	Where RegistrationID = @RegistrationID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateRegistration
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateSemester' 
)
   DROP PROCEDURE dbo.spUpdateSemester
GO

CREATE PROCEDURE dbo.spUpdateSemester
	@SemesterID bigint,
	@ShortName nvarchar(50),
	@Name nvarchar(250),
	@StudentGroupID bigint,
	@TermID bigint
AS
	Update Semester Set ShortName = @ShortName, [Name] = @Name, StudentGroupID = @StudentGroupID, TermID = @TermID
	Where SemesterID = @SemesterID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudent' 
)
   DROP PROCEDURE dbo.spUpdateStudent
GO

CREATE PROCEDURE dbo.spUpdateStudent
	@StudentID bigint, 
	@Identifier nvarchar(50),
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	UPDATE Student SET Identifier = @Identifier, FirstName = @FirstName, LastName = @LastName
	where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudent 3,'17b-50-cs','Ahsan','Khan' 
--GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentGroup' 
)
   DROP PROCEDURE dbo.spUpdateStudentGroup
GO

CREATE PROCEDURE dbo.spUpdateStudentGroup
	@StudentGroupID bigint,
	@ShortName		nvarchar(50),
	@Name			nvarchar(250),
	@IsActive		bit = 0

AS
	Update StudentGroup
	set ShortName=@ShortName,[Name]=@Name,IsActive=@IsActive
	where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentProgram' 
)
   DROP PROCEDURE dbo.spUpdateStudentProgram
GO

CREATE PROCEDURE dbo.spUpdateStudentProgram
	@StudentProgramID bigint,
	@StudentID bigint,
	@BatchID bigint,
	@StartDate date,
	@EndDate date,
	@StudentStatusID bigint,
	@OverrideCurriculumID bigint,
	@MinorCurriculumID	bigint,
	@StudentGroupID bigint
AS
	UPDATE StudentProgram SET StudentID = @StudentID, BatchID = @BatchID, StartDate = @StartDate, EndDate = @EndDate, 
	StudentStatusID = @StudentStatusID, OverrideCurriculumID = @OverrideCurriculumID, MinorCurriculumID = @MinorCurriculumID,
	StudentGroupID = @StudentGroupID 
	where StudentProgramID = @StudentProgramID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentStatus' 
)
   DROP PROCEDURE dbo.spUpdateStudentStatus
GO

CREATE PROCEDURE dbo.spUpdateStudentStatus
	@StudentStatusID bigint,
	@Name nvarchar(50)
AS
	UPDATE StudentStatus SET [Name] = @Name where StudentStatusID = @StudentStatusID; 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateStudentStatus 6, 'Inprogress'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateTerm' 
)
   DROP PROCEDURE dbo.spUpdateTerm
GO

CREATE PROCEDURE dbo.spUpdateTerm
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spComponentTotalCourseCreditHrs' 
)
   DROP PROCEDURE dbo.spComponentTotalCourseCreditHrs
GO

CREATE PROCEDURE dbo.spComponentTotalCourseCreditHrs
	@CurriculumID bigint
AS
	SELECT count(ComponentID) as NumberofComponent, sum(TotalCourses) as TotalCourses,sum(TotalCredit) as TotalCredit
	from Component where CurriculumID=@CurriculumID   
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spTotalCreditCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteAssessmentCategory' 
)
   DROP PROCEDURE dbo.spDeleteAssessmentCategory
GO

CREATE PROCEDURE dbo.spDeleteAssessmentCategory
	@AssessmentCategoryID bigint 
AS
	DELETE FROM AssessmentCategory  
	WHERE AssessmentCategoryID = @AssessmentCategoryID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteAssessmentCategory 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteBatch' 
)
   DROP PROCEDURE dbo.spDeleteBatch
GO

CREATE PROCEDURE dbo.spDeleteBatch
	@BatchID bigint
AS
	Delete from Batch
	where BatchID = @BatchID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteBatch 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClass' 
)
   DROP PROCEDURE dbo.spDeleteClass
GO

CREATE PROCEDURE dbo.spDeleteClass
	@ClassID bigint
AS
	Delete Class where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClassModule' 
)
   DROP PROCEDURE dbo.spDeleteClassModule
GO

CREATE PROCEDURE dbo.spDeleteClassModule
	@ClassModuleID bigint
AS
	DELETE	ClassModule 
	WHERE	ClassModuleID = @ClassModuleID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponent' 
)
   DROP PROCEDURE dbo.spDeleteComponent
GO

CREATE PROCEDURE dbo.spDeleteComponent
	@ComponentID bigint
AS
	Delete from Component
	where ComponentID = @ComponentID
GO
-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentCourse' 
)
   DROP PROCEDURE dbo.spDeleteComponentCourse
GO

CREATE PROCEDURE dbo.spDeleteComponentCourse
	@ComponentCourseID bigint
AS
	Delete from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentType' 
)
   DROP PROCEDURE dbo.spDeleteComponentType
GO

CREATE PROCEDURE dbo.spDeleteComponentType
	@ComponentTypeID bigint
AS
	Delete From ComponentType where ComponentTypeID=@ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourse' 
)
   DROP PROCEDURE dbo.spDeleteCourse
GO

CREATE PROCEDURE dbo.spDeleteCourse
	@CourseID bigint
AS
	Delete from Course
	where CourseID=@CourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourseType' 
)
   DROP PROCEDURE dbo.spDeleteCourseType
GO

CREATE PROCEDURE dbo.spDeleteCourseType
	@CourseTypeID bigint
AS
	DELETE from CourseType where CourseTypeID=@CourseTypeID
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculum' 
)
   DROP PROCEDURE dbo.spDeleteCurriculum
GO

CREATE PROCEDURE dbo.spDeleteCurriculum
	@CurriculumID bigint
AS
	Delete from Curriculum where CurriculumID=@CurriculumID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculumType' 
)
   DROP PROCEDURE dbo.spDeleteCurriculumType
GO

CREATE PROCEDURE dbo.spDeleteCurriculumType
	@CurriculumTypeID bigint = 0
AS
	DELETE FROM CurriculumType WHERE CurriculumTypeID = @CurriculumTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteFaculty' 
)
   DROP PROCEDURE dbo.spDeleteFaculty
GO

CREATE PROCEDURE dbo.spDeleteFaculty
	@FacultyID bigint
AS
	DELETE Faculty WHERE FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteModuleAssessment' 
)
   DROP PROCEDURE dbo.spDeleteModuleAssessment
GO

CREATE PROCEDURE dbo.spDeleteModuleAssessment
	@ModuleAssessmentID bigint
AS
	DELETE FROM ModuleAssessment 
	WHERE ModuleAssessmentID = @ModuleAssessmentID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteModuleAssessment 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spDeleteModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spDeleteModuleAssessmentMark
	@ModuleAssessmentMarkID bigint
AS
	DELETE FROM ModuleAssessmentMark
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteModuleAssessmentMark 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOffering' 
)
   DROP PROCEDURE dbo.spDeleteOffering
GO

CREATE PROCEDURE dbo.spDeleteOffering
	@OfferingID bigint
AS
	Delete from Offering Where OfferingID = @OfferingID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteOffering
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnit' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnit
GO

CREATE PROCEDURE dbo.spDeleteOrgUnit
	@OrgUnitID bigint
AS
	Delete from 
	OrgUnit
	where OrgUnitID=@OrgUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnitType' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnitType
GO

CREATE PROCEDURE dbo.spDeleteOrgUnitType
	@OrgUnitTypeID bigint
AS
	DELETE FROM OrgUnitType where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteOrgUnitType 8
GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteRegisterStatus' 
)
   DROP PROCEDURE dbo.spDeleteRegisterStatus
GO

CREATE PROCEDURE dbo.spDeleteRegisterStatus
	@RegisterStatusID bigint
AS
	DELETE RegisterStatus
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteRegistration' 
)
   DROP PROCEDURE dbo.spDeleteRegistration
GO

CREATE PROCEDURE dbo.spDeleteRegistration
	@RegistrationID bigint
AS
	Delete from Registration 
	Where RegistrationID = @RegistrationID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteRegistration
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteSemester' 
)
   DROP PROCEDURE dbo.spDeleteSemester
GO

CREATE PROCEDURE dbo.spDeleteSemester
	@SemesterID bigint
AS
	Delete from Semester 
	where SemesterID = @SemesterID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudent' 
)
   DROP PROCEDURE dbo.spDeleteStudent
GO

CREATE PROCEDURE dbo.spDeleteStudent
	@StudentID bigint
AS
	DELETE from Student where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudent 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentGroup' 
)
   DROP PROCEDURE dbo.spDeleteStudentGroup
GO

CREATE PROCEDURE dbo.spDeleteStudentGroup
	@StudentGroupID bigint
AS
	Delete from StudentGroup where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentProgram' 
)
   DROP PROCEDURE dbo.spDeleteStudentProgram
GO

CREATE PROCEDURE dbo.spDeleteStudentProgram
	@StudentProgramID bigint
AS
	Delete from StudentProgram
	where StudentProgramID = @StudentProgramID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentStatus' 
)
   DROP PROCEDURE dbo.spDeleteStudentStatus
GO

CREATE PROCEDURE dbo.spDeleteStudentStatus
	@StudentStatusID bigint 
AS
	DELETE from StudentStatus where StudentStatusID = @StudentStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudent 6
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteTerm' 
)
   DROP PROCEDURE dbo.spDeleteTerm
GO

CREATE PROCEDURE dbo.spDeleteTerm
	@TermID bigint
AS
	Delete from Term where TermID=@TermID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindAssessmentCategory' 
)
   DROP PROCEDURE dbo.spFindAssessmentCategory
GO

CREATE PROCEDURE dbo.spFindAssessmentCategory
	@AssessmentCategoryID bigint
AS
	SELECT * FROM AssessmentCategory
	WHERE AssessmentCategoryID = @AssessmentCategoryID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindAssessmentCategory 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindBatch' 
)
   DROP PROCEDURE dbo.spFindBatch
GO

CREATE PROCEDURE dbo.spFindBatch
	@BatchID bigint
AS
	SELECT Top 1 * 
	from Batch
	where BatchID = @BatchID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindBatch 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClass' 
)
   DROP PROCEDURE dbo.spFindClass
GO

CREATE PROCEDURE dbo.spFindClass
	@ClassID bigint
AS
	SELECT Top 1 *
	from Class
	where ClassID = @ClassID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClassModule' 
)
   DROP PROCEDURE dbo.spFindClassModule
GO

CREATE PROCEDURE dbo.spFindClassModule
	@ClassModuleID bigint
AS
	SELECT Top 1 *
	from ClassModule
	where ClassModuleID = @ClassModuleID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponent' 
)
   DROP PROCEDURE dbo.spFindComponent
GO

CREATE PROCEDURE dbo.spFindComponent
	@ComponentID bigint
AS
	SELECT Top 1 * 
	from Component
	where ComponentID = @ComponentID
	For json Auto, Without_Array_Wrapper;
GO
-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentCourse' 
)
   DROP PROCEDURE dbo.spFindComponentCourse
GO

CREATE PROCEDURE dbo.spFindComponentCourse
	@ComponentCourseID bigint
AS
	SELECT top 1*
	from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentType' 
)
   DROP PROCEDURE dbo.spFindComponentType
GO

CREATE PROCEDURE dbo.spFindComponentType
	@ComponentTypeID bigint
AS
	SELECT Top 1 * 
	from ComponentType
	Where ComponentTypeID=@ComponentTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourse' 
)
   DROP PROCEDURE dbo.spFindCourse
GO

CREATE PROCEDURE dbo.spFindCourse
	@CourseID bigint
AS
	SELECT Top 1 *
	from Course
	where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseIDComponentCourse' 
)
   DROP PROCEDURE dbo.spFindCourseIDComponentCourse
GO

CREATE PROCEDURE dbo.spFindCourseIDComponentCourse
	@CourseID bigint
AS
	SELECT Top 1 * 
	from ComponentCourse where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourseIDComponentCourse 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseType' 
)
   DROP PROCEDURE dbo.spFindCourseType
GO

CREATE PROCEDURE dbo.spFindCourseType	
	@CourseTypeID bigint
AS
	SELECT TOP 1 *
	FROM CourseType
	WHERE CourseTypeID = @CourseTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculum' 
)
   DROP PROCEDURE dbo.spFindCurriculum
GO

CREATE PROCEDURE dbo.spFindCurriculum
	@CurriculumID bigint
AS
	SELECT Top 1 *
	from Curriculum
	where CurriculumID=@CurriculumID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apFindCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculumType' 
)
   DROP PROCEDURE dbo.spFindCurriculumType
GO

CREATE PROCEDURE dbo.spFindCurriculumType
	@CurriculumTypeID bigint = 0
AS
	SELECT	TOP 1 * 
	FROM	CurriculumType 
	WHERE	CurriculumTypeID = @CurriculumTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCurriculumType 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindFaculty' 
)
   DROP PROCEDURE dbo.spFindFaculty
GO

CREATE PROCEDURE dbo.spFindFaculty
	@FacultyID bigint
AS
	SELECT Top 1 *
	from Faculty
	where FacultyID = @FacultyID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClasModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindModuleAssessment' 
)
   DROP PROCEDURE dbo.spFindModuleAssessment
GO

CREATE PROCEDURE dbo.spFindModuleAssessment
	@ModuleAssessmentID bigint

AS
	SELECT Top 1 * 
	FROM ModuleAssessment
	WHERE ModuleAssessmentID = @ModuleAssessmentID
	For json Auto, without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindModuleAssessment 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spFindModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spFindModuleAssessmentMark
	@ModuleAssessmentMarkID bigint
AS
	SELECT Top 1 *
	FROM ModuleAssessmentMark
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindModuleAssessmentMark 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOffering' 
)
   DROP PROCEDURE dbo.spFindOffering
GO

CREATE PROCEDURE dbo.spFindOffering
	@OfferingID bigint
AS
	Select Top 1* from Offering 
	Where OfferingID = @OfferingID For Json Auto, Without_Array_Wrapper
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindOffering
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnit' 
)
   DROP PROCEDURE dbo.spFindOrgUnit
GO

CREATE PROCEDURE dbo.spFindOrgUnit
	@OrgUnitID bigint 
AS
	Select top 1* 
	From OrgUnit
	where OrgUnitID=@OrgUnitID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnitType' 
)
   DROP PROCEDURE dbo.spFindOrgUnitType
GO

CREATE PROCEDURE dbo.spFindOrgUnitType
	@OrgUnitTypeID bigint
AS
	SELECT top 1*
	from OrgUnitType 
	where OrgUnitTypeID = @OrgUnitTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================

-- EXECUTE dbo.spFindOrgUnitType 1
-- GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindParentOrgUnit' 
)
   DROP PROCEDURE dbo.spFindParentOrgUnit
GO

CREATE PROCEDURE dbo.spFindParentOrgUnit
	@ParentUnitID bigint
AS
	SELECT * from OrgUnit 
	where ParentUnitID=@ParentUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindParentOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindRegisterStatus' 
)
   DROP PROCEDURE dbo.spFindRegisterStatus
GO

CREATE PROCEDURE dbo.spFindRegisterStatus
	@RegisterStatusID bigint
AS
	SELECT top 1 *
	from RegisterStatus
	where RegisterStatusID = @RegisterStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindRegistration' 
)
   DROP PROCEDURE dbo.spFindRegistration
GO

CREATE PROCEDURE dbo.spFindRegistration
	@RegistrationID bigint
AS
	Select top 1* from Registration
	Where RegistrationID = @RegistrationID for json auto, without_Array_Wrapper
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindRegistration
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindSemester' 
)
   DROP PROCEDURE dbo.spFindSemester
GO

CREATE PROCEDURE dbo.spFindSemester
	@SemesterID bigint
AS
	SELECT top 1* from Semester
	Where SemesterID = @SemesterID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudent' 
)
   DROP PROCEDURE dbo.spFindStudent
GO

CREATE PROCEDURE dbo.spFindStudent
	@StudentID bigint 
AS
	Select top 1*
	from Student 
	where StudentID = @StudentID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudent 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentGroup' 
)
   DROP PROCEDURE dbo.spFindStudentGroup
GO

CREATE PROCEDURE dbo.spFindStudentGroup
	@StudentGroupID bigint
AS
	SELECT TOP 1 *
	FROM StudentGroup
	WHERE StudentGroupID = @StudentGroupID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentProgram' 
)
   DROP PROCEDURE dbo.spFindStudentProgram
GO

CREATE PROCEDURE dbo.spFindStudentProgram
	@StudentProgramID bigint
AS
	SELECT Top 1 * from StudentProgram
	where StudentProgramID = @StudentProgramID
	For json Auto, Without_Array_Wrapper;
GO	


-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentStatus' 
)
   DROP PROCEDURE dbo.spFindStudentStatus
GO

CREATE PROCEDURE dbo.spFindStudentStatus
	@StudentStatusID bigint
AS
	Select top 1*from StudentStatus where StudentStatusID = @StudentStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentStatus 5
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindTerm' 
)
   DROP PROCEDURE dbo.spFindTerm
GO

CREATE PROCEDURE dbo.spFindTerm
	@TermID bigint
AS
	SELECT top 1 *
	from Term
	where TermID=@TermID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllAssessmentCategory' 
)
   DROP PROCEDURE dbo.spGetAllAssessmentCategory
GO

CREATE PROCEDURE dbo.spGetAllAssessmentCategory
AS
	SELECT * FROM AssessmentCategory FOR JSON AUTO;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllAssessmentCategory 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllBatch' 
)
   DROP PROCEDURE dbo.spGetAllBatch
GO

CREATE PROCEDURE dbo.spGetAllBatch
AS
	SELECT * from Batch FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllBatch 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClass' 
)
   DROP PROCEDURE dbo.spGetAllClass
GO

CREATE PROCEDURE dbo.spGetAllClass

AS
	SELECT * from Class FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClassModule' 
)
   DROP PROCEDURE dbo.spGetAllClassModule
GO

CREATE PROCEDURE dbo.spGetAllClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponent' 
)
   DROP PROCEDURE dbo.spGetAllComponent
GO

CREATE PROCEDURE dbo.spGetAllComponent
AS
	SELECT * from Component FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponentCourse' 
)
   DROP PROCEDURE dbo.spGetAllComponentCourse
GO

CREATE PROCEDURE dbo.spGetAllComponentCourse

AS
	SELECT * from ComponentCourse FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGETAllComponentType' 
)
   DROP PROCEDURE dbo.spGETAllComponentType
GO

CREATE PROCEDURE dbo.spGETAllComponentType
AS
	SELECT * from ComponentType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGETALLComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourse' 
)
   DROP PROCEDURE dbo.spGetAllCourse
GO

CREATE PROCEDURE dbo.spGetAllCourse
AS
	SELECT *
	From Course
	For json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourseType' 
)
   DROP PROCEDURE dbo.spGetAllCourseType
GO

CREATE PROCEDURE dbo.spGetAllCourseType
AS
	SELECT * from  dbo.CourseType FOR JSON Auto;
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculum' 
)
   DROP PROCEDURE dbo.spGetAllCurriculum
GO

CREATE PROCEDURE dbo.spGetAllCurriculum

AS
	SELECT * from Curriculum FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculumType' 
)
   DROP PROCEDURE dbo.spGetAllCurriculumType
GO

CREATE PROCEDURE dbo.spGetAllCurriculumType
AS
	SELECT	*
	FROM	CurriculumType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllFaculty' 
)
   DROP PROCEDURE dbo.spGetAllFaculty
GO

CREATE PROCEDURE dbo.spGetAllFaculty
AS
	SELECT	* FROM Faculty FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllModuleAssessment' 
)
   DROP PROCEDURE dbo.spGetAllModuleAssessment
GO

CREATE PROCEDURE dbo.spGetAllModuleAssessment
AS
	SELECT *
	From ModuleAssessment
	For json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllModuleAssessment
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spGetAllModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spGetAllModuleAssessmentMark
AS
	SELECT * FROM ModuleAssessmentMark FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllModuleAssessmentMark 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOffering' 
)
   DROP PROCEDURE dbo.spGetAllOffering
GO

CREATE PROCEDURE dbo.spGetAllOffering
AS
	Select * from Offering For Json Auto
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOffering
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnit' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnit
GO

CREATE PROCEDURE dbo.spGetAllOrgUnit

AS
	SELECT * 
	from OrgUnit FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnitType' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnitType
GO

CREATE PROCEDURE dbo.spGetAllOrgUnitType	
AS
	SELECT *From OrgUnitType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnitType 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllRegisterStatus' 
)
   DROP PROCEDURE dbo.spGetAllRegisterStatus
GO

CREATE PROCEDURE dbo.spGetAllRegisterStatus
AS
	SELECT * FROM RegisterStatus FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllRegistration' 
)
   DROP PROCEDURE dbo.spGetAllRegistration
GO

CREATE PROCEDURE dbo.spGetAllRegistration
AS
	Select * from Registration for Json Auto 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllRegistration
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllSemester' 
)
   DROP PROCEDURE dbo.spGetAllSemester
GO

CREATE PROCEDURE dbo.spGetAllSemester
	
AS
	SELECT * from Semester For Json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudent' 
)
   DROP PROCEDURE dbo.spGetAllStudent
GO

CREATE PROCEDURE dbo.spGetAllStudent
AS
	SELECT *from Student FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudent 
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentGroup' 
)
   DROP PROCEDURE dbo.spGetAllStudentGroup
GO

CREATE PROCEDURE dbo.spGetAllStudentGroup

AS
	SELECT * from StudentGroup FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentProgram' 
)
   DROP PROCEDURE dbo.spGetAllStudentProgram
GO

CREATE PROCEDURE dbo.spGetAllStudentProgram
	
AS
	SELECT * from StudentProgram FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentStatus' 
)
   DROP PROCEDURE dbo.spGetAllStudentStatus
GO

CREATE PROCEDURE dbo.spGetAllStudentStatus

AS
	SELECT *from StudentStatus FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudentStatus
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllTerm' 
)
   DROP PROCEDURE dbo.spGetAllTerm
GO

CREATE PROCEDURE dbo.spGetAllTerm
AS
	SELECT * from Term FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetComponentSummary' 
)
   DROP PROCEDURE dbo.spGetComponentSummary
GO

CREATE PROCEDURE dbo.spGetComponentSummary
	@ComponentID bigint
AS
		select CC.ComponentID,  COUNT(c.CourseID) as 'TotalCourses', 
		Sum(c.TheoryCredit+c.LabCredit) as 'TotalCreditHrs' 
from	Course as c Inner join ComponentCourse CC on CC.CourseID = C.CourseID
where	CC.ComponentID = @ComponentID
group by CC.ComponentID
		
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetComponentSummary 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCourseName' 
)
   DROP PROCEDURE dbo.spGetCourseName
GO

CREATE PROCEDURE dbo.spGetCourseName
	@Name nvarchar(50)
AS
	SELECT * from Course where [Name] =@Name
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCourseName 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCurriculumType' 
)
   DROP PROCEDURE dbo.spGetCurriculumType
GO

CREATE PROCEDURE dbo.spGetCurriculumType
	@CurriculumTypeID bigint
AS
	SELECT * from Curriculum where CurriculumTypeID=@CurriculumTypeID
	FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetOwnerUnit' 
)
   DROP PROCEDURE dbo.spGetOwnerUnit
GO

CREATE PROCEDURE dbo.spGetOwnerUnit
	@OwnerUnitID bigint
AS
	SELECT * from Curriculum where OwnerUnitID =@OwnerUnitID
	FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetOwnerUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertAssessmentCategory' 
)
   DROP PROCEDURE dbo.spInsertAssessmentCategory
GO

CREATE PROCEDURE dbo.spInsertAssessmentCategory
	@Name nvarchar(50), 
	@Weight dec(18, 0),
	@ClassModuleID bigint
AS
	INSERT INTO AssessmentCategory ([Name], [Weight], ClassModuleID) values(@Name, @Weight, @ClassModuleID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertAssessmentCategory 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertBatch' 
)
   DROP PROCEDURE dbo.spInsertBatch
GO

CREATE PROCEDURE dbo.spInsertBatch
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertBatch "BS-2022", "BS(CS)2022", 2022, 2026, 4, 2  
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClass' 
)
   DROP PROCEDURE dbo.spInsertClass
GO

CREATE PROCEDURE dbo.spInsertClass
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Insert into Class (ShortName,[Name],Capacity) values (@ShortName,@Name,@Capacity)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClassModule' 
)
   DROP PROCEDURE dbo.spInsertClassModule
GO

CREATE PROCEDURE dbo.spInsertClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponent' 
)
   DROP PROCEDURE dbo.spInsertComponent
GO

CREATE PROCEDURE dbo.spInsertComponent
	@ShortName nvarchar(10),
	@Name nvarchar(50),
	@ComponentTypeID bigint,
	@CurriculumID bigint,
	@TotalCredit int,
	@TotalCourses int,
	@IsLimitCourses bit,
	@IsLimitCreditHrs bit

AS
	INSERT INTO Component (ShortName,[Name],ComponentTypeID,CurriculumID,TotalCredit,TotalCourses,IsLimitCourses,IsLimitCreditHrs) 
	values(@ShortName,@Name,@ComponentTypeID,@CurriculumID,@TotalCredit,@TotalCourses,@IsLimitCourses,@IsLimitCreditHrs)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentCourse' 
)
   DROP PROCEDURE dbo.spInsertComponentCourse
GO

CREATE PROCEDURE dbo.spInsertComponentCourse
	@ComponentID bigint,
	@CourseID bigint
AS
	Insert into ComponentCourse (ComponentID,CourseID) values (@ComponentID,@CourseID)
	select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentType' 
)
   DROP PROCEDURE dbo.spInsertComponentType
GO

CREATE PROCEDURE dbo.spInsertComponentType
	@Name nvarchar(50), 
	@IsRequired bit
AS
	INSERT INTO ComponentType ([Name],IsRequired) values(@Name,@IsRequired)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spCreateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourse' 
)
   DROP PROCEDURE dbo.spInsertCourse
GO

CREATE PROCEDURE dbo.spInsertCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourseType' 
)
   DROP PROCEDURE dbo.spInsertCourseType
GO

CREATE PROCEDURE dbo.spInsertCourseType
	@Name nvarchar(50)
AS
	INSERT into dbo.CourseType([Name]) values(@Name);
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculum' 
)
   DROP PROCEDURE dbo.spInsertCurriculum
GO

CREATE PROCEDURE dbo.spInsertCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculumType' 
)
   DROP PROCEDURE dbo.spInsertCurriculumType
GO

CREATE PROCEDURE dbo.spInsertCurriculumType
	@Name nvarchar(50) = 0
AS
	Insert Into CurriculumType values(@Name)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculumType 'NewType'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertFaculty' 
)
   DROP PROCEDURE dbo.spInsertFaculty
GO

CREATE PROCEDURE dbo.spInsertFaculty
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Insert Into Faculty Values(@FirstName, @LastName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertModuleAssessment' 
)
   DROP PROCEDURE dbo.spInsertModuleAssessment
GO

CREATE PROCEDURE dbo.spInsertModuleAssessment
	@Name nvarchar(50),
	@Weight dec(18,0),
	@AssessmentCategoryID bigint
AS
	INSERT INTO ModuleAssessment ([Name], [Weight], AssessmentCategoryID) values (@Name, @Weight, @AssessmentCategoryID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertModuleAssessment 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spInsertModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spInsertModuleAssessmentMark
	@ObtainMark dec(18,0), 
	@RegistrationID bigint,
	@ModuleAssessmentID bigint
AS
	INSERT INTO ModuleAssessmentMark (ObtainMark, RegistrationID, ModuleAssessmentID) values (@ObtainMark, @RegistrationID, @ModuleAssessmentID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertModuleAssessmentMark 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOffering' 
)
   DROP PROCEDURE dbo.spInsertOffering
GO

CREATE PROCEDURE dbo.spInsertOffering
	@CousreID bigint,
	@TermID bigint,
	@OrgUnitID bigint,
	@SemesterID bigint
AS
	Insert into Offering (CousreID, TermID, OrgUnitID, SemesterID)
	Values(@CousreID,@TermID,@OrgUnitID,@SemesterID) Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOffering
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnit' 
)
   DROP PROCEDURE dbo.spInsertOrgUnit
GO

CREATE PROCEDURE dbo.spInsertOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnitType' 
)
   DROP PROCEDURE dbo.spInsertOrgUnitType
GO

CREATE PROCEDURE dbo.spInsertOrgUnitType
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	Insert Into OrgUnitType ([Name],ShortName) 
	values(@Name,@ShortName)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOrgUnitType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertRegisterStatus' 
)
   DROP PROCEDURE dbo.spInsertRegisterStatus
GO

CREATE PROCEDURE dbo.spInsertRegisterStatus
	@ShortName nvarchar(50)
AS
	INSERT INTO RegisterStatus VALUES(@ShortName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertRegistration' 
)
   DROP PROCEDURE dbo.spInsertRegistration
GO

CREATE PROCEDURE dbo.spInsertRegistration
	@RegisterDate datetime,
	@StudentProgramID bigint,
	@ClassID bigint,
	@RegisterStatusID bigint
AS
	Insert into Registration (RegisterDate, StudentProgramID, ClassID, RegisterStatusID) 
	Values (@RegisterDate,@StudentProgramID,@ClassID,@RegisterStatusID) Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertRegistration
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertSemester' 
)
   DROP PROCEDURE dbo.spInsertSemester
GO

CREATE PROCEDURE dbo.spInsertSemester
	@ShortName nvarchar(50),
	@Name nvarchar(250),
	@StudentGroupID bigint,
	@TermID bigint
AS
	Insert into Semester (ShortName, [Name], StudentGroupID, TermID)
	Values (@ShortName, @Name, @StudentGroupID, @TermID) Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbi.spInsertSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudent' 
)
   DROP PROCEDURE dbo.spInsertStudent
GO

CREATE PROCEDURE dbo.spInsertStudent
	@Identifier nvarchar(50), 
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	Insert into Student (Identifier, FirstName, LastName) values(@Identifier, @FirstName, @LastName)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudent '17b-012-cs','Maaz','Khan'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentGroup' 
)
   DROP PROCEDURE dbo.spInsertStudentGroup
GO

CREATE PROCEDURE dbo.spInsertStudentGroup
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@IsActive	bit = 0

AS
	Insert into StudentGroup
	(ShortName,[Name],IsActive) 
	values (@ShortName,@Name,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentProgram' 
)
   DROP PROCEDURE dbo.spInsertStudentProgram
GO

CREATE PROCEDURE dbo.spInsertStudentProgram
	@StudentID bigint,
	@BatchID bigint,
	@StartDate date,
	@EndDate date,
	@StudentStatusID bigint,
	@OverrideCurriculumID bigint,
	@MinorCurriculumID	bigint,
	@StudentGroupID bigint
AS
	Insert into StudentProgram (StudentID, BatchID, StartDate, EndDate, StudentStatusID, OverrideCurriculumID,
	MinorCurriculumID, StudentGroupID) 
	Values (@StudentID,@BatchID,@StartDate,@EndDate,@StudentStatusID,@OverrideCurriculumID,@MinorCurriculumID,@StudentGroupID)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudentProgram 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentStatus' 
)
   DROP PROCEDURE dbo.spInsertStudentStatus
GO

CREATE PROCEDURE dbo.spInsertStudentStatus
	@Name nvarchar(50)
AS
	INSERT into StudentStatus([Name]) values(@Name)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertStudentStatus 'Pending'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertTerm' 
)
   DROP PROCEDURE dbo.spInsertTerm
GO

CREATE PROCEDURE dbo.spInsertTerm
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@StartDate	date = '0',
	@EndDate	date = '0',
	@IsActive	bit

AS
	Insert into Term 
	(ShortName,[Name],StartDate,EndDate,IsActive) 
	values (@ShortName,@Name,@StartDate,@EndDate,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateAssessmentCategory' 
)
   DROP PROCEDURE dbo.spUpdateAssessmentCategory
GO

CREATE PROCEDURE dbo.spUpdateAssessmentCategory
	@AssessmentCategoryID bigint,
	@Name nvarchar(50),
	@Weight dec(18,0),
	@ClassModuleID bigint
AS
	UPDATE AssessmentCategory 
	SET [Name] = @Name, [Weight] = @Weight, ClassModuleID = @ClassModuleID
	WHERE AssessmentCategoryID = @AssessmentCategoryID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateBatch' 
)
   DROP PROCEDURE dbo.spUpdateBatch
GO

CREATE PROCEDURE dbo.spUpdateBatch
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateBatch 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClass' 
)
   DROP PROCEDURE dbo.spUpdateClass
GO

CREATE PROCEDURE dbo.spUpdateClass
	@ClassID	bigint,
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Update Class 
	set	ShortName=@ShortName,[Name]=@Name,Capacity=@Capacity
	where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClassModule' 
)
   DROP PROCEDURE dbo.spUpdateClassModule
GO

CREATE PROCEDURE dbo.spUpdateClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponent' 
)
   DROP PROCEDURE dbo.spUpdateComponent
GO

CREATE PROCEDURE dbo.spUpdateComponent
	@ComponentID bigint,
	@ShortName nvarchar(10),
	@Name nvarchar(50),
	@ComponentTypeID bigint,
	@CurriculumID bigint,
	@TotalCredit int,
	@TotalCourses int,
	@IsLimitCourses bit,
	@IsLimitCreditHrs bit
AS
	UPDATE Component
	SET ShortName=@ShortName, [Name]=@Name, ComponentTypeID=@ComponentTypeID, CurriculumID=@CurriculumID,TotalCredit=@TotalCredit,TotalCourses=@TotalCourses,
	IsLimitCourses=@IsLimitCourses,IsLimitCreditHrs=@IsLimitCreditHrs
	WHERE ComponentID=@ComponentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentCourse' 
)
   DROP PROCEDURE dbo.spUpdateComponentCourse
GO

CREATE PROCEDURE dbo.spUpdateComponentCourse
	@ComponentCourseID bigint,
	@ComponentID bigint,
	@CourseID bigint
AS
	Update ComponentCourse
	set ComponentID=@ComponentID,CourseID=@CourseID
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentType' 
)
   DROP PROCEDURE dbo.spUpdateComponentType
GO

CREATE PROCEDURE dbo.spUpdateComponentType
	@ComponentTypeID bigint,
	@Name nvarchar(50),
	@IsRequired bit
AS
	Update ComponentType
	set [Name]=@Name,IsRequired=@IsRequired
	where @ComponentTypeID=ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourse' 
)
   DROP PROCEDURE dbo.spUpdateCourse
GO

CREATE PROCEDURE dbo.spUpdateCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourseType' 
)
   DROP PROCEDURE dbo.spUpdateCourseType
GO

CREATE PROCEDURE dbo.spUpdateCourseType
	@CourseTypeID bigint,
	@Name nvarchar(50)
AS
	UPDATE CourseType
	set [Name] = @Name
	where [CourseTypeID] = @CourseTypeID
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculum' 
)
   DROP PROCEDURE dbo.spUpdateCurriculum
GO

CREATE PROCEDURE dbo.spUpdateCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculumType' 
)
   DROP PROCEDURE dbo.spUpdateCurriculumType
GO

CREATE PROCEDURE dbo.spUpdateCurriculumType
	@CurriculumTypeID bigint = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE CurriculumType 
		SET [Name] = @Name
		WHERE CurriculumTypeID = @CurriculumTypeID 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateFaculty' 
)
   DROP PROCEDURE dbo.spUpdateFaculty
GO

CREATE PROCEDURE dbo.spUpdateFaculty
	@FacultyID bigint, 
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Update	Faculty 
	SET		FirstName = @FirstName,
			LastName = @LastName
	WHERE	FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateFaculty
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateModuleAssessment' 
)
   DROP PROCEDURE dbo.spUpdateModuleAssessment
GO

CREATE PROCEDURE dbo.spUpdateModuleAssessment
	@ModuleAssessmentID bigint,
	@Name nvarchar(50),
	@Weight dec(18, 0),
	@AssessmentCategoryID bigint
AS
	UPDATE ModuleAssessment
	SET [Name] = @Name, [Weight] = @Weight, AssessmentCategoryID = @AssessmentCategoryID
	WHERE ModuleAssessmentID = @ModuleAssessmentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateModuleAssessment 1, 2, 3, 4
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spUpdateModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spUpdateModuleAssessmentMark
	@ModuleAssessmentMarkID bigint,
	@ObtainMark dec(18, 0),
	@RegistrationID bigint,
	@ModuleAssessmentID bigint
AS
	UPDATE ModuleAssessmentMark
	SET ObtainMark = @ObtainMark, RegistrationID = @RegistrationID, ModuleAssessmentID = @ModuleAssessmentID
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateModuleAssessmentMark 1, 2, 3, 4
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOffering' 
)
   DROP PROCEDURE dbo.spUpdateOffering
GO

CREATE PROCEDURE dbo.spUpdateOffering
	@OfferingID bigint,
	@CousreID bigint,
	@TermID bigint,
	@OrgUnitID bigint,
	@SemesterID bigint
AS
	Update Offering Set CousreID = @CousreID, TermID = @TermID, OrgUnitID = @OrgUnitID, SemesterID = @SemesterID
	Where OfferingID = @OfferingID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateOffering
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnit' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnit
GO

CREATE PROCEDURE dbo.spUpdateOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnitType' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnitType
GO

CREATE PROCEDURE dbo.spUpdateOrgUnitType
	@OrgUnitTypeID bigint,
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE OrgUnitType SET ShortName = @ShortName, [Name] = @Name where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateOrgUnitType 8, 'Mk', 'MaazKhan'
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateRegisterStatus' 
)
   DROP PROCEDURE dbo.spUpdateRegisterStatus
GO

CREATE PROCEDURE dbo.spUpdateRegisterStatus
	@RegisterStatusID bigint,
	@ShortName nvarchar(50)
AS
	Update	RegisterStatus
	SET		ShortName = @ShortName
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateRegistration' 
)
   DROP PROCEDURE dbo.spUpdateRegistration
GO

CREATE PROCEDURE dbo.spUpdateRegistration
	@RegistrationID bigint,
	@RegisterDate datetime,
	@StudentProgramID bigint,
	@ClassID bigint,
	@RegisterStatusID bigint
AS
	Update Registration Set RegisterDate = @RegisterDate, StudentProgramID = @StudentProgramID, 
	ClassID = @ClassID, RegisterStatusID = @RegisterStatusID
	Where RegistrationID = @RegistrationID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateRegistration
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateSemester' 
)
   DROP PROCEDURE dbo.spUpdateSemester
GO

CREATE PROCEDURE dbo.spUpdateSemester
	@SemesterID bigint,
	@ShortName nvarchar(50),
	@Name nvarchar(250),
	@StudentGroupID bigint,
	@TermID bigint
AS
	Update Semester Set ShortName = @ShortName, [Name] = @Name, StudentGroupID = @StudentGroupID, TermID = @TermID
	Where SemesterID = @SemesterID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudent' 
)
   DROP PROCEDURE dbo.spUpdateStudent
GO

CREATE PROCEDURE dbo.spUpdateStudent
	@StudentID bigint, 
	@Identifier nvarchar(50),
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	UPDATE Student SET Identifier = @Identifier, FirstName = @FirstName, LastName = @LastName
	where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudent 3,'17b-50-cs','Ahsan','Khan' 
--GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentGroup' 
)
   DROP PROCEDURE dbo.spUpdateStudentGroup
GO

CREATE PROCEDURE dbo.spUpdateStudentGroup
	@StudentGroupID bigint,
	@ShortName		nvarchar(50),
	@Name			nvarchar(250),
	@IsActive		bit = 0

AS
	Update StudentGroup
	set ShortName=@ShortName,[Name]=@Name,IsActive=@IsActive
	where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentProgram' 
)
   DROP PROCEDURE dbo.spUpdateStudentProgram
GO

CREATE PROCEDURE dbo.spUpdateStudentProgram
	@StudentProgramID bigint,
	@StudentID bigint,
	@BatchID bigint,
	@StartDate date,
	@EndDate date,
	@StudentStatusID bigint,
	@OverrideCurriculumID bigint,
	@MinorCurriculumID	bigint,
	@StudentGroupID bigint
AS
	UPDATE StudentProgram SET StudentID = @StudentID, BatchID = @BatchID, StartDate = @StartDate, EndDate = @EndDate, 
	StudentStatusID = @StudentStatusID, OverrideCurriculumID = @OverrideCurriculumID, MinorCurriculumID = @MinorCurriculumID,
	StudentGroupID = @StudentGroupID 
	where StudentProgramID = @StudentProgramID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentStatus' 
)
   DROP PROCEDURE dbo.spUpdateStudentStatus
GO

CREATE PROCEDURE dbo.spUpdateStudentStatus
	@StudentStatusID bigint,
	@Name nvarchar(50)
AS
	UPDATE StudentStatus SET [Name] = @Name where StudentStatusID = @StudentStatusID; 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateStudentStatus 6, 'Inprogress'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateTerm' 
)
   DROP PROCEDURE dbo.spUpdateTerm
GO

CREATE PROCEDURE dbo.spUpdateTerm
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spComponentTotalCourseCreditHrs' 
)
   DROP PROCEDURE dbo.spComponentTotalCourseCreditHrs
GO

CREATE PROCEDURE dbo.spComponentTotalCourseCreditHrs
	@CurriculumID bigint
AS
	SELECT count(ComponentID) as NumberofComponent, sum(TotalCourses) as TotalCourses,sum(TotalCredit) as TotalCredit
	from Component where CurriculumID=@CurriculumID   
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spTotalCreditCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteAssessmentCategory' 
)
   DROP PROCEDURE dbo.spDeleteAssessmentCategory
GO

CREATE PROCEDURE dbo.spDeleteAssessmentCategory
	@AssessmentCategoryID bigint 
AS
	DELETE FROM AssessmentCategory  
	WHERE AssessmentCategoryID = @AssessmentCategoryID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteAssessmentCategory 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteBatch' 
)
   DROP PROCEDURE dbo.spDeleteBatch
GO

CREATE PROCEDURE dbo.spDeleteBatch
	@BatchID bigint
AS
	Delete from Batch
	where BatchID = @BatchID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteBatch 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClass' 
)
   DROP PROCEDURE dbo.spDeleteClass
GO

CREATE PROCEDURE dbo.spDeleteClass
	@ClassID bigint
AS
	Delete Class where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClassModule' 
)
   DROP PROCEDURE dbo.spDeleteClassModule
GO

CREATE PROCEDURE dbo.spDeleteClassModule
	@ClassModuleID bigint
AS
	DELETE	ClassModule 
	WHERE	ClassModuleID = @ClassModuleID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponent' 
)
   DROP PROCEDURE dbo.spDeleteComponent
GO

CREATE PROCEDURE dbo.spDeleteComponent
	@ComponentID bigint
AS
	Delete from Component
	where ComponentID = @ComponentID
GO
-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentCourse' 
)
   DROP PROCEDURE dbo.spDeleteComponentCourse
GO

CREATE PROCEDURE dbo.spDeleteComponentCourse
	@ComponentCourseID bigint
AS
	Delete from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentType' 
)
   DROP PROCEDURE dbo.spDeleteComponentType
GO

CREATE PROCEDURE dbo.spDeleteComponentType
	@ComponentTypeID bigint
AS
	Delete From ComponentType where ComponentTypeID=@ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourse' 
)
   DROP PROCEDURE dbo.spDeleteCourse
GO

CREATE PROCEDURE dbo.spDeleteCourse
	@CourseID bigint
AS
	Delete from Course
	where CourseID=@CourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourseType' 
)
   DROP PROCEDURE dbo.spDeleteCourseType
GO

CREATE PROCEDURE dbo.spDeleteCourseType
	@CourseTypeID bigint
AS
	DELETE from CourseType where CourseTypeID=@CourseTypeID
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculum' 
)
   DROP PROCEDURE dbo.spDeleteCurriculum
GO

CREATE PROCEDURE dbo.spDeleteCurriculum
	@CurriculumID bigint
AS
	Delete from Curriculum where CurriculumID=@CurriculumID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculumType' 
)
   DROP PROCEDURE dbo.spDeleteCurriculumType
GO

CREATE PROCEDURE dbo.spDeleteCurriculumType
	@CurriculumTypeID bigint = 0
AS
	DELETE FROM CurriculumType WHERE CurriculumTypeID = @CurriculumTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteFaculty' 
)
   DROP PROCEDURE dbo.spDeleteFaculty
GO

CREATE PROCEDURE dbo.spDeleteFaculty
	@FacultyID bigint
AS
	DELETE Faculty WHERE FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteModuleAssessment' 
)
   DROP PROCEDURE dbo.spDeleteModuleAssessment
GO

CREATE PROCEDURE dbo.spDeleteModuleAssessment
	@ModuleAssessmentID bigint
AS
	DELETE FROM ModuleAssessment 
	WHERE ModuleAssessmentID = @ModuleAssessmentID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteModuleAssessment 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spDeleteModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spDeleteModuleAssessmentMark
	@ModuleAssessmentMarkID bigint
AS
	DELETE FROM ModuleAssessmentMark
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteModuleAssessmentMark 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOffering' 
)
   DROP PROCEDURE dbo.spDeleteOffering
GO

CREATE PROCEDURE dbo.spDeleteOffering
	@OfferingID bigint
AS
	Delete from Offering Where OfferingID = @OfferingID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteOffering
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnit' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnit
GO

CREATE PROCEDURE dbo.spDeleteOrgUnit
	@OrgUnitID bigint
AS
	Delete from 
	OrgUnit
	where OrgUnitID=@OrgUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnitType' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnitType
GO

CREATE PROCEDURE dbo.spDeleteOrgUnitType
	@OrgUnitTypeID bigint
AS
	DELETE FROM OrgUnitType where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteOrgUnitType 8
GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteRegisterStatus' 
)
   DROP PROCEDURE dbo.spDeleteRegisterStatus
GO

CREATE PROCEDURE dbo.spDeleteRegisterStatus
	@RegisterStatusID bigint
AS
	DELETE RegisterStatus
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteRegistration' 
)
   DROP PROCEDURE dbo.spDeleteRegistration
GO

CREATE PROCEDURE dbo.spDeleteRegistration
	@RegistrationID bigint
AS
	Delete from Registration 
	Where RegistrationID = @RegistrationID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteRegistration
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteSemester' 
)
   DROP PROCEDURE dbo.spDeleteSemester
GO

CREATE PROCEDURE dbo.spDeleteSemester
	@SemesterID bigint
AS
	Delete from Semester 
	where SemesterID = @SemesterID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudent' 
)
   DROP PROCEDURE dbo.spDeleteStudent
GO

CREATE PROCEDURE dbo.spDeleteStudent
	@StudentID bigint
AS
	DELETE from Student where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudent 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentGroup' 
)
   DROP PROCEDURE dbo.spDeleteStudentGroup
GO

CREATE PROCEDURE dbo.spDeleteStudentGroup
	@StudentGroupID bigint
AS
	Delete from StudentGroup where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentProgram' 
)
   DROP PROCEDURE dbo.spDeleteStudentProgram
GO

CREATE PROCEDURE dbo.spDeleteStudentProgram
	@StudentProgramID bigint
AS
	Delete from StudentProgram
	where StudentProgramID = @StudentProgramID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentStatus' 
)
   DROP PROCEDURE dbo.spDeleteStudentStatus
GO

CREATE PROCEDURE dbo.spDeleteStudentStatus
	@StudentStatusID bigint 
AS
	DELETE from StudentStatus where StudentStatusID = @StudentStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudent 6
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteTerm' 
)
   DROP PROCEDURE dbo.spDeleteTerm
GO

CREATE PROCEDURE dbo.spDeleteTerm
	@TermID bigint
AS
	Delete from Term where TermID=@TermID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindAssessmentCategory' 
)
   DROP PROCEDURE dbo.spFindAssessmentCategory
GO

CREATE PROCEDURE dbo.spFindAssessmentCategory
	@AssessmentCategoryID bigint
AS
	SELECT * FROM AssessmentCategory
	WHERE AssessmentCategoryID = @AssessmentCategoryID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindAssessmentCategory 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindBatch' 
)
   DROP PROCEDURE dbo.spFindBatch
GO

CREATE PROCEDURE dbo.spFindBatch
	@BatchID bigint
AS
	SELECT Top 1 * 
	from Batch
	where BatchID = @BatchID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindBatch 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClass' 
)
   DROP PROCEDURE dbo.spFindClass
GO

CREATE PROCEDURE dbo.spFindClass
	@ClassID bigint
AS
	SELECT Top 1 *
	from Class
	where ClassID = @ClassID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClassModule' 
)
   DROP PROCEDURE dbo.spFindClassModule
GO

CREATE PROCEDURE dbo.spFindClassModule
	@ClassModuleID bigint
AS
	SELECT Top 1 *
	from ClassModule
	where ClassModuleID = @ClassModuleID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponent' 
)
   DROP PROCEDURE dbo.spFindComponent
GO

CREATE PROCEDURE dbo.spFindComponent
	@ComponentID bigint
AS
	SELECT Top 1 * 
	from Component
	where ComponentID = @ComponentID
	For json Auto, Without_Array_Wrapper;
GO
-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentCourse' 
)
   DROP PROCEDURE dbo.spFindComponentCourse
GO

CREATE PROCEDURE dbo.spFindComponentCourse
	@ComponentCourseID bigint
AS
	SELECT top 1*
	from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentType' 
)
   DROP PROCEDURE dbo.spFindComponentType
GO

CREATE PROCEDURE dbo.spFindComponentType
	@ComponentTypeID bigint
AS
	SELECT Top 1 * 
	from ComponentType
	Where ComponentTypeID=@ComponentTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourse' 
)
   DROP PROCEDURE dbo.spFindCourse
GO

CREATE PROCEDURE dbo.spFindCourse
	@CourseID bigint
AS
	SELECT Top 1 *
	from Course
	where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseIDComponentCourse' 
)
   DROP PROCEDURE dbo.spFindCourseIDComponentCourse
GO

CREATE PROCEDURE dbo.spFindCourseIDComponentCourse
	@CourseID bigint
AS
	SELECT Top 1 * 
	from ComponentCourse where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourseIDComponentCourse 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseType' 
)
   DROP PROCEDURE dbo.spFindCourseType
GO

CREATE PROCEDURE dbo.spFindCourseType	
	@CourseTypeID bigint
AS
	SELECT TOP 1 *
	FROM CourseType
	WHERE CourseTypeID = @CourseTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculum' 
)
   DROP PROCEDURE dbo.spFindCurriculum
GO

CREATE PROCEDURE dbo.spFindCurriculum
	@CurriculumID bigint
AS
	SELECT Top 1 *
	from Curriculum
	where CurriculumID=@CurriculumID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apFindCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculumType' 
)
   DROP PROCEDURE dbo.spFindCurriculumType
GO

CREATE PROCEDURE dbo.spFindCurriculumType
	@CurriculumTypeID bigint = 0
AS
	SELECT	TOP 1 * 
	FROM	CurriculumType 
	WHERE	CurriculumTypeID = @CurriculumTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCurriculumType 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindFaculty' 
)
   DROP PROCEDURE dbo.spFindFaculty
GO

CREATE PROCEDURE dbo.spFindFaculty
	@FacultyID bigint
AS
	SELECT Top 1 *
	from Faculty
	where FacultyID = @FacultyID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClasModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindModuleAssessment' 
)
   DROP PROCEDURE dbo.spFindModuleAssessment
GO

CREATE PROCEDURE dbo.spFindModuleAssessment
	@ModuleAssessmentID bigint

AS
	SELECT Top 1 * 
	FROM ModuleAssessment
	WHERE ModuleAssessmentID = @ModuleAssessmentID
	For json Auto, without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindModuleAssessment 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spFindModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spFindModuleAssessmentMark
	@ModuleAssessmentMarkID bigint
AS
	SELECT Top 1 *
	FROM ModuleAssessmentMark
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindModuleAssessmentMark 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOffering' 
)
   DROP PROCEDURE dbo.spFindOffering
GO

CREATE PROCEDURE dbo.spFindOffering
	@OfferingID bigint
AS
	Select Top 1* from Offering 
	Where OfferingID = @OfferingID For Json Auto, Without_Array_Wrapper
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindOffering
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnit' 
)
   DROP PROCEDURE dbo.spFindOrgUnit
GO

CREATE PROCEDURE dbo.spFindOrgUnit
	@OrgUnitID bigint 
AS
	Select top 1* 
	From OrgUnit
	where OrgUnitID=@OrgUnitID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnitType' 
)
   DROP PROCEDURE dbo.spFindOrgUnitType
GO

CREATE PROCEDURE dbo.spFindOrgUnitType
	@OrgUnitTypeID bigint
AS
	SELECT top 1*
	from OrgUnitType 
	where OrgUnitTypeID = @OrgUnitTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================

-- EXECUTE dbo.spFindOrgUnitType 1
-- GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindParentOrgUnit' 
)
   DROP PROCEDURE dbo.spFindParentOrgUnit
GO

CREATE PROCEDURE dbo.spFindParentOrgUnit
	@ParentUnitID bigint
AS
	SELECT * from OrgUnit 
	where ParentUnitID=@ParentUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindParentOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindRegisterStatus' 
)
   DROP PROCEDURE dbo.spFindRegisterStatus
GO

CREATE PROCEDURE dbo.spFindRegisterStatus
	@RegisterStatusID bigint
AS
	SELECT top 1 *
	from RegisterStatus
	where RegisterStatusID = @RegisterStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindRegistration' 
)
   DROP PROCEDURE dbo.spFindRegistration
GO

CREATE PROCEDURE dbo.spFindRegistration
	@RegistrationID bigint
AS
	Select top 1* from Registration
	Where RegistrationID = @RegistrationID for json auto, without_Array_Wrapper
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindRegistration
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindSemester' 
)
   DROP PROCEDURE dbo.spFindSemester
GO

CREATE PROCEDURE dbo.spFindSemester
	@SemesterID bigint
AS
	SELECT top 1* from Semester
	Where SemesterID = @SemesterID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudent' 
)
   DROP PROCEDURE dbo.spFindStudent
GO

CREATE PROCEDURE dbo.spFindStudent
	@StudentID bigint 
AS
	Select top 1*
	from Student 
	where StudentID = @StudentID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudent 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentGroup' 
)
   DROP PROCEDURE dbo.spFindStudentGroup
GO

CREATE PROCEDURE dbo.spFindStudentGroup
	@StudentGroupID bigint
AS
	SELECT TOP 1 *
	FROM StudentGroup
	WHERE StudentGroupID = @StudentGroupID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentProgram' 
)
   DROP PROCEDURE dbo.spFindStudentProgram
GO

CREATE PROCEDURE dbo.spFindStudentProgram
	@StudentProgramID bigint
AS
	SELECT Top 1 * from StudentProgram
	where StudentProgramID = @StudentProgramID
	For json Auto, Without_Array_Wrapper;
GO	


-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentStatus' 
)
   DROP PROCEDURE dbo.spFindStudentStatus
GO

CREATE PROCEDURE dbo.spFindStudentStatus
	@StudentStatusID bigint
AS
	Select top 1*from StudentStatus where StudentStatusID = @StudentStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentStatus 5
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindTerm' 
)
   DROP PROCEDURE dbo.spFindTerm
GO

CREATE PROCEDURE dbo.spFindTerm
	@TermID bigint
AS
	SELECT top 1 *
	from Term
	where TermID=@TermID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllAssessmentCategory' 
)
   DROP PROCEDURE dbo.spGetAllAssessmentCategory
GO

CREATE PROCEDURE dbo.spGetAllAssessmentCategory
AS
	SELECT * FROM AssessmentCategory FOR JSON AUTO;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllAssessmentCategory 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllBatch' 
)
   DROP PROCEDURE dbo.spGetAllBatch
GO

CREATE PROCEDURE dbo.spGetAllBatch
AS
	SELECT * from Batch FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllBatch 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClass' 
)
   DROP PROCEDURE dbo.spGetAllClass
GO

CREATE PROCEDURE dbo.spGetAllClass

AS
	SELECT * from Class FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClassModule' 
)
   DROP PROCEDURE dbo.spGetAllClassModule
GO

CREATE PROCEDURE dbo.spGetAllClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponent' 
)
   DROP PROCEDURE dbo.spGetAllComponent
GO

CREATE PROCEDURE dbo.spGetAllComponent
AS
	SELECT * from Component FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponentCourse' 
)
   DROP PROCEDURE dbo.spGetAllComponentCourse
GO

CREATE PROCEDURE dbo.spGetAllComponentCourse

AS
	SELECT * from ComponentCourse FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGETAllComponentType' 
)
   DROP PROCEDURE dbo.spGETAllComponentType
GO

CREATE PROCEDURE dbo.spGETAllComponentType
AS
	SELECT * from ComponentType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGETALLComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourse' 
)
   DROP PROCEDURE dbo.spGetAllCourse
GO

CREATE PROCEDURE dbo.spGetAllCourse
AS
	SELECT *
	From Course
	For json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourseType' 
)
   DROP PROCEDURE dbo.spGetAllCourseType
GO

CREATE PROCEDURE dbo.spGetAllCourseType
AS
	SELECT * from  dbo.CourseType FOR JSON Auto;
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculum' 
)
   DROP PROCEDURE dbo.spGetAllCurriculum
GO

CREATE PROCEDURE dbo.spGetAllCurriculum

AS
	SELECT * from Curriculum FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculumType' 
)
   DROP PROCEDURE dbo.spGetAllCurriculumType
GO

CREATE PROCEDURE dbo.spGetAllCurriculumType
AS
	SELECT	*
	FROM	CurriculumType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllFaculty' 
)
   DROP PROCEDURE dbo.spGetAllFaculty
GO

CREATE PROCEDURE dbo.spGetAllFaculty
AS
	SELECT	* FROM Faculty FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllModuleAssessment' 
)
   DROP PROCEDURE dbo.spGetAllModuleAssessment
GO

CREATE PROCEDURE dbo.spGetAllModuleAssessment
AS
	SELECT *
	From ModuleAssessment
	For json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllModuleAssessment
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spGetAllModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spGetAllModuleAssessmentMark
AS
	SELECT * FROM ModuleAssessmentMark FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllModuleAssessmentMark 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOffering' 
)
   DROP PROCEDURE dbo.spGetAllOffering
GO

CREATE PROCEDURE dbo.spGetAllOffering
AS
	Select * from Offering For Json Auto
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOffering
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnit' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnit
GO

CREATE PROCEDURE dbo.spGetAllOrgUnit

AS
	SELECT * 
	from OrgUnit FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnitType' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnitType
GO

CREATE PROCEDURE dbo.spGetAllOrgUnitType	
AS
	SELECT *From OrgUnitType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnitType 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllRegisterStatus' 
)
   DROP PROCEDURE dbo.spGetAllRegisterStatus
GO

CREATE PROCEDURE dbo.spGetAllRegisterStatus
AS
	SELECT * FROM RegisterStatus FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllRegistration' 
)
   DROP PROCEDURE dbo.spGetAllRegistration
GO

CREATE PROCEDURE dbo.spGetAllRegistration
AS
	Select * from Registration for Json Auto 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllRegistration
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllSemester' 
)
   DROP PROCEDURE dbo.spGetAllSemester
GO

CREATE PROCEDURE dbo.spGetAllSemester
	
AS
	SELECT * from Semester For Json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudent' 
)
   DROP PROCEDURE dbo.spGetAllStudent
GO

CREATE PROCEDURE dbo.spGetAllStudent
AS
	Select * from Student for json auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudent 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentGroup' 
)
   DROP PROCEDURE dbo.spGetAllStudentGroup
GO

CREATE PROCEDURE dbo.spGetAllStudentGroup

AS
	SELECT * from StudentGroup FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentProgram' 
)
   DROP PROCEDURE dbo.spGetAllStudentProgram
GO

CREATE PROCEDURE dbo.spGetAllStudentProgram
	
AS
	SELECT * from StudentProgram FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentStatus' 
)
   DROP PROCEDURE dbo.spGetAllStudentStatus
GO

CREATE PROCEDURE dbo.spGetAllStudentStatus

AS
	SELECT *from StudentStatus FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudentStatus
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllTerm' 
)
   DROP PROCEDURE dbo.spGetAllTerm
GO

CREATE PROCEDURE dbo.spGetAllTerm
AS
	SELECT * from Term FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetComponentSummary' 
)
   DROP PROCEDURE dbo.spGetComponentSummary
GO

CREATE PROCEDURE dbo.spGetComponentSummary
	@ComponentID bigint
AS
		select CC.ComponentID,  COUNT(c.CourseID) as 'TotalCourses', 
		Sum(c.TheoryCredit+c.LabCredit) as 'TotalCreditHrs' 
from	Course as c Inner join ComponentCourse CC on CC.CourseID = C.CourseID
where	CC.ComponentID = @ComponentID
group by CC.ComponentID
		
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetComponentSummary 1
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCourseName' 
)
   DROP PROCEDURE dbo.spGetCourseName
GO

CREATE PROCEDURE dbo.spGetCourseName
	@Name nvarchar(50)
AS
	SELECT * from Course where [Name] =@Name
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCourseName 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCurriculumType' 
)
   DROP PROCEDURE dbo.spGetCurriculumType
GO

CREATE PROCEDURE dbo.spGetCurriculumType
	@CurriculumTypeID bigint
AS
	SELECT * from Curriculum where CurriculumTypeID=@CurriculumTypeID
	FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetOwnerUnit' 
)
   DROP PROCEDURE dbo.spGetOwnerUnit
GO

CREATE PROCEDURE dbo.spGetOwnerUnit
	@OwnerUnitID bigint
AS
	SELECT * from Curriculum where OwnerUnitID =@OwnerUnitID
	FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetOwnerUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertAssessmentCategory' 
)
   DROP PROCEDURE dbo.spInsertAssessmentCategory
GO

CREATE PROCEDURE dbo.spInsertAssessmentCategory
	@Name nvarchar(50), 
	@Weight dec(18, 0),
	@ClassModuleID bigint
AS
	INSERT INTO AssessmentCategory ([Name], [Weight], ClassModuleID) values(@Name, @Weight, @ClassModuleID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertAssessmentCategory 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertBatch' 
)
   DROP PROCEDURE dbo.spInsertBatch
GO

CREATE PROCEDURE dbo.spInsertBatch
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertBatch "BS-2022", "BS(CS)2022", 2022, 2026, 4, 2  
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClass' 
)
   DROP PROCEDURE dbo.spInsertClass
GO

CREATE PROCEDURE dbo.spInsertClass
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Insert into Class (ShortName,[Name],Capacity) values (@ShortName,@Name,@Capacity)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClassModule' 
)
   DROP PROCEDURE dbo.spInsertClassModule
GO

CREATE PROCEDURE dbo.spInsertClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponent' 
)
   DROP PROCEDURE dbo.spInsertComponent
GO

CREATE PROCEDURE dbo.spInsertComponent
	@ShortName nvarchar(10),
	@Name nvarchar(50),
	@ComponentTypeID bigint,
	@CurriculumID bigint,
	@TotalCredit int,
	@TotalCourses int,
	@IsLimitCourses bit,
	@IsLimitCreditHrs bit

AS
	INSERT INTO Component (ShortName,[Name],ComponentTypeID,CurriculumID,TotalCredit,TotalCourses,IsLimitCourses,IsLimitCreditHrs) 
	values(@ShortName,@Name,@ComponentTypeID,@CurriculumID,@TotalCredit,@TotalCourses,@IsLimitCourses,@IsLimitCreditHrs)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentCourse' 
)
   DROP PROCEDURE dbo.spInsertComponentCourse
GO

CREATE PROCEDURE dbo.spInsertComponentCourse
	@ComponentID bigint,
	@CourseID bigint
AS
	Insert into ComponentCourse (ComponentID,CourseID) values (@ComponentID,@CourseID)
	select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentType' 
)
   DROP PROCEDURE dbo.spInsertComponentType
GO

CREATE PROCEDURE dbo.spInsertComponentType
	@Name nvarchar(50), 
	@IsRequired bit
AS
	INSERT INTO ComponentType ([Name],IsRequired) values(@Name,@IsRequired)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spCreateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourse' 
)
   DROP PROCEDURE dbo.spInsertCourse
GO

CREATE PROCEDURE dbo.spInsertCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourseType' 
)
   DROP PROCEDURE dbo.spInsertCourseType
GO

CREATE PROCEDURE dbo.spInsertCourseType
	@Name nvarchar(50)
AS
	INSERT into dbo.CourseType([Name]) values(@Name);
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculum' 
)
   DROP PROCEDURE dbo.spInsertCurriculum
GO

CREATE PROCEDURE dbo.spInsertCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculumType' 
)
   DROP PROCEDURE dbo.spInsertCurriculumType
GO

CREATE PROCEDURE dbo.spInsertCurriculumType
	@Name nvarchar(50) = 0
AS
	Insert Into CurriculumType values(@Name)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCurriculumType 'NewType'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertFaculty' 
)
   DROP PROCEDURE dbo.spInsertFaculty
GO

CREATE PROCEDURE dbo.spInsertFaculty
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Insert Into Faculty Values(@FirstName, @LastName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertModuleAssessment' 
)
   DROP PROCEDURE dbo.spInsertModuleAssessment
GO

CREATE PROCEDURE dbo.spInsertModuleAssessment
	@Name nvarchar(50),
	@Weight dec(18,0),
	@AssessmentCategoryID bigint
AS
	INSERT INTO ModuleAssessment ([Name], [Weight], AssessmentCategoryID) values (@Name, @Weight, @AssessmentCategoryID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertModuleAssessment 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spInsertModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spInsertModuleAssessmentMark
	@ObtainMark dec(18,0), 
	@RegistrationID bigint,
	@ModuleAssessmentID bigint
AS
	INSERT INTO ModuleAssessmentMark (ObtainMark, RegistrationID, ModuleAssessmentID) values (@ObtainMark, @RegistrationID, @ModuleAssessmentID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertModuleAssessmentMark 1, 2, 3
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOffering' 
)
   DROP PROCEDURE dbo.spInsertOffering
GO

CREATE PROCEDURE dbo.spInsertOffering
	@CousreID bigint,
	@TermID bigint,
	@OrgUnitID bigint,
	@SemesterID bigint
AS
	Insert into Offering (CousreID, TermID, OrgUnitID, SemesterID)
	Values(@CousreID,@TermID,@OrgUnitID,@SemesterID) Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOffering
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnit' 
)
   DROP PROCEDURE dbo.spInsertOrgUnit
GO

CREATE PROCEDURE dbo.spInsertOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnitType' 
)
   DROP PROCEDURE dbo.spInsertOrgUnitType
GO

CREATE PROCEDURE dbo.spInsertOrgUnitType
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	Insert Into OrgUnitType ([Name],ShortName) 
	values(@Name,@ShortName)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOrgUnitType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertRegisterStatus' 
)
   DROP PROCEDURE dbo.spInsertRegisterStatus
GO

CREATE PROCEDURE dbo.spInsertRegisterStatus
	@ShortName nvarchar(50)
AS
	INSERT INTO RegisterStatus VALUES(@ShortName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertRegistration' 
)
   DROP PROCEDURE dbo.spInsertRegistration
GO

CREATE PROCEDURE dbo.spInsertRegistration
	@RegisterDate datetime,
	@StudentProgramID bigint,
	@ClassID bigint,
	@RegisterStatusID bigint
AS
	Insert into Registration (RegisterDate, StudentProgramID, ClassID, RegisterStatusID) 
	Values (@RegisterDate,@StudentProgramID,@ClassID,@RegisterStatusID) Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertRegistration
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertSemester' 
)
   DROP PROCEDURE dbo.spInsertSemester
GO

CREATE PROCEDURE dbo.spInsertSemester
	@ShortName nvarchar(50),
	@Name nvarchar(250),
	@StudentGroupID bigint,
	@TermID bigint
AS
	Insert into Semester (ShortName, [Name], StudentGroupID, TermID)
	Values (@ShortName, @Name, @StudentGroupID, @TermID) Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbi.spInsertSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudent' 
)
   DROP PROCEDURE dbo.spInsertStudent
GO

CREATE PROCEDURE dbo.spInsertStudent
	@Identifier nvarchar(50), 
	@Name nvarchar(50),
	@LastName nvarchar(50),
	@StudentGroupID bigint
AS
	Insert into Student (Identifier, [Name], LastName, StudetGroupID) values(@Identifier, @Name, @LastName, @StudentGroupID)
	Select SCOPE_IDENTITY()ss
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudent '17b-012-cs','Maaz','Khan'
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentGroup' 
)
   DROP PROCEDURE dbo.spInsertStudentGroup
GO

CREATE PROCEDURE dbo.spInsertStudentGroup
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@IsActive	bit = 0

AS
	Insert into StudentGroup
	(ShortName,[Name],IsActive) 
	values (@ShortName,@Name,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentProgram' 
)
   DROP PROCEDURE dbo.spInsertStudentProgram
GO

CREATE PROCEDURE dbo.spInsertStudentProgram
	@StudentID bigint,
	@BatchID bigint,
	@StartDate date,
	@EndDate date,
	@StudentStatusID bigint,
	@OverrideCurriculumID bigint,
	@MinorCurriculumID	bigint,
	@StudentGroupID bigint
AS
	Insert into StudentProgram (StudentID, BatchID, StartDate, EndDate, StudentStatusID, OverrideCurriculumID,
	MinorCurriculumID, StudentGroupID) 
	Values (@StudentID,@BatchID,@StartDate,@EndDate,@StudentStatusID,@OverrideCurriculumID,@MinorCurriculumID,@StudentGroupID)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudentProgram 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentStatus' 
)
   DROP PROCEDURE dbo.spInsertStudentStatus
GO

CREATE PROCEDURE dbo.spInsertStudentStatus
	@Name nvarchar(50)
AS
	INSERT into StudentStatus([Name]) values(@Name)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertStudentStatus 'Pending'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertTerm' 
)
   DROP PROCEDURE dbo.spInsertTerm
GO

CREATE PROCEDURE dbo.spInsertTerm
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@StartDate	date = '0',
	@EndDate	date = '0',
	@IsActive	bit

AS
	Insert into Term 
	(ShortName,[Name],StartDate,EndDate,IsActive) 
	values (@ShortName,@Name,@StartDate,@EndDate,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertTerm 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateAssessmentCategory' 
)
   DROP PROCEDURE dbo.spUpdateAssessmentCategory
GO

CREATE PROCEDURE dbo.spUpdateAssessmentCategory
	@AssessmentCategoryID bigint,
	@Name nvarchar(50),
	@Weight dec(18,0),
	@ClassModuleID bigint
AS
	UPDATE AssessmentCategory 
	SET [Name] = @Name, [Weight] = @Weight, ClassModuleID = @ClassModuleID
	WHERE AssessmentCategoryID = @AssessmentCategoryID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateBatch' 
)
   DROP PROCEDURE dbo.spUpdateBatch
GO

CREATE PROCEDURE dbo.spUpdateBatch
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateBatch 
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClass' 
)
   DROP PROCEDURE dbo.spUpdateClass
GO

CREATE PROCEDURE dbo.spUpdateClass
	@ClassID	bigint,
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Update Class 
	set	ShortName=@ShortName,[Name]=@Name,Capacity=@Capacity
	where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClass 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClassModule' 
)
   DROP PROCEDURE dbo.spUpdateClassModule
GO

CREATE PROCEDURE dbo.spUpdateClassModule
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClassModule 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponent' 
)
   DROP PROCEDURE dbo.spUpdateComponent
GO

CREATE PROCEDURE dbo.spUpdateComponent
	@ComponentID bigint,
	@ShortName nvarchar(10),
	@Name nvarchar(50),
	@ComponentTypeID bigint,
	@CurriculumID bigint,
	@TotalCredit int,
	@TotalCourses int,
	@IsLimitCourses bit,
	@IsLimitCreditHrs bit
AS
	UPDATE Component
	SET ShortName=@ShortName, [Name]=@Name, ComponentTypeID=@ComponentTypeID, CurriculumID=@CurriculumID,TotalCredit=@TotalCredit,TotalCourses=@TotalCourses,
	IsLimitCourses=@IsLimitCourses,IsLimitCreditHrs=@IsLimitCreditHrs
	WHERE ComponentID=@ComponentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponent 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentCourse' 
)
   DROP PROCEDURE dbo.spUpdateComponentCourse
GO

CREATE PROCEDURE dbo.spUpdateComponentCourse
	@ComponentCourseID bigint,
	@ComponentID bigint,
	@CourseID bigint
AS
	Update ComponentCourse
	set ComponentID=@ComponentID,CourseID=@CourseID
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentType' 
)
   DROP PROCEDURE dbo.spUpdateComponentType
GO

CREATE PROCEDURE dbo.spUpdateComponentType
	@ComponentTypeID bigint,
	@Name nvarchar(50),
	@IsRequired bit
AS
	Update ComponentType
	set [Name]=@Name,IsRequired=@IsRequired
	where @ComponentTypeID=ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourse' 
)
   DROP PROCEDURE dbo.spUpdateCourse
GO

CREATE PROCEDURE dbo.spUpdateCourse
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCourse 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourseType' 
)
   DROP PROCEDURE dbo.spUpdateCourseType
GO

CREATE PROCEDURE dbo.spUpdateCourseType
	@CourseTypeID bigint,
	@Name nvarchar(50)
AS
	UPDATE CourseType
	set [Name] = @Name
	where [CourseTypeID] = @CourseTypeID
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculum' 
)
   DROP PROCEDURE dbo.spUpdateCurriculum
GO

CREATE PROCEDURE dbo.spUpdateCurriculum
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCurriculum 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculumType' 
)
   DROP PROCEDURE dbo.spUpdateCurriculumType
GO

CREATE PROCEDURE dbo.spUpdateCurriculumType
	@CurriculumTypeID bigint = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE CurriculumType 
		SET [Name] = @Name
		WHERE CurriculumTypeID = @CurriculumTypeID 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateCurriculumType 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateFaculty' 
)
   DROP PROCEDURE dbo.spUpdateFaculty
GO

CREATE PROCEDURE dbo.spUpdateFaculty
	@FacultyID bigint, 
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Update	Faculty 
	SET		FirstName = @FirstName,
			LastName = @LastName
	WHERE	FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateFaculty
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateModuleAssessment' 
)
   DROP PROCEDURE dbo.spUpdateModuleAssessment
GO

CREATE PROCEDURE dbo.spUpdateModuleAssessment
	@ModuleAssessmentID bigint,
	@Name nvarchar(50),
	@Weight dec(18, 0),
	@AssessmentCategoryID bigint
AS
	UPDATE ModuleAssessment
	SET [Name] = @Name, [Weight] = @Weight, AssessmentCategoryID = @AssessmentCategoryID
	WHERE ModuleAssessmentID = @ModuleAssessmentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateModuleAssessment 1, 2, 3, 4
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spUpdateModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spUpdateModuleAssessmentMark
	@ModuleAssessmentMarkID bigint,
	@ObtainMark dec(18, 0),
	@RegistrationID bigint,
	@ModuleAssessmentID bigint
AS
	UPDATE ModuleAssessmentMark
	SET ObtainMark = @ObtainMark, RegistrationID = @RegistrationID, ModuleAssessmentID = @ModuleAssessmentID
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateModuleAssessmentMark 1, 2, 3, 4
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOffering' 
)
   DROP PROCEDURE dbo.spUpdateOffering
GO

CREATE PROCEDURE dbo.spUpdateOffering
	@OfferingID bigint,
	@CousreID bigint,
	@TermID bigint,
	@OrgUnitID bigint,
	@SemesterID bigint
AS
	Update Offering Set CousreID = @CousreID, TermID = @TermID, OrgUnitID = @OrgUnitID, SemesterID = @SemesterID
	Where OfferingID = @OfferingID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateOffering
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnit' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnit
GO

CREATE PROCEDURE dbo.spUpdateOrgUnit
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateOrgUnit 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnitType' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnitType
GO

CREATE PROCEDURE dbo.spUpdateOrgUnitType
	@OrgUnitTypeID bigint,
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE OrgUnitType SET ShortName = @ShortName, [Name] = @Name where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateOrgUnitType 8, 'Mk', 'MaazKhan'
GO

-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateRegisterStatus' 
)
   DROP PROCEDURE dbo.spUpdateRegisterStatus
GO

CREATE PROCEDURE dbo.spUpdateRegisterStatus
	@RegisterStatusID bigint,
	@ShortName nvarchar(50)
AS
	Update	RegisterStatus
	SET		ShortName = @ShortName
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateRegisterStatus 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateRegistration' 
)
   DROP PROCEDURE dbo.spUpdateRegistration
GO

CREATE PROCEDURE dbo.spUpdateRegistration
	@RegistrationID bigint,
	@RegisterDate datetime,
	@StudentProgramID bigint,
	@ClassID bigint,
	@RegisterStatusID bigint
AS
	Update Registration Set RegisterDate = @RegisterDate, StudentProgramID = @StudentProgramID, 
	ClassID = @ClassID, RegisterStatusID = @RegisterStatusID
	Where RegistrationID = @RegistrationID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateRegistration
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateSemester' 
)
   DROP PROCEDURE dbo.spUpdateSemester
GO

CREATE PROCEDURE dbo.spUpdateSemester
	@SemesterID bigint,
	@ShortName nvarchar(50),
	@Name nvarchar(250),
	@StudentGroupID bigint,
	@TermID bigint
AS
	Update Semester Set ShortName = @ShortName, [Name] = @Name, StudentGroupID = @StudentGroupID, TermID = @TermID
	Where SemesterID = @SemesterID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateSemester
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudent' 
)
   DROP PROCEDURE dbo.spUpdateStudent
GO

CREATE PROCEDURE dbo.spUpdateStudent
	@StudentID bigint, 
	@Identifier nvarchar(50),
	@Name nvarchar(50),
	@LastName nvarchar(50),
	@StudentGroupID bigint
AS
	UPDATE Student SET Identifier = @Identifier, [Name] = @Name, LastName = @LastName, StudetGroupID = @StudentGroupID
	where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudent 3,'17b-50-cs','Ahsan','Khan' 
--GO


-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentGroup' 
)
   DROP PROCEDURE dbo.spUpdateStudentGroup
GO

CREATE PROCEDURE dbo.spUpdateStudentGroup
	@StudentGroupID bigint,
	@ShortName		nvarchar(50),
	@Name			nvarchar(250),
	@IsActive		bit = 0

AS
	Update StudentGroup
	set ShortName=@ShortName,[Name]=@Name,IsActive=@IsActive
	where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudentGroup 1, 2
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentProgram' 
)
   DROP PROCEDURE dbo.spUpdateStudentProgram
GO

CREATE PROCEDURE dbo.spUpdateStudentProgram
	@StudentProgramID bigint,
	@StudentID bigint,
	@BatchID bigint,
	@StartDate date,
	@EndDate date,
	@StudentStatusID bigint,
	@OverrideCurriculumID bigint,
	@MinorCurriculumID	bigint,
	@StudentGroupID bigint
AS
	UPDATE StudentProgram SET StudentID = @StudentID, BatchID = @BatchID, StartDate = @StartDate, EndDate = @EndDate, 
	StudentStatusID = @StudentStatusID, OverrideCurriculumID = @OverrideCurriculumID, MinorCurriculumID = @MinorCurriculumID,
	StudentGroupID = @StudentGroupID 
	where StudentProgramID = @StudentProgramID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudentProgram
--GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentStatus' 
)
   DROP PROCEDURE dbo.spUpdateStudentStatus
GO

CREATE PROCEDURE dbo.spUpdateStudentStatus
	@StudentStatusID bigint,
	@Name nvarchar(50)
AS
	UPDATE StudentStatus SET [Name] = @Name where StudentStatusID = @StudentStatusID; 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateStudentStatus 6, 'Inprogress'
GO
-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateTerm' 
)
   DROP PROCEDURE dbo.spUpdateTerm
GO

CREATE PROCEDURE dbo.spUpdateTerm
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

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateTerm 1, 2
--GO
