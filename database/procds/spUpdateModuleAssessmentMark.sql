-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateModuleAssessmentMark' 
)
   DROP PROCEDURE dbo.spUpdateModuleAssessmentMark
GO

CREATE PROCEDURE dbo.spUpdateModuleAssessmentMark
	@ModuleAssessmentMarkID bigint,
	@ObtainMark dec(18, 0),
	@RegistrationID bigint,
	@ModuleAssessmentID bigint
AS
	UPDATE ModuleAssessmentMark
	SET ObtainMark = @ObtainMark, RegistrationID = @RegistrationID, ModuleAssessmentID = @ModuleAssessmentID
	WHERE ModuleAssessmentMarkID = @ModuleAssessmentMarkID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spUpdateModuleAssessmentMark 1, 2, 3, 4
--GO
