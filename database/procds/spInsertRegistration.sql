-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertRegistration' 
)
   DROP PROCEDURE dbo.spInsertRegistration
GO

CREATE PROCEDURE dbo.spInsertRegistration
	@RegisterDate datetime,
	@StudentProgramID bigint,
	@ClassID bigint,
	@RegisterStatusID bigint
AS
	Insert into Registration (RegisterDate, StudentProgramID, ClassID, RegisterStatusID) 
	Values (@RegisterDate,@StudentProgramID,@ClassID,@RegisterStatusID) Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertRegistration
--GO
