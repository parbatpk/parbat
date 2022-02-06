-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllSemester' 
)
   DROP PROCEDURE dbo.spGetAllSemester
GO

CREATE PROCEDURE dbo.spGetAllSemester
	
AS
	SELECT * from Semester For Json Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllSemester
--GO
