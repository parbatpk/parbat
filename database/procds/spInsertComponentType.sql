-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertComponentType' 
)
   DROP PROCEDURE dbo.spInsertComponentType
GO

CREATE PROCEDURE dbo.spInsertComponentType
	@Name nvarchar(50), 
	@IsRequired bit
AS
	INSERT INTO ComponentType ([Name],IsRequired) values(@Name,@IsRequired)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spCreateComponentType 1, 2
--GO
