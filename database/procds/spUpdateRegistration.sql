-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateRegistration' 
)
   DROP PROCEDURE dbo.spUpdateRegistration
GO

CREATE PROCEDURE dbo.spUpdateRegistration
	@RegistrationID bigint,
	@RegisterDate datetime,
	@StudentProgramID bigint,
	@ClassID bigint,
	@RegisterStatusID bigint
AS
	Update Registration Set RegisterDate = @RegisterDate, StudentProgramID = @StudentProgramID, 
	ClassID = @ClassID, RegisterStatusID = @RegisterStatusID
	Where RegistrationID = @RegistrationID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateRegistration
--GO
