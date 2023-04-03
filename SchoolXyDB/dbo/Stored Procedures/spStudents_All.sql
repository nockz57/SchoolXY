CREATE PROCEDURE [dbo].[spStudents_All]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT [Id], [FirstName], [LastName], [Email], [DateRegistered], [GenderId] FROM dbo.Student;

END
