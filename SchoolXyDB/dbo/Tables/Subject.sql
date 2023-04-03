CREATE TABLE [dbo].[Subject]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [SubjectName] NVARCHAR(100) NOT NULL, 
    [DepartmentId] INT NOT NULL 
)
