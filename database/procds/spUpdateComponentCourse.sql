-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentCourse' 
)
   DROP PROCEDURE dbo.spUpdateComponentCourse
GO

CREATE PROCEDURE dbo.spUpdateComponentCourse
	@ComponentCourseID bigint,
	@ComponentID bigint,
	@CourseID bigint
AS
	Update ComponentCourse
	set ComponentID=@ComponentID,CourseID=@CourseID
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentCourse 1, 2
--GO
