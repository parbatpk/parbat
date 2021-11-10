-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentStatus' 
)
   DROP PROCEDURE dbo.spFindStudentStatus
GO

CREATE PROCEDURE dbo.spFindStudentStatus
	@StudentStatusID bigint
AS
	Select top 1*from StudentStatus where StudentStatusID = @StudentStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentStatus 5
--GO
