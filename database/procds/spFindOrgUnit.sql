-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOrgUnit' 
)
   DROP PROCEDURE dbo.spFindOrgUnit
GO

CREATE PROCEDURE dbo.spFindOrgUnit
	@OrgUnitID bigint 
AS
	Select top 1* 
	From OrgUnit
	where OrgUnitID=@OrgUnitID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindOrgUnit 1, 2
--GO
