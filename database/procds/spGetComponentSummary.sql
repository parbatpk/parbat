-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spGetComponentSummary' 
)
   DROP PROCEDURE dbo.spGetComponentSummary
GO

CREATE PROCEDURE dbo.spGetComponentSummary
	@ComponentID bigint
AS
		select CC.ComponentID,  COUNT(c.CourseID) as 'TotalCourses', 
		Sum(c.TheoryCredit+c.LabCredit) as 'TotalCreditHrs' 
from	Course as c Inner join ComponentCourse CC on CC.CourseID = C.CourseID
where	CC.ComponentID = @ComponentID
group by CC.ComponentID
		
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spGetComponentSummary 1
--GO
