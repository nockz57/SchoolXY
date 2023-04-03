CREATE PROCEDURE [dbo].[spStudent_Insert]
@FirstName NVARCHAR(50), 
@LastName NVARCHAR(50), 
@Email NVARCHAR(50), 
@DateRegistered DATETIME2, 
@GenderId int
AS
BEGIN
	SET NOCOUNT ON;

    INSERT INTO dbo.Student([FirstName], [LastName], [Email], [DateRegistered], [GenderId])
	VALUES (@FirstName, @LastName, @Email, @DateRegistered, @GenderId)
END