-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteFaculty' 
)
   DROP PROCEDURE dbo.spDeleteFaculty
GO

CREATE PROCEDURE dbo.spDeleteFaculty
	@FacultyID bigint
AS
	DELETE Faculty WHERE FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
