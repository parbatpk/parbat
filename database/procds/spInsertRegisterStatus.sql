-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertRegisterStatus' 
)
   DROP PROCEDURE dbo.spInsertRegisterStatus
GO

CREATE PROCEDURE dbo.spInsertRegisterStatus
	@ShortName nvarchar(50)
AS
	INSERT INTO RegisterStatus VALUES(@ShortName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertRegisterStatus 1, 2
--GO
