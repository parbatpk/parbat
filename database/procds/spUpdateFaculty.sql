-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateFaculty' 
)
   DROP PROCEDURE dbo.spUpdateFaculty
GO

CREATE PROCEDURE dbo.spUpdateFaculty
	@FacultyID bigint, 
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Update	Faculty 
	SET		FirstName = @FirstName,
			LastName = @LastName
	WHERE	FacultyID = @FacultyID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateFaculty
--GO
