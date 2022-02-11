-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudent' 
)
   DROP PROCEDURE dbo.spUpdateStudent
GO

CREATE PROCEDURE dbo.spUpdateStudent
	@StudentID bigint, 
	@Identifier nvarchar(50),
	@Name nvarchar(50),
	@LastName nvarchar(50),
	@StudentGroupID bigint
AS
	UPDATE Student SET Identifier = @Identifier, [Name] = @Name, LastName = @LastName, StudetGroupID = @StudentGroupID
	where StudentID = @StudentID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudent 3,'17b-50-cs','Ahsan','Khan' 
--GO


