-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClassModule' 
)
   DROP PROCEDURE dbo.spInsertClassModule
GO

CREATE PROCEDURE dbo.spInsertClassModule
	@FacultyID bigint,
	@ShortName nvarchar(50),
	@TheoryCredit int,
	@LabCredit int
AS
	INSERT INTO ClassModule (FacultyID, ShortName, TheoryCredit, LabCredit)
	VALUES 
           (@FacultyID
           ,@ShortName
           ,@TheoryCredit
           ,@LabCredit)

	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClassModule 1, 2
--GO
