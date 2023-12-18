SELECT SUBSTRING(Title, 1, 3) AS ShortTitle FROM book;
SELECT SUBSTRING(PublisherName, 1, 5) AS ShortPublisherName FROM publisher;

SELECT CHARINDEX('abcd', PublisherName, 10) AS Position FROM publisher;


select * from publisher
select * from book
select * from borrower
select * from bookLoans
select * from copies
select * from libraryBranch