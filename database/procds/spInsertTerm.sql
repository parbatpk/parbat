-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertTerm' 
)
   DROP PROCEDURE dbo.spInsertTerm
GO

CREATE PROCEDURE dbo.spInsertTerm
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@StartDate	date = '0',
	@EndDate	date = '0',
	@IsActive	bit

AS
	Insert into Term 
	(ShortName,[Name],StartDate,EndDate,IsActive) 
	values (@ShortName,@Name,@StartDate,@EndDate,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertTerm 1, 2
--GO
