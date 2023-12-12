
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


SELECT PublisherName FROM publisher WHERE PublisherName IN (SELECT PublisherName FROM bookLoans WHERE BookID = 1  AND PublisherName IN ('Negah'));