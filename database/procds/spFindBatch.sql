-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindBatch' 
)
   DROP PROCEDURE dbo.spFindBatch
GO

CREATE PROCEDURE dbo.spFindBatch
	@BatchID bigint
AS
	SELECT Top 1 * 
	from Batch
	where BatchID = @BatchID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindBatch 1
--GO
