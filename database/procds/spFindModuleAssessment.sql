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
