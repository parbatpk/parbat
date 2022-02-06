-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateStudentProgram' 
)
   DROP PROCEDURE dbo.spUpdateStudentProgram
GO

CREATE PROCEDURE dbo.spUpdateStudentProgram
	@StudentProgramID bigint,
	@StudentID bigint,
	@BatchID bigint,
	@StartDate date,
	@EndDate date,
	@StudentStatusID bigint,
	@OverrideCurriculumID bigint,
	@MinorCurriculumID	bigint,
	@StudentGroupID bigint
AS
	UPDATE StudentProgram SET StudentID = @StudentID, BatchID = @BatchID, StartDate = @StartDate, EndDate = @EndDate, 
	StudentStatusID = @StudentStatusID, OverrideCurriculumID = @OverrideCurriculumID, MinorCurriculumID = @MinorCurriculumID,
	StudentGroupID = @StudentGroupID 
	where StudentProgramID = @StudentProgramID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateStudentProgram
--GO
