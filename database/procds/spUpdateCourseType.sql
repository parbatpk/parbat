-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourseType' 
)
   DROP PROCEDURE dbo.spUpdateCourseType
GO

CREATE PROCEDURE dbo.spUpdateCourseType
	@CourseTypeID bigint,
	@Name nvarchar(50)
AS
	UPDATE CourseType
	set [Name] = @Name
	where [CourseTypeID] = @CourseTypeID
GO

