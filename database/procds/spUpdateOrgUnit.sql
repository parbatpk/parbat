-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnit' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnit
GO

CREATE PROCEDURE dbo.spUpdateOrgUnit
	@OrgUnitID bigint,
	@OrgUnitTypeId bigint,
	@Name nvarchar(50),
	@ShortName nvarchar(50),
	@ParentUnitID bigint = 0,
	@IsAllowAdmission bit
AS
	Update OrgUnit
	set [Name] = @Name, OrgUnitTypeId=@OrgUnitTypeId, ShortName = @ShortName, ParentUnitID=@ParentUnitID, IsAllowAdmission=@IsAllowAdmission
	where OrgUnitID =@OrgUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateOrgUnit 1, 2
--GO
