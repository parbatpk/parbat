-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCurriculumType' 
)
   DROP PROCEDURE dbo.spUpdateCurriculumType
GO

CREATE PROCEDURE dbo.spUpdateCurriculumType
	@CurriculumTypeID bigint = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE CurriculumType 
		SET [Name] = @Name
		WHERE CurriculumTypeID = @CurriculumTypeID 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateCurriculumType 1, 2
--GO
