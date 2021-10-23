-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentStatus' 
)
   DROP PROCEDURE dbo.spGetAllStudentStatus
GO

CREATE PROCEDURE dbo.spGetAllStudentStatus

AS
	SELECT *from StudentStatus FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudentStatus
GO
