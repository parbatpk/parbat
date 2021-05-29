-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetCourseName' 
)
   DROP PROCEDURE dbo.spGetCourseName
GO

CREATE PROCEDURE dbo.spGetCourseName
	@Name nvarchar(50)
AS
	SELECT * from Course where [Name] =@Name
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetCourseName 1, 2
--GO
