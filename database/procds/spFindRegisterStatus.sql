-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spFindRegisterStatus' 
)
   DROP PROCEDURE dbo.spFindRegisterStatus
GO

CREATE PROCEDURE dbo.spFindRegisterStatus
	@RegisterStatusID bigint
AS
	SELECT top 1 *
	from RegisterStatus
	where RegisterStatusID = @RegisterStatusID
	For json Auto, Without_Array_Wrapper;
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spFindRegisterStatus 1, 2
--GO
