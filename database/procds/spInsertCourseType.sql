-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourseType' 
)
   DROP PROCEDURE dbo.spInsertCourseType
GO

CREATE PROCEDURE dbo.spInsertCourseType
	@Name nvarchar(50)
AS
	INSERT into dbo.CourseType([Name]) values(@Name);
	Select SCOPE_IDENTITY()
GO

