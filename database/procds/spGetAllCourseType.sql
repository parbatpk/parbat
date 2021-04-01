-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourseType' 
)
   DROP PROCEDURE dbo.spGetAllCourseType
GO

CREATE PROCEDURE dbo.spGetAllCourseType
AS
	SELECT * from  dbo.CourseType 
GO

