-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindOffering' 
)
   DROP PROCEDURE dbo.spFindOffering
GO

CREATE PROCEDURE dbo.spFindOffering
	@OfferingID bigint
AS
	Select Top 1* from Offering 
	Where OfferingID = @OfferingID For Json Auto, Without_Array_Wrapper
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindOffering
--GO
