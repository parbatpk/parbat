-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spComponentTotalCreditCourse' 
)
   DROP PROCEDURE dbo.spCurriculumTotalCreditCourse
GO

CREATE PROCEDURE dbo.spCurriculumTotalCreditCourse
	@CurriculumID bigint
AS
	SELECT count(ComponentID) as NumberofComponent, sum(TotalCourses) as TotalCourses,sum(TotalCredit) as TotalCredit
	from Component where CurriculumID=@CurriculumID   
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spTotalCreditCourse 1, 2
--GO
