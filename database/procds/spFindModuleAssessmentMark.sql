-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spFindModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spFindModuleAssessmentMark
	@ModuleAssessmentMarkID bigint
AS
	SELECT Top 1 *
	FROM ModuleAssessmentMark
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindModuleAssessmentMark 1
--GO
