

select * from publisher
select * from book
select * from borrower
select * from bookLoans
select * from copies
select * from libraryBranch
--calculate the average number of loans per branch (libraryBranch)
ALTER FUNCTION AvgLoansPerBranch (@branchId INT)
RETURNS FLOAT
AS
BEGIN
 DECLARE @result FLOAT;
 SELECT @result = AVG(loanCount) FROM ( SELECT COUNT(*) as loanCount FROM bookLoans WHERE BranchID = @branchId 
 GROUP BY BranchID
 ) as CountLoan;
 RETURN @result;
END;

SELECT dbo.AvgLoansPerBranch(2);


--Find books from a publisher

CREATE FUNCTION GetBooksByPublisher(@PublisherName VARCHAR(100))
RETURNS VARCHAR(255)
AS
BEGIN
 DECLARE @RESULT VARCHAR(255)
 SELECT @RESULT = Title
 FROM book
 WHERE PublisherName = @PublisherName;
 RETURN @RESULT;
END;
SELECT  dbo.GetBooksByPublisher('Negah');
