-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllAssessmentCategory' 
)
   DROP PROCEDURE dbo.spGetAllAssessmentCategory
GO

CREATE PROCEDURE dbo.spGetAllAssessmentCategory
AS
	SELECT * FROM AssessmentCategory FOR JSON AUTO;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllAssessmentCategory 
--GO
