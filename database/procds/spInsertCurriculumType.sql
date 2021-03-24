-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCurriculumType' 
)
   DROP PROCEDURE dbo.spInsertCurriculumType
GO

CREATE PROCEDURE dbo.spInsertCurriculumType
	@Name nvarchar(50) = 0
AS
	Insert Into CurriculumType values(@Name)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertCurriculumType 'NewType'
--GO
