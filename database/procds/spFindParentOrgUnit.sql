-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindParentOrgUnit' 
)
   DROP PROCEDURE dbo.spFindParentOrgUnit
GO

CREATE PROCEDURE dbo.spFindParentOrgUnit
	@ParentUnitID bigint
AS
	SELECT * from OrgUnit 
	where ParentUnitID=@ParentUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindParentOrgUnit 1, 2
--GO
