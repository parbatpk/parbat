-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCurriculum' 
)
   DROP PROCEDURE dbo.spDeleteCurriculum
GO

CREATE PROCEDURE dbo.spDeleteCurriculum
	@CurriculumID bigint
AS
	Delete from Curriculum where CurriculumID=@CurriculumID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCurriculum 1, 2
--GO
