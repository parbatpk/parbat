-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteClassModule' 
)
   DROP PROCEDURE dbo.spDeleteClassModule
GO

CREATE PROCEDURE dbo.spDeleteClassModule
	@ClassModuleID bigint
AS
	DELETE	ClassModule 
	WHERE	ClassModuleID = @ClassModuleID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteClassModule 1, 2
--GO
