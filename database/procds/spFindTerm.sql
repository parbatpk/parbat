-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindTerm' 
)
   DROP PROCEDURE dbo.spFindTerm
GO

CREATE PROCEDURE dbo.spFindTerm
	@TermID bigint
AS
	SELECT top 1 *
	from Term
	where TermID=@TermID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindTerm 1, 2
--GO
