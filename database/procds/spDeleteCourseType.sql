-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteCourseType' 
)
   DROP PROCEDURE dbo.spDeleteCourseType
GO

CREATE PROCEDURE dbo.spDeleteCourseType
	@CourseTypeID bigint
AS
	DELETE from CourseType where CourseTypeID=@CourseTypeID
GO
