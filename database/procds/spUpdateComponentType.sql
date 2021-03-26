-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateComponentType' 
)
   DROP PROCEDURE dbo.spUpdateComponentType
GO

CREATE PROCEDURE dbo.spUpdateComponentType
	@ComponentTypeID bigint,
	@Name nvarchar(50),
	@IsRequired bit
AS
	Update ComponentType
	set [Name]=@Name,IsRequired=@IsRequired
	where @ComponentTypeID=ComponentTypeID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateComponentType 1, 2
--GO
