-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnitbyParentUnitID' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnitbyParentUnitID
GO

CREATE PROCEDURE dbo.spGetAllOrgUnitbyParentUnitID
	@ParentUnitID int = 0
AS
	SELECT * 
	from OrgUnit 
	where ParentUnitID=@ParentUnitID
	FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnitbyParentUnitID 1, 2
GO
