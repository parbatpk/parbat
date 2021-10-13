-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllStudent' 
)
   DROP PROCEDURE dbo.spGetAllStudent
GO

CREATE PROCEDURE dbo.spGetAllStudent
AS
	SELECT *from Student FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spGetAllStudent 
GO
