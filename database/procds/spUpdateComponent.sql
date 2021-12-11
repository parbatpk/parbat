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
