-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClass' 
)
   DROP PROCEDURE dbo.spDeleteClass
GO

CREATE PROCEDURE dbo.spDeleteClass
	@ClassID bigint
AS
	Delete Class where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClass 1, 2
--GO
