-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOrgUnitType' 
)
   DROP PROCEDURE dbo.spInsertOrgUnitType
GO

CREATE PROCEDURE dbo.spInsertOrgUnitType
	@ShortName nvarchar(10) = 0, 
	@Name nvarchar(50) = 0
AS
	Insert into OrgUnitType (ShortName, [Name]) values(@ShortName, @Name)
	select SCOPE_IDENTITY();
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertOrgUnitType 'Tea', 'Teacher'
GO


select *from OrgUnitType