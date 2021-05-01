-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteStudentGroup' 
)
   DROP PROCEDURE dbo.spDeleteStudentGroup
GO

CREATE PROCEDURE dbo.spDeleteStudentGroup
	@StudentGroupID bigint
AS
	Delete from StudentGroup where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteStudentGroup 1, 2
--GO
