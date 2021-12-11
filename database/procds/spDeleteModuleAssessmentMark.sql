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
