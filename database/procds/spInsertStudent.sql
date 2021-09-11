-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudent' 
)
   DROP PROCEDURE dbo.spInsertStudent
GO

CREATE PROCEDURE dbo.spInsertStudent
	@Identifier nvarchar(50), 
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
	Insert into Student (Identifier, [Name], LastName) values(@Identifier, @FirstName, @LastName)
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudent '17b-012-cs','Maaz','Khan'
--GO
