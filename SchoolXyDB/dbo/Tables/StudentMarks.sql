CREATE TABLE [dbo].[StudentMarks]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [StudentId] INT NOT NULL, 
    [SubjectId] INT NOT NULL, 
    [Marks] FLOAT NOT NULL
)
