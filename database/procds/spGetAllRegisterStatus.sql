-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllRegisterStatus' 
)
   DROP PROCEDURE dbo.spGetAllRegisterStatus
GO

CREATE PROCEDURE dbo.spGetAllRegisterStatus
AS
	SELECT * FROM RegisterStatus FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllRegisterStatus 1, 2
--GO
