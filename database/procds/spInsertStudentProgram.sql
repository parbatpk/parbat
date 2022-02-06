-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertStudentProgram' 
)
   DROP PROCEDURE dbo.spInsertStudentProgram
GO

CREATE PROCEDURE dbo.spInsertStudentProgram
	@StudentID bigint,
	@BatchID bigint,
	@StartDate date,
	@EndDate date,
	@StudentStatusID bigint,
	@OverrideCurriculumID bigint,
	@MinorCurriculumID	bigint,
	@StudentGroupID bigint
AS
	Insert into StudentProgram (StudentID, BatchID, StartDate, EndDate, StudentStatusID, OverrideCurriculumID,
	MinorCurriculumID, StudentGroupID) 
	Values (@StudentID,@BatchID,@StartDate,@EndDate,@StudentStatusID,@OverrideCurriculumID,@MinorCurriculumID,@StudentGroupID)
	Select SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertStudentProgram 
--GO
