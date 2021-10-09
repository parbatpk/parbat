-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertBatch' 
)
   DROP PROCEDURE dbo.spInsertBatch
GO

CREATE PROCEDURE dbo.spInsertBatch
	@ShortName nvarchar(10), 
	@Name nvarchar(50),
	@AdmissionYear int,
	@GraduationYear int,
	@OrgUnitID bigint,
	@CurriculumID bigint
AS
	INSERT INTO Batch (ShortName, [Name], AdmissionYear, GraduationYear, OrgUnitID, CurriculumID) values(@ShortName, @Name, @AdmissionYear, @GraduationYear, @OrgUnitID, @CurriculumID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE dbo.spInsertBatch "BS-2022", "BS(CS)2022", 2022, 2026, 4, 2  
GO
