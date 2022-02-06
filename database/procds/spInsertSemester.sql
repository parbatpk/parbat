-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertSemester' 
)
   DROP PROCEDURE dbo.spInsertSemester
GO

CREATE PROCEDURE dbo.spInsertSemester
	@ShortName nvarchar(50),
	@Name nvarchar(250),
	@StudentGroupID bigint,
	@TermID bigint
AS
	Insert into Semester (ShortName, [Name], StudentGroupID, TermID)
	Values (@ShortName, @Name, @StudentGroupID, @TermID) Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbi.spInsertSemester
--GO
