-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourse' 
)
   DROP PROCEDURE dbo.spDeleteCourse
GO

CREATE PROCEDURE dbo.spDeleteCourse
	@CourseID bigint
AS
	Delete from Course
	where CourseID=@CourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteCourse 1, 2
--GO
