-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteRegistration' 
)
   DROP PROCEDURE dbo.spDeleteRegistration
GO

CREATE PROCEDURE dbo.spDeleteRegistration
	@RegistrationID bigint
AS
	Delete from Registration 
	Where RegistrationID = @RegistrationID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteRegistration
--GO
