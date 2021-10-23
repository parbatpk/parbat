-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClass' 
)
   DROP PROCEDURE dbo.spGetAllClass
GO

CREATE PROCEDURE dbo.spGetAllClass

AS
	SELECT * from Class FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClass 1, 2
--GO
