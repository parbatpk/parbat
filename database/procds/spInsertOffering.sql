-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertOffering' 
)
   DROP PROCEDURE dbo.spInsertOffering
GO

CREATE PROCEDURE dbo.spInsertOffering
	@CousreID bigint,
	@TermID bigint,
	@OrgUnitID bigint,
	@SemesterID bigint
AS
	Insert into Offering (CousreID, TermID, OrgUnitID, SemesterID)
	Values(@CousreID,@TermID,@OrgUnitID,@SemesterID) Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertOffering
--GO
