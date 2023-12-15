select * from publisher
select * from book
select * from borrower
select * from bookLoans
select * from copies
select * from libraryBranch

--Find the books that have been borrowed the most
CREATE FUNCTION MostBorrowedBooks()
RETURNS @Books TABLE 
(
   Title VARCHAR(100),
   NumberOfLoans INT
)
AS
BEGIN
   INSERT INTO @Books
   SELECT b.Title, COUNT(bl.LoansID) as NumberOfLoans
   FROM book b
   JOIN bookLoans bl ON b.BookID = bl.BookID
   GROUP BY b.Title
   RETURN
END

CREATE PROCEDURE GetMostBorrowedBooks
AS
BEGIN
   SELECT * FROM MostBorrowedBooks() ORDER BY NumberOfLoans DESC
END
EXEC GetMostBorrowedBooks

CREATE FUNCTION GetBooksByPublisher(@PublisherName VARCHAR(100))
RETURNS TABLE 
AS
RETURN 
(
  SELECT BookID, Title
  FROM book
  WHERE PublisherName = @PublisherName
)
SELECT * FROM GetBooksByPublisher('Negah');



