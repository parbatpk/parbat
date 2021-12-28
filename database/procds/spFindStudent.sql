-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindStudent' 
)
   DROP PROCEDURE dbo.spFindStudent
GO

CREATE PROCEDURE dbo.spFindStudent
	@StudentID bigint 
AS
	Select top 1*
	from Student 
	where StudentID = @StudentID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindStudent 1
--GO
