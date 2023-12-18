CREATE TRIGGER trg_bookLoans
ON bookLoans
AFTER INSERT
AS
BEGIN
   DECLARE @BookID INT, @BranchID INT, @No_Of_CopiesBefore INT, @No_Of_CopiesAfter INT

   -- Get the BookID and BranchID from the inserted row
   SELECT @BookID = BookID, @BranchID = BranchID FROM inserted

   -- Get the No_Of_Copies before the loan operation
   SELECT @No_Of_CopiesBefore = No_Of_Copies FROM copies WHERE BookID = @BookID AND BranchID = @BranchID

   -- Update the No_Of_Copies in the copies table
   UPDATE copies SET No_Of_Copies = No_Of_Copies - 1 WHERE BookID = @BookID AND BranchID = @BranchID

   -- Get the No_Of_Copies after the loan operation
   SELECT @No_Of_CopiesAfter = No_Of_Copies FROM copies WHERE BookID = @BookID AND BranchID = @BranchID

   -- Log the changes in the bookLoansLog table
   INSERT INTO bookLoansLog (BookID, BranchID, No_Of_CopiesBefore, No_Of_CopiesAfter)
   VALUES (@BookID, @BranchID, @No_Of_CopiesBefore, @No_Of_CopiesAfter)
END;
