-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllBatch' 
)
   DROP PROCEDURE dbo.spGetAllBatch
GO

CREATE PROCEDURE dbo.spGetAllBatch
AS
	SELECT * from Batch
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllBatch 
--GO
