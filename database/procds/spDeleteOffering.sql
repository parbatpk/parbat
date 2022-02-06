-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteOffering' 
)
   DROP PROCEDURE dbo.spDeleteOffering
GO

CREATE PROCEDURE dbo.spDeleteOffering
	@OfferingID bigint
AS
	Delete from Offering Where OfferingID = @OfferingID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteOffering
--GO
