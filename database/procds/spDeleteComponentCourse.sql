-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentCourse' 
)
   DROP PROCEDURE dbo.spDeleteComponentCourse
GO

CREATE PROCEDURE dbo.spDeleteComponentCourse
	@ComponentCourseID bigint
AS
	Delete from ComponentCourse
	where ComponentCourseID=@ComponentCourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentCourse 1, 2
--GO
