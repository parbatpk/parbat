-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllOrgUnit' 
)
   DROP PROCEDURE dbo.spGetAllOrgUnit
GO

CREATE PROCEDURE dbo.spGetAllOrgUnit

AS
	SELECT * 
	from OrgUnit
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllOrgUnit 1, 2
--GO
