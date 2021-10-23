-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGETAllComponentType' 
)
   DROP PROCEDURE dbo.spGETAllComponentType
GO

CREATE PROCEDURE dbo.spGETAllComponentType
AS
	SELECT * from ComponentType FOR JSON Auto;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGETALLComponentType 1, 2
--GO
