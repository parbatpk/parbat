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
