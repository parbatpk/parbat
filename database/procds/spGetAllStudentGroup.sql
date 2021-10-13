-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudentGroup' 
)
   DROP PROCEDURE dbo.spGetAllStudentGroup
GO

CREATE PROCEDURE dbo.spGetAllStudentGroup

AS
	SELECT * from StudentGroup FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllStudentGroup 1, 2
--GO
