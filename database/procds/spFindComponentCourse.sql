-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentCourse' 
)
   DROP PROCEDURE dbo.spFindComponentCourse
GO

CREATE PROCEDURE dbo.spFindComponentCourse
	@ComponentCourseID bigint
AS
	SELECT top 1*
	from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentCourse 1, 2
--GO
