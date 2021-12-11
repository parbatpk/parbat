-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spGetAllModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spGetAllModuleAssessmentMark
AS
	SELECT * FROM ModuleAssessmentMark FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllModuleAssessmentMark 
--GO
