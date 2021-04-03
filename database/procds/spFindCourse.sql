-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourse' 
)
   DROP PROCEDURE dbo.spFindCourse
GO

CREATE PROCEDURE dbo.spFindCourse
	@CourseID bigint
AS
	SELECT Top 1 *
	from Course
	where CourseID=@CourseID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindCourse 1, 2
--GO
