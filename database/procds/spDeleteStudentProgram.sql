-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentProgram' 
)
   DROP PROCEDURE dbo.spDeleteStudentProgram
GO

CREATE PROCEDURE dbo.spDeleteStudentProgram
	@StudentProgramID bigint
AS
	Delete from StudentProgram
	where StudentProgramID = @StudentProgramID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudentProgram
--GO
