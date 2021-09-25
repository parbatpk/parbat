-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteBatch' 
)
   DROP PROCEDURE dbo.spDeleteBatch
GO

CREATE PROCEDURE dbo.spDeleteBatch
	@BatchID bigint
AS
	Delete from Batch
	where BatchID = @BatchID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteBatch 1
--GO
