-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOffering' 
)
   DROP PROCEDURE dbo.spGetAllOffering
GO

CREATE PROCEDURE dbo.spGetAllOffering
AS
	Select * from Offering For Json Auto
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOffering
--GO
