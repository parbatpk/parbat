-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnitContainsCourse' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnitContainsCourse
GO

CREATE PROCEDURE dbo.spGetAllOrgUnitContainsCourse
AS
	Select o.OrgUnitID, Max(o.OrgUnitTypeID) as 'OrgUnitTypeID', Max(o.[Name]) as 'Name', Max(o.ShortName) as 'ShortName', Max(o.ParentUnitID) as 'ParentUnitID', MAX(CASE WHEN o.IsAllowAdmission = 1 THEN 1 ELSE 0 END) as 'IsAllowAdmission'
		from OrgUnit as o
			join Course as c on o.OrgUnitID = c.OwnerID
				group by o.OrgUnitID For Json Auto

GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnitContainsCourse 
GO
