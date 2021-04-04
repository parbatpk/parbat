-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseIDComponentCourse' 
)
   DROP PROCEDURE dbo.spFindCourseIDComponentCourse
GO

CREATE PROCEDURE dbo.spFindCourseIDComponentCourse
	@CourseID bigint
AS
	SELECT Top 1 * 
	from ComponentCourse where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourseIDComponentCourse 1
--GO
