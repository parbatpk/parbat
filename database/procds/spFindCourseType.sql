-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindCourseType' 
)
   DROP PROCEDURE dbo.spFindCourseType
GO

CREATE PROCEDURE dbo.spFindCourseType	
	@CourseTypeID bigint,
	@Name nvarchar(50)
AS
	SELECT [Name] from CourseType where courseTypeID=@CourseTypeID
GO