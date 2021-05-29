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
