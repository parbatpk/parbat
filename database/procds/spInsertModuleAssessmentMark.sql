-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spInsertModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spInsertModuleAssessmentMark
	@ObtainMark dec(18,0), 
	@RegistrationID bigint,
	@ModuleAssessmentID bigint
AS
	INSERT INTO ModuleAssessmentMark (ObtainMark, RegistrationID, ModuleAssessmentID) values (@ObtainMark, @RegistrationID, @ModuleAssessmentID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertModuleAssessmentMark 1, 2, 3
--GO
