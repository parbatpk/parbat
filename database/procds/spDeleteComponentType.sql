-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spDeleteComponentType' 
)
   DROP PROCEDURE dbo.spDeleteComponentType
GO

CREATE PROCEDURE dbo.spDeleteComponentType
	@ComponentTypeID bigint
AS
	Delete From ComponentType where ComponentTypeID=@ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spDeleteComponentType 1, 2
--GO
