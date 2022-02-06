-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindRegistration' 
)
   DROP PROCEDURE dbo.spFindRegistration
GO

CREATE PROCEDURE dbo.spFindRegistration
	@RegistrationID bigint
AS
	Select top 1* from Registration
	Where RegistrationID = @RegistrationID for json auto, without_Array_Wrapper
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindRegistration
--GO
