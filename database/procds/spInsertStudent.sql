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
	@Name nvarchar(50),
	@LastName nvarchar(50),
	@StudentGroupID bigint
AS
	Insert into Student (Identifier, [Name], LastName, StudetGroupID) values(@Identifier, @Name, @LastName, @StudentGroupID)
	Select SCOPE_IDENTITY()ss
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudent '17b-012-cs','Maaz','Khan'
--GO
