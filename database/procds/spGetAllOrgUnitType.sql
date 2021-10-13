-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnitType' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnitType
GO

CREATE PROCEDURE dbo.spGetAllOrgUnitType	
AS
	SELECT *From OrgUnitType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnitType 
--GO
