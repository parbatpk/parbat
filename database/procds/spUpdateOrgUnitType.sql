-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOrgUnitType' 
)
   DROP PROCEDURE dbo.spUpdateOrgUnitType
GO

CREATE PROCEDURE dbo.spUpdateOrgUnitType
	@OrgUnitTypeID bigint,
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	UPDATE OrgUnitType SET ShortName = @ShortName, [Name] = @Name where OrgUnitTypeID = @OrgUnitTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateOrgUnitType 8, 'Mk', 'MaazKhan'
GO

