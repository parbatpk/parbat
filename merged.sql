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
