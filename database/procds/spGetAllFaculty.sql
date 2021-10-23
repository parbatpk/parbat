-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllFaculty' 
)
   DROP PROCEDURE dbo.spGetAllFaculty
GO

CREATE PROCEDURE dbo.spGetAllFaculty
AS
	SELECT	* FROM Faculty FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllFaculty 1, 2
--GO
