-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateBatch' 
)
   DROP PROCEDURE dbo.spUpdateBatch
GO

CREATE PROCEDURE dbo.spUpdateBatch
	@BatchID bigint,
	@ShortName nvarchar(10),
	@Name nvarchar(50),
	@AdmissionYear int,
	@GraduationYear int,
	@OrgUnitID bigint,
	@CurriculumID bigint
AS
	UPDATE Batch
	SET ShortName=@ShortName, [Name]=@Name, AdmissionYear=@AdmissionYear, GraduationYear=@GraduationYear, OrgUnitID=@OrgUnitID, CurriculumID=@CurriculumID
	WHERE BatchID=@BatchID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateBatch 
--GO
