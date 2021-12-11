-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertAssessmentCategory' 
)
   DROP PROCEDURE dbo.spInsertAssessmentCategory
GO

CREATE PROCEDURE dbo.spInsertAssessmentCategory
	@Name nvarchar(50), 
	@Weight dec(18, 0),
	@ClassModuleID bigint
AS
	INSERT INTO AssessmentCategory ([Name], [Weight], ClassModuleID) values(@Name, @Weight, @ClassModuleID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertAssessmentCategory 1, 2, 3
--GO
