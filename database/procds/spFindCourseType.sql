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
	@CourseTypeID bigint
AS
	SELECT TOP 1 *
	FROM CourseType
	WHERE CourseTypeID = @CourseTypeID
	FOR JSON AUTO, Without_Array_Wrapper;
GO