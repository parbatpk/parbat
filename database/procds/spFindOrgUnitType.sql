-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnitType' 
)
   DROP PROCEDURE dbo.spFindOrgUnitType
GO

CREATE PROCEDURE dbo.spFindOrgUnitType
	@OrgUnitTypeID bigint
AS
	SELECT [Name], ShortName from OrgUnitType where OrgUnitTypeID = @OrgUnitTypeID;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spFindOrgUnitType 1
GO
