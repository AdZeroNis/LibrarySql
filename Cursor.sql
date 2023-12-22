
DECLARE @BorrowerName varchar(255), @CardNo int, @Gender bit, @BorrowerPhone varchar(255), @BorrowerAddress varchar(255)
DECLARE cursor_name CURSOR FOR
    SELECT CardNo, Gender, BorrowerPhone, BorrowerAddress, BorrowerName FROM Borrower$
OPEN cursor_name;
FETCH NEXT FROM cursor_name INTO @CardNo, @Gender, @BorrowerPhone, @BorrowerAddress, @BorrowerName;
WHILE (@@FETCH_STATUS = 0)
BEGIN
    INSERT INTO borrower (BorrowerName, BorrowerAddress, BorrowerPhone, Gender)
    VALUES (@BorrowerName, @BorrowerAddress, @BorrowerPhone, @Gender)
    FETCH NEXT FROM cursor_name INTO @CardNo, @Gender, @BorrowerPhone, @BorrowerAddress, @BorrowerName;
END
CLOSE cursor_name;
DEALLOCATE cursor_name;


DECLARE @BorrowerName varchar(255), @CardNo int, @Gender bit, @BorrowerPhone varchar(255), @BorrowerAddress varchar(255)
DECLARE cursorname CURSOR FOR
    SELECT CardNo, Gender, BorrowerPhone, BorrowerAddress, BorrowerName FROM Borrower$
OPEN cursorname;
FETCH NEXT FROM cursorname INTO @CardNo, @Gender, @BorrowerPhone, @BorrowerAddress, @BorrowerName;
WHILE (@@FETCH_STATUS = 0)
BEGIN
    SELECT CardNo, Gender, BorrowerPhone, BorrowerAddress, BorrowerName FROM Borrower$
    FETCH NEXT FROM cursorname INTO @CardNo, @Gender, @BorrowerPhone, @BorrowerAddress, @BorrowerName;
END
CLOSE cursorname;
DEALLOCATE cursorname;


declare @name varchar(255)
declare cr_name cursor for
select BorrowerName from borrower
open cr_name
fetch next from cr_name into @name
while (@@FETCH_STATUS=0)
begin 
    print @name
	fetch next from cr_name into @name
end
close cr_name
deallocate cr_name


