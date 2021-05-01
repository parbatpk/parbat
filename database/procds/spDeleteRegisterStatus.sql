-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteRegisterStatus' 
)
   DROP PROCEDURE dbo.spDeleteRegisterStatus
GO

CREATE PROCEDURE dbo.spDeleteRegisterStatus
	@RegisterStatusID bigint
AS
	DELETE RegisterStatus
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteRegisterStatus 1, 2
--GO
