/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

IF NOT EXISTS (SELECT * FROM dbo.Gender)
BEGIN
    INSERT INTO dbo.Gender([GenderName])
    VALUES('Male'), ('Female')
END
GO

IF NOT EXISTS (SELECT * FROM dbo.Student)
BEGIN
    INSERT INTO dbo.Student([FirstName], [LastName], [Email], [DateRegistered], [GenderId])
    VALUES('Manuel', 'Phetla', 'manuelphetla@gmail.com', GETDATE(), 1),
          ('Cynthia', 'Mahlangu', 'test@test.com', GETDATE(), 2)
END
GO

IF NOT EXISTS (SELECT * FROM dbo.Department)
BEGIN
    INSERT INTO dbo.Department(DepartmentName)
    Values('Science', 'Economics', 'History')
END
GO

IF NOT EXISTS (SELECT * FROM dbo.[Subject])
BEGIN
    INSERT INTO dbo.[Subject](SubjectName, DepartmentId)
    Values('Mathematics', 1),('Physical Science',1), ('Biology', 1),('Economics', 2), ('Taxation', 2),('Geography',3),('History', 3)
END