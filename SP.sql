
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





	select * from publisher
		select * from book
		select * from borrower
		select * from bookLoans
		select * from copies
		select * from libraryBranch
