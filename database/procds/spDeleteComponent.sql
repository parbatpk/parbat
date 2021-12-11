-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponent' 
)
   DROP PROCEDURE dbo.spDeleteComponent
GO

CREATE PROCEDURE dbo.spDeleteComponent
	@ComponentID bigint
AS
	Delete from Component
	where ComponentID = @ComponentID
GO
-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponent 1, 2
--GO
