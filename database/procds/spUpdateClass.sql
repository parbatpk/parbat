-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateClass' 
)
   DROP PROCEDURE dbo.spUpdateClass
GO

CREATE PROCEDURE dbo.spUpdateClass
	@ClassID	bigint,
	@ShortName	nvarchar(50),
	@Name		nvarchar(250),
	@Capacity	int

AS
	Update Class 
	set	ShortName=@ShortName,[Name]=@Name,Capacity=@Capacity
	where ClassID=@ClassID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateClass 1, 2
--GO
