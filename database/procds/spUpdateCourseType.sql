-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'apUpdateCourseType' 
)
   DROP PROCEDURE dbo.apUpdateCourseType
GO

CREATE PROCEDURE dbo.apUpdateCourseType
	@CourseTypeID bigint
AS
	UPDATE CourseType
	set [Name] = @Name
	where [CourseTypeID] = @CourseTypeID
GO

