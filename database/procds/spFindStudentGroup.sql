-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudentGroup' 
)
   DROP PROCEDURE dbo.spFindStudentGroup
GO

CREATE PROCEDURE dbo.spFindStudentGroup
	@StudentGroupID bigint
AS
	SELECT TOP 1 *
	FROM StudentGroup
	WHERE StudentGroupID = @StudentGroupID
	FOR JSON AUTO, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudentGroup 1, 2
--GO
