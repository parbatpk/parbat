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
	@Name nvarchar(50)
AS
	SELECT *from  dbo.CourseType 
GO

