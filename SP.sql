
create PROCEDURE GetPhone
@Id int,
@res  int output
as
begin
SELECT PublisherPhone FROM book LEFT JOIN  publisher ON book.PublisherName=publisher.PublisherName where BookID=@Id
end
Declare @res int
Exec Getphone 2, @res output
print(@res)

alter PROCEDURE Gender
@GN bit,
@res int output
as
begin
SELECT BorrowerName FROM borrower where Gender=@GN
end
Declare @res int
Exec Gender 0, @res output
print(@res)


CREATE PROCEDURE GetBorrowerDetails
@CardNo INT,
@BorrowerName VARCHAR(100) OUTPUT,
@BorrowerAddress VARCHAR(200) OUTPUT,
@BorrowerPhone VARCHAR(50) OUTPUT,
@Gender BIT OUTPUT
AS
BEGIN
 SELECT @BorrowerName = BorrowerName, @BorrowerAddress = BorrowerAddress, @BorrowerPhone = BorrowerPhone, @Gender = Gender
 FROM borrower
 WHERE CardNo = @CardNo
END

DECLARE @BorrowerName VARCHAR(100), @BorrowerAddress VARCHAR(200), @BorrowerPhone VARCHAR(50), @Gender BIT
EXEC GetBorrowerDetails 1, @BorrowerName OUTPUT, @BorrowerAddress OUTPUT, @BorrowerPhone OUTPUT, @Gender OUTPUT
PRINT @BorrowerName
PRINT @BorrowerAddress
PRINT @BorrowerPhone
PRINT @Gender








	select * from publisher
		select * from book
		select * from borrower
		select * from bookLoans
		select * from copies
		select * from libraryBranch

