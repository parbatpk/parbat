-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllModuleAssessment' 
)
   DROP PROCEDURE dbo.spGetAllModuleAssessment
GO

CREATE PROCEDURE dbo.spGetAllModuleAssessment
AS
	SELECT *
	From ModuleAssessment
	For json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllModuleAssessment
--GO
