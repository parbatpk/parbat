-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetAllClassModule' 
)
   DROP PROCEDURE dbo.spGetAllClassModule
GO

CREATE PROCEDURE dbo.spGetAllClassModule
AS
	SELECT	DISTINCT CM.*, F.FirstName, F.LastName, C.ShortName as Class_ShortName, 
			T.TermID, T.ShortName as Term_ShortName
	FROM ClassModule CM 
			Inner Join Faculty F ON CM.FacultyID = F.FacultyID
			Inner Join Class C ON C.ClassID = CM.ClassID
			Inner Join ClassMapping CMP ON C.ClassID = CMP.ClassID
			Inner Join Offering OFR ON OFR.OfferingID = CMP.OfferingID
			Inner Join Term T ON T.TermID = OFR.TermID


GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetAllClassModule 1, 2
--GO
