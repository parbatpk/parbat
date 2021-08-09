-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindClassModule' 
)
   DROP PROCEDURE dbo.spFindClassModule
GO

CREATE PROCEDURE dbo.spFindClassModule
	@ClassModuleID bigint
AS
	SELECT Top 1 *
	from ClassModule
	where ClassModuleID = @ClassModuleID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClassModule 1, 2
--GO
