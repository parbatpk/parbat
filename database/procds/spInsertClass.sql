-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertClass' 
)
   DROP PROCEDURE dbo.spInsertClass
GO

CREATE PROCEDURE dbo.spInsertClass
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Insert into Class (ShortName,[Name],Capacity) values (@ShortName,@Name,@Capacity)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertClass 1, 2
--GO
