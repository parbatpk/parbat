-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindAssessmentCategory' 
)
   DROP PROCEDURE dbo.spFindAssessmentCategory
GO

CREATE PROCEDURE dbo.spFindAssessmentCategory
	@AssessmentCategoryID bigint
AS
	SELECT * FROM AssessmentCategory
	WHERE AssessmentCategoryID = @AssessmentCategoryID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindAssessmentCategory 1
--GO
