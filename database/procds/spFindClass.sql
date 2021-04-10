-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClass' 
)
   DROP PROCEDURE dbo.spFindClass
GO

CREATE PROCEDURE dbo.spFindClass
	@ClassID bigint
AS
	SELECT Top 1 *
	from Class
	where ClassID = @ClassID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClass 1, 2
--GO
