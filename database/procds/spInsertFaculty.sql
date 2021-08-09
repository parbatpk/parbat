-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertFaculty' 
)
   DROP PROCEDURE dbo.spInsertFaculty
GO

CREATE PROCEDURE dbo.spInsertFaculty
	@FirstName nvarchar(50),
	@LastName nvarchar(max)
AS
	Insert Into Faculty Values(@FirstName, @LastName)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertFaculty 1, 2
--GO
