-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllComponent' 
)
   DROP PROCEDURE dbo.spGetAllComponent
GO

CREATE PROCEDURE dbo.spGetAllComponent
AS
	SELECT * from Component FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllComponent 1, 2
--GO
