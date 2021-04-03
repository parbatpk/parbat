-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentCourse' 
)
   DROP PROCEDURE dbo.spInsertComponentCourse
GO

CREATE PROCEDURE dbo.spInsertComponentCourse
	@ComponentID bigint,
	@CourseID bigint
AS
	Insert into ComponentCourse (ComponentID,CourseID) values (@ComponentID,@CourseID)
	select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertComponentCourse 1, 2
--GO
