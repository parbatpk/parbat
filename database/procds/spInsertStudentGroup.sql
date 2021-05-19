-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentGroup' 
)
   DROP PROCEDURE dbo.spInsertStudentGroup
GO

CREATE PROCEDURE dbo.spInsertStudentGroup
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@IsActive	bit = 0

AS
	Insert into StudentGroup
	(ShortName,[Name],IsActive) 
	values (@ShortName,@Name,@IsActive)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudentGroup 1, 2
--GO
