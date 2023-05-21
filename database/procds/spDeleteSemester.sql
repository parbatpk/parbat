-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteSemester' 
)
   DROP PROCEDURE dbo.spDeleteSemester
GO

CREATE PROCEDURE dbo.spDeleteSemester
	@SemesterID bigint
AS
	Delete from Semester 
	where SemesterID = @SemesterID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteSemester
--GO
