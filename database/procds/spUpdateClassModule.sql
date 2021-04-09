-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClassModule' 
)
   DROP PROCEDURE dbo.spUpdateClassModule
GO

CREATE PROCEDURE dbo.spUpdateClassModule
	@ClassModuleID bigint,
	@FacultyID bigint,
	@ShortName nvarchar(50),
	@TheoryCredit int,
	@LabCredit int
AS
	UPDATE ClassModule 
	SET		FacultyID = @FacultyID,
            ShortName = @ShortName,
           TheoryCredit =  @TheoryCredit,
           LabCredit = @LabCredit
	WHERE	ClassModuleID = @ClassModuleID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClassModule 1, 2
--GO
