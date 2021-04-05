-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOrgUnit' 
)
   DROP PROCEDURE dbo.spDeleteOrgUnit
GO

CREATE PROCEDURE dbo.spDeleteOrgUnit
	@OrgUnitID bigint
AS
	Delete from 
	OrgUnit
	where OrgUnitID=@OrgUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteOrgUnit 1, 2
--GO
