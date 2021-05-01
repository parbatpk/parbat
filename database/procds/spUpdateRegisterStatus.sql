-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateRegisterStatus' 
)
   DROP PROCEDURE dbo.spUpdateRegisterStatus
GO

CREATE PROCEDURE dbo.spUpdateRegisterStatus
	@RegisterStatusID bigint,
	@ShortName nvarchar(50)
AS
	Update	RegisterStatus
	SET		ShortName = @ShortName
	WHERE	RegisterStatusID = @RegisterStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateRegisterStatus 1, 2
--GO
