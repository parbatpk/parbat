-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllCourseSpecificOrgUnit' 
)
   DROP PROCEDURE dbo.spGetAllCourseSpecificOrgUnit
GO

CREATE PROCEDURE dbo.spGetAllCourseSpecificOrgUnit
	@OwnerID bigint
AS
	Select * from Course
		where Course.OwnerID = @OwnerID 
			For Json Auto
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllCourseSpecificOrgUnit 2
GO
