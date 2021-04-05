-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponentCourse' 
)
   DROP PROCEDURE dbo.spGetAllComponentCourse
GO

CREATE PROCEDURE dbo.spGetAllComponentCourse

AS
	SELECT * from ComponentCourse
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponentCourse 1, 2
--GO
