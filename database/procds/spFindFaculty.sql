-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindFaculty' 
)
   DROP PROCEDURE dbo.spFindFaculty
GO

CREATE PROCEDURE dbo.spFindFaculty
	@FacultyID bigint
AS
	SELECT Top 1 *
	from Faculty
	where FacultyID = @FacultyID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindClasModule 1, 2
--GO
