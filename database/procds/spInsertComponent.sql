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
