-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentStatus' 
)
   DROP PROCEDURE dbo.spInsertStudentStatus
GO

CREATE PROCEDURE dbo.spInsertStudentStatus
	@Name nvarchar(50)
AS
	INSERT into StudentStatus([Name]) values(@Name)
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertStudentStatus 'Pending'
GO
