-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateSemester' 
)
   DROP PROCEDURE dbo.spUpdateSemester
GO

CREATE PROCEDURE dbo.spUpdateSemester
	@SemesterID bigint,
	@ShortName nvarchar(50),
	@Name nvarchar(250),
	@StudentGroupID bigint,
	@TermID bigint
AS
	Update Semester Set ShortName = @ShortName, [Name] = @Name, StudentGroupID = @StudentGroupID, TermID = @TermID
	Where SemesterID = @SemesterID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateSemester
--GO
