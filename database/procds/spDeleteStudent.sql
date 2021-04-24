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
	@StudentID bigint
AS
	DELETE from Student where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spDeleteStudent 3
GO
