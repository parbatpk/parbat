-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnit' 
)
   DROP PROCEDURE dbo.spInsertOrgUnit
GO

CREATE PROCEDURE dbo.spInsertOrgUnit
	@OrgUnitTypeID bigint,
	@Name nvarchar(50),
	@ShortName nvarchar(50),
	@ParentUnitID bigint = 0,
	@IsAllowAdmission bit
AS
	Insert Into OrgUnit (OrgUnitTypeID,[Name],ShortName,ParentUnitID,IsAllowAdmission) 
	values(@OrgUnitTypeID,@Name,@ShortName,@ParentUnitID,@IsAllowAdmission)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOrgUnit 1, 2
--GO
