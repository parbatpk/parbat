-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllTerm' 
)
   DROP PROCEDURE dbo.spGetAllTerm
GO

CREATE PROCEDURE dbo.spGetAllTerm
AS
	SELECT * from Term FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllTerm 1, 2
--GO
