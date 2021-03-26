-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindComponentType' 
)
   DROP PROCEDURE dbo.spFindComponentType
GO

CREATE PROCEDURE dbo.spFindComponentType
	@ComponentTypeID bigint
AS
	SELECT Top 1 * 
	from ComponentType
	Where ComponentTypeID=@ComponentTypeID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindComponentType 1, 2
--GO
