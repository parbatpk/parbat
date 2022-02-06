-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentProgram' 
)
   DROP PROCEDURE dbo.spGetAllStudentProgram
GO

CREATE PROCEDURE dbo.spGetAllStudentProgram
	
AS
	SELECT * from StudentProgram FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudentProgram
--GO
