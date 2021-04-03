-- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'spUpdateCourse' 
)
   DROP PROCEDURE dbo.spUpdateCourse
GO

CREATE PROCEDURE dbo.spUpdateCourse
	@CourseID bigint,
	@OwnerID bigint,
	@ShortName nvarchar(50),
	@Name nvarchar(50),
	@TheoryCredit int,
	@LabCredit int,
	@Code nvarchar(50)=0,
	@CourseTypeID bigint
AS
		Update Course
		SET OwnerID=@OwnerID,ShortName=@ShortName,[Name]=@Name,TheoryCredit=@TheoryCredit,LabCredit=@LabCredit,Code=@Code,CourseTypeID=@CourseTypeID
		where CourseID=@CourseID
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
--EXECUTE dbo.apUpdateCourse 1, 2
--GO
