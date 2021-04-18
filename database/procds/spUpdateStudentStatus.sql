-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentStatus' 
)
   DROP PROCEDURE dbo.spUpdateStudentStatus
GO

CREATE PROCEDURE dbo.spUpdateStudentStatus
	@StudentStatusID bigint,
	@Name nvarchar(50)
AS
	UPDATE StudentStatus SET [Name] = @Name where StudentStatusID = @StudentStatusID; 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spUpdateStudentStatus 6, 'Inprogress'
GO
