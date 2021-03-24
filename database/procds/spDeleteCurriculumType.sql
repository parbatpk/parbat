-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculumType' 
)
   DROP PROCEDURE dbo.spDeleteCurriculumType
GO

CREATE PROCEDURE dbo.spDeleteCurriculumType
	@CurriculumTypeID bigint = 0
AS
	DELETE FROM CurriculumType WHERE CurriculumTypeID = @CurriculumTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculumType 1, 2
--GO
