-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentProgram' 
)
   DROP PROCEDURE dbo.spFindStudentProgram
GO

CREATE PROCEDURE dbo.spFindStudentProgram
	@StudentProgramID bigint
AS
	SELECT Top 1 * from StudentProgram
	where StudentProgramID = @StudentProgramID
	For json Auto, Without_Array_Wrapper;
GO	


-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentProgram
--GO
