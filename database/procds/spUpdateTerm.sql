-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateTerm' 
)
   DROP PROCEDURE dbo.spUpdateTerm
GO

CREATE PROCEDURE dbo.spUpdateTerm
	@TermID		bigint,
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@StartDate	date ='0',
	@EndDate	date='0',
	@IsActive	bit

AS
	Update Term 
	set ShortName=@ShortName,[Name]=@Name,StartDate=@StartDate,EndDate=@EndDate,IsActive=@IsActive
	where TermID=@TermID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateTerm 1, 2
--GO
