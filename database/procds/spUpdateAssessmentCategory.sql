-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateAssessmentCategory' 
)
   DROP PROCEDURE dbo.spUpdateAssessmentCategory
GO

CREATE PROCEDURE dbo.spUpdateAssessmentCategory
	@AssessmentCategoryID bigint,
	@Name nvarchar(50),
	@Weight dec(18,0),
	@ClassModuleID bigint
AS
	UPDATE AssessmentCategory 
	SET [Name] = @Name, [Weight] = @Weight, ClassModuleID = @ClassModuleID
	WHERE AssessmentCategoryID = @AssessmentCategoryID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
