-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllRegistration' 
)
   DROP PROCEDURE dbo.spGetAllRegistration
GO

CREATE PROCEDURE dbo.spGetAllRegistration
AS
	Select * from Registration for Json Auto 
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllRegistration
--GO
