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
