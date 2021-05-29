-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetOwnerUnit' 
)
   DROP PROCEDURE dbo.spGetOwnerUnit
GO

CREATE PROCEDURE dbo.spGetOwnerUnit
	@OwnerUnitID bigint
AS
	SELECT * from Curriculum where OwnerUnitID =@OwnerUnitID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetOwnerUnit 1, 2
--GO
