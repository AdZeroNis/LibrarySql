
--Getting information about Borrowers

ALTER PROCEDURE GetBorrowerDetails
AS
BEGIN
 DECLARE @CardNo INT, @BorrowerName VARCHAR(100), @BorrowerAddress VARCHAR(200), @BorrowerPhone VARCHAR(50), @Gender VARCHAR(10)
 DECLARE cur CURSOR FOR SELECT CardNo, BorrowerName, BorrowerAddress, BorrowerPhone, Gender FROM borrower
 OPEN cur
 FETCH NEXT FROM cur INTO @CardNo, @BorrowerName, @BorrowerAddress, @BorrowerPhone, @Gender
 WHILE @@FETCH_STATUS = 0
 BEGIN
 PRINT @BorrowerName
 PRINT @BorrowerAddress
 PRINT @BorrowerPhone
 PRINT CASE @Gender WHEN 1 THEN 'Male' WHEN 0 THEN 'Female' END
 FETCH NEXT FROM cur INTO @CardNo, @BorrowerName, @BorrowerAddress, @BorrowerPhone, @Gender
 END
 CLOSE cur
 DEALLOCATE cur
END
EXEC GetBorrowerDetails

----------------------------------------------------------------------------------------------------------------------

--The first person on the list who bought a book from the mentioned date to the present

CREATE PROCEDURE libraryManagementDATE
@date VARCHAR(255),
@result VARCHAR(255) OUTPUT
AS
BEGIN
   SET @result = (
      SELECT TOP 1 BorrowerName
      FROM borrower 
      INNER JOIN bookLoans ON borrower.CardNo = bookLoans.CardNo
      WHERE bookLoans.DateOut BETWEEN @date AND GETDATE() 
   )
END
DECLARE @res VARCHAR(255);
EXEC libraryManagementDATE '1/1/6', @res OUTPUT;
SELECT @res;









	select * from publisher
		select * from book
		select * from borrower
		select * from bookLoans
		select * from copies
		select * from libraryBranch

