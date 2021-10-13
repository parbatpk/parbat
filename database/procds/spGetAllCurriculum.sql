-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCurriculum' 
)
   DROP PROCEDURE dbo.spGetAllCurriculum
GO

CREATE PROCEDURE dbo.spGetAllCurriculum

AS
	SELECT * from Curriculum FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCurriculum 1, 2
--GO
