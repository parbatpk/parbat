-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCurriculum' 
)
   DROP PROCEDURE dbo.spFindCurriculum
GO

CREATE PROCEDURE dbo.spFindCurriculum
	@CurriculumID bigint
AS
	SELECT Top 1 *
	from Curriculum
	where CurriculumID=@CurriculumID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apFindCurriculum 1, 2
--GO
