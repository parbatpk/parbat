-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponent' 
)
   DROP PROCEDURE dbo.spFindComponent
GO

CREATE PROCEDURE dbo.spFindComponent
	@ComponentID bigint
AS
	SELECT Top 1 * 
	from Component
	where ComponentID = @ComponentID
	For json Auto, Without_Array_Wrapper;
GO
-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponent 1, 2
--GO
