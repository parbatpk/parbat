-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourse' 
)
   DROP PROCEDURE dbo.spGetAllCourse
GO

CREATE PROCEDURE dbo.spGetAllCourse
AS
	SELECT *
	From Course
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCourse 1, 2
--GO
