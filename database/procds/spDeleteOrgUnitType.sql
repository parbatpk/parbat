-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnitType' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnitType
GO

CREATE PROCEDURE dbo.spDeleteOrgUnitType
	@OrgUnitTypeID bigint
AS
	DELETE FROM OrgUnitType where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteOrgUnitType 8
GO


