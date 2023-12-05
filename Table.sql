
CREATE DATABASE LibraryManagementt


	CREATE TABLE publisher (
		PublisherName VARCHAR(100) PRIMARY KEY ,
		PublisherAddress VARCHAR(200) ,
		PublisherPhone VARCHAR(50) ,
	);

	CREATE TABLE book (
		BookID INT PRIMARY KEY  IDENTITY (1,1),
		Title VARCHAR(100) ,
		PublisherName VARCHAR(100)  FOREIGN KEY REFERENCES publisher(PublisherName)
	);

	CREATE TABLE libraryBranch (
		BranchID INT PRIMARY KEY  IDENTITY (1,1),
		BranchName VARCHAR(100) ,
		BranchAddress VARCHAR(200) ,
	);
	select * from libraryBranch
	CREATE TABLE borrower (
		CardNo INT PRIMARY KEY IDENTITY (1,1),
        BorrowerName VARCHAR(100) ,
		BorrowerAddress VARCHAR(200) ,
		BorrowerPhone VARCHAR(50) ,
		Gender bit
	);
	select * from borrower
	CREATE TABLE bookLoans (
		LoansID INT PRIMARY KEY  IDENTITY (1,1),
		BookID INT   FOREIGN KEY REFERENCES book(BookID),
		BranchID INT   FOREIGN KEY REFERENCES libraryBranch(BranchID),
		CardNo INT   FOREIGN KEY REFERENCES borrower(CardNo) ,
		DateOut VARCHAR(50) ,
		DueDate VARCHAR(50) 
	);
	select * from bookLoans
	 
	CREATE TABLE copies (
		CopiesID INT PRIMARY KEY  IDENTITY (1,1),
		BookID INT  FOREIGN KEY REFERENCES book(BookID),
		BranchID INT  FOREIGN KEY REFERENCES libraryBranch(BranchID),
		No_Of_Copies INT ,
	);

	CREATE TABLE authors (
		AuthorID INT PRIMARY KEY  IDENTITY (1,1),
		BookID INT FOREIGN KEY REFERENCES book(BookID),
		AuthorName VARCHAR(50),
	);

	
