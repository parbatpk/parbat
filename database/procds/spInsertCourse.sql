-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spInsertCourse' 
)
   DROP PROCEDURE dbo.spInsertCourse
GO

CREATE PROCEDURE dbo.spInsertCourse
	@OwnerID bigint,
	@ShortName nvarchar(50),
	@Name nvarchar(50),
	@TheoryCredit int,
	@LabCredit int,
	@Code nvarchar(50)=0,
	@CourseTypeID bigint
AS
	INSERT INTO Course (OwnerID,[Name],ShortName,TheoryCredit,LabCredit,Code,CourseTypeID) values(@OwnerID,@Name,@ShortName,@TheoryCredit,@LabCredit,@Code,@CourseTypeID)
	SELECT SCOPE_IDENTITY()
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.spInsertCourse 1, 2
--GO
