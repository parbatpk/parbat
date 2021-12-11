-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteAssessmentCategory' 
)
   DROP PROCEDURE dbo.spDeleteAssessmentCategory
GO

CREATE PROCEDURE dbo.spDeleteAssessmentCategory
	@AssessmentCategoryID bigint 
AS
	DELETE FROM AssessmentCategory  
	WHERE AssessmentCategoryID = @AssessmentCategoryID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteAssessmentCategory 1
--GO
