-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculumType' 
)
   DROP PROCEDURE dbo.spGetAllCurriculumType
GO

CREATE PROCEDURE dbo.spGetAllCurriculumType
AS
	SELECT	*
	FROM	CurriculumType
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculumType 1, 2
--GO
