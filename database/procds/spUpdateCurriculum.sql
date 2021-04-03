-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'apUpdateCurriculum' 
)
   DROP PROCEDURE dbo.apUpdateCurriculum
GO

CREATE PROCEDURE dbo.apUpdateCurriculum
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
