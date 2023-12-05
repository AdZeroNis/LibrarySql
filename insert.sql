	INSERT INTO publisher
		(PublisherName, PublisherAddress,PublisherPhone)
		VALUES
		('Negah','Tehran,shariati','09336892362'),
		('Sokhan','Tehran,Tajrish','09384562354'),
		('Saghi','Tehran,Enghelab','09135469877'),
		('Ghoghnoos','Tehran,Zaferanie','Not Available'),
		('Cheshmeh','Tehran,Azadi','+9812548964');


	INSERT INTO book
		(Title, PublisherName)
		VALUES 
		('Rah o Rasm Taraneh', 'Negah'),
		('Hafez va Rood Jadoo', 'NEgah'),
		('Ghoresh Toofan', 'Negah'),
		('Rastakhiz Kalamat', 'Sokhan'),
		('Anasor Dastan', 'Sokhan'),
		('365 Rooz ba Ghoran', 'Sokhan'),
		('Dastur Zaban Tadvin', 'Saghi'),
		('Arayesh Resane', 'Saghi'),
		('Lezat Naghd', 'Saghi'),
		('Bartari Khafif', 'Ghoghnoos'),
		('Alefbaye Falsafe', 'Ghoghnoos'),
		('Sargozasht Nadimeh', 'Ghoghnoos'),
		('Shagerde Ghasab', 'Cheshmeh'),
		('Khoon Khordeh', 'Cheshmeh'),
		('Farar az ordugah 14', 'Cheshmeh');

	INSERT INTO libraryBranch
		(BranchName, BranchAddress)
		VALUES
		('Arghavan','Ekhtiarie'),
		('Shaghayegh','Narmak'),
		('Meli Iran','Shahid Haghani'),
		('Amir Kabir','Gheytarieh');

	
	INSERT INTO borrower
		(BorrowerName, BorrowerAddress, BorrowerPhone,Gender)
		VALUES
		('Amir Hassani','Tehran','093654782',1),
		('Sajad Amiri','Tehran','09364589215',1),
		('Setare Ezabadi','Tehran','093654785',0),
		('Shaghayegh Kairmi','Tehran','09336892362',0),
		('Narges Hoseeini','Tehran','0935897456',0),
		('Mohammad Fatemi','Tehran','09365478955',1);

	INSERT INTO bookLoans
		(BookID, BranchID, CardNo,DateOut, DueDate)
		VALUES
		('1','1','1','1/1/18','2023/05/06'),
		('2','1','1','1/1/18','2023/05/06'),
		('3','1','2','1/1/18','2023/05/06'),
		('4','3','3','1/1/18','2023/05/06'),
		('5','1','2','1/3/18','2023/06/06'),
		('6','1','2','1/3/18','2023/06/06'),
		('7','1','3','1/3/18','2023/06/06'),
		('8','3','3','1/3/18','2023/06/06'),
		('9','1','4','1/3/18','2023/06/06'),
		('11','1','4','1/3/18','2023/06/06'),
		('12','2','5','12/12/17','2023/09/15'),
		('10','2','5','12/12/17','2023/09/15'),
		('15','2','6','2/3/18','2023/09/15'),
		('11','2','6','1/7/18','2023/09/15'),
		('1','2','4','1/7/18','2023/09/15');

	INSERT INTO copies
		(BookID,BranchID, No_Of_Copies)
		VALUES
		('1','1','5'),
		('2','1','5'),
		('3','1','5'),
		('4','1','5'),
		('5','1','5'),
		('6','1','5'),
		('7','1','5'),
		('8','1','5'),
		('9','1','5'),
		('10','1','5'),
		('11','1','5'),
		('12','1','5'),
		('13','1','5'),
		('14','1','5'),
		('15','1','5'),
		('1','2','5'),
		('2','2','5'),
		('3','2','5'),
		('4','2','5'),
		('5','2','5'),
		('6','2','5'),
		('7','2','5'),
		('8','2','5'),
		('9','2','5'),
		('10','2','5'),
		('11','2','5'),
		('12','2','5'),
		('13','2','5'),
		('14','2','5'),
		('15','2','5'),
		('1','3','5'),
		('2','3','5'),
		('3','3','5'),
		('4','3','5'),
		('5','3','5'),
		('6','3','5'),
		('7','3','5'),
		('8','3','5'),
		('9','3','5'),
		('10','3','5'),
		('11','3','5'),
		('12','3','5'),
		('13','3','5'),
		('14','3','5'),
		('15','3','5'),
		('1','4','5'),
		('2','4','5'),
		('3','4','5'),
		('4','4','5'),
		('5','4','5'),
		('6','4','5'),
		('7','4','5'),
		('8','4','5'),
		('9','4','5'),
		('10','4','5'),
		('11','4','5'),
		('12','4','5'),
		('13','4','5'),
		('14','4','5'),
		('15','4','5');
 

	INSERT INTO authors
		(BookID,AuthorName)
		VALUES
		('1','Mohhamad Karimi'),
		('2','Setayesh Azadi'),
		('3','Sepideh Heydari'),
		('4','Farnoosh Sadeghi'),
		('5','Javad Javadi'),
		('6','Sina Saei'),
		('6','Parisa Fatemi'),
		('8','Ghasem Ghasemi'),
		('9','Hoda Karimi'),
		('10','Shahram shabpareh'),
		('11','Davood Mohammadi'),
		('12','Azadeh Samadi'),
		('13','William Goldman'),
		('14','Chuck Palahniuk'),
		('15','Louis Sachar');
		select * from publisher
		select * from book
		select * from borrower
		select * from bookLoans
		select * from copies
		select * from libraryBranch