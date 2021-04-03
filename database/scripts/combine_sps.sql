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
EXECUTE dbo.spFindCurriculumType 1
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
EXECUTE dbo.spInsertCurriculumType 'NewType'
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
     AND SPECIFIC_NAME = N'apUpdateCourseType' 
)
   DROP PROCEDURE dbo.apUpdateCourseType
GO

CREATE PROCEDURE dbo.apUpdateCourseType
	@CourseTypeID bigint
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
EXECUTE dbo.spFindCurriculumType 1
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
EXECUTE dbo.spInsertCurriculumType 'NewType'
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
     AND SPECIFIC_NAME = N'apUpdateCourseType' 
)
   DROP PROCEDURE dbo.apUpdateCourseType
GO

CREATE PROCEDURE dbo.apUpdateCourseType
	@CourseTypeID bigint
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
EXECUTE dbo.spFindCurriculumType 1
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
EXECUTE dbo.spInsertCurriculumType 'NewType'
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
     AND SPECIFIC_NAME = N'apUpdateCourseType' 
)
   DROP PROCEDURE dbo.apUpdateCourseType
GO

CREATE PROCEDURE dbo.apUpdateCourseType
	@CourseTypeID bigint
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
EXECUTE dbo.spFindCurriculumType 1
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
EXECUTE dbo.spInsertCurriculumType 'NewType'
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
     AND SPECIFIC_NAME = N'apUpdateCourseType' 
)
   DROP PROCEDURE dbo.apUpdateCourseType
GO

CREATE PROCEDURE dbo.apUpdateCourseType
	@CourseTypeID bigint
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
