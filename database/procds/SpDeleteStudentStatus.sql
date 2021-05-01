-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudent' 
)
   DROP PROCEDURE dbo.spDeleteStudent
GO

CREATE PROCEDURE dbo.spDeleteStudent
	@StudentStatusID bigint 
AS
	DELETE from StudentStatus where StudentStatusID = @StudentStatusID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteStudent 6
GO
