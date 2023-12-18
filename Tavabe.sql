SELECT SUBSTRING(Title, 1, 3) AS ShortTitle FROM book;
SELECT SUBSTRING(PublisherName, 1, 5) AS ShortPublisherName FROM publisher;

SELECT LTRIM(PublisherName) AS TrimmedPublisherName FROM publisher;
SELECT Rtrim(Title) AS TrimmedTitle FROM book;

SELECT RIGHT(Title, 3) AS LastThreeCharacters FROM book;
SELECT LEFT(PublisherName, 5) AS LastFiveCharacters FROM publisher;

SELECT UPPER(PublisherName)AS UpperName FROM publisher;
SELECT LOWER(Title)AS UpperTitle FROM book;

SELECT LEN(Title) AS TitleLength FROM book;
SELECT LEN(PublisherName) AS PublisherNameLength FROM publisher;

SELECT STUFF(Title, 1, 3, 'NewTitle') AS NewTitle FROM book;
SELECT STUFF(PublisherName, 1, 5, 'NewPublisher') AS NewPublisherName FROM publisher;





select * from publisher
select * from book
select * from borrower
select * from bookLoans
select * from copies
select * from libraryBranch