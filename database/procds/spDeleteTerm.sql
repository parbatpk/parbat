-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteTerm' 
)
   DROP PROCEDURE dbo.spDeleteTerm
GO

CREATE PROCEDURE dbo.spDeleteTerm
	@TermID bigint
AS
	Delete from Term where TermID=@TermID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteTerm 1, 2
--GO
