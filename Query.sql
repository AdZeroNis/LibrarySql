
SELECT *
FROM book
LEFT JOIN publisher
ON book.PublisherName = publisher.PublisherName;

SELECT *
FROM book
RIGHT JOIN publisher
ON book.PublisherName = publisher.PublisherName;

SELECT *
FROM book
INNER JOIN publisher
ON book.PublisherName = publisher.PublisherName;
 
SELECT *
FROM borrower
RIGHT JOIN bookLoans
ON borrower.CardNo=bookLoans.CardNo;

SELECT PublisherName FROM publisher WHERE PublisherName IN (SELECT PublisherName FROM bookLoans WHERE BookID = 1  AND PublisherName IN ('Negah'));

SELECT BorrowerName  FROM borrower WHERE BorrowerName  IN (SELECT BorrowerName FROM bookLoans WHERE CardNo=1)


	select * from publisher
	select * from book
	select * from borrower
	select * from bookLoans
	select * from copies
	select * from libraryBranch