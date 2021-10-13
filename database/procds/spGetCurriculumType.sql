-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCurriculumType' 
)
   DROP PROCEDURE dbo.spGetCurriculumType
GO

CREATE PROCEDURE dbo.spGetCurriculumType
	@CurriculumTypeID bigint
AS
	SELECT * from Curriculum where CurriculumTypeID=@CurriculumTypeID
	FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCurriculumType 1, 2
--GO
