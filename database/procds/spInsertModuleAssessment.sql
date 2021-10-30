-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertModuleAssessment' 
)
   DROP PROCEDURE dbo.spInsertModuleAssessment
GO

CREATE PROCEDURE dbo.spInsertModuleAssessment
	@Name nvarchar(50),
	@Weight dec(18,0),
	@AssessmentCategoryID bigint
AS
	INSERT INTO ModuleAssessment ([Name], [Weight], AssessmentCategoryID) values (@Name, @Weight, @AssessmentCategoryID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertModuleAssessment 1, 2, 3
--GO
