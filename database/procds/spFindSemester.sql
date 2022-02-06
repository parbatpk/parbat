-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindSemester' 
)
   DROP PROCEDURE dbo.spFindSemester
GO

CREATE PROCEDURE dbo.spFindSemester
	@SemesterID bigint
AS
	SELECT top 1* from Semester
	Where SemesterID = @SemesterID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindSemester
--GO
