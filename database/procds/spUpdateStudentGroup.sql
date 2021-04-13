-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentGroup' 
)
   DROP PROCEDURE dbo.spUpdateStudentGroup
GO

CREATE PROCEDURE dbo.spUpdateStudentGroup
	@StudentGroupID bigint,
	@ShortName		nvarchar(50),
	@Name			nvarchar(250),
	@IsActive		bit = 0

AS
	Update StudentGroup
	set ShortName=@ShortName,[Name]=@Name,IsActive=@IsActive
	where StudentGroupID=@StudentGroupID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudentGroup 1, 2
--GO
