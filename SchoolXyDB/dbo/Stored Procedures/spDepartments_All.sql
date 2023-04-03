CREATE PROCEDURE [dbo].[spDepartments_All]
AS
BEGIN

	SET NOCOUNT ON;

	SELECT [Id], [DepartmentName] FROM dbo.Department;
END
