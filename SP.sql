
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






	select * from publisher
		select * from book
		select * from borrower
		select * from bookLoans
		select * from copies
		select * from libraryBranch

