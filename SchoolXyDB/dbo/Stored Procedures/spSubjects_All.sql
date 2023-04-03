CREATE PROCEDURE [dbo].[spSubjects_All]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT [Id], [SubjectName], [DepartmentId] FROM dbo.[Subject]
END
