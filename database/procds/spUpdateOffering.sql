-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateOffering' 
)
   DROP PROCEDURE dbo.spUpdateOffering
GO

CREATE PROCEDURE dbo.spUpdateOffering
	@OfferingID bigint,
	@CousreID bigint,
	@TermID bigint,
	@OrgUnitID bigint,
	@SemesterID bigint
AS
	Update Offering Set CousreID = @CousreID, TermID = @TermID, OrgUnitID = @OrgUnitID, SemesterID = @SemesterID
	Where OfferingID = @OfferingID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateOffering
--GO
