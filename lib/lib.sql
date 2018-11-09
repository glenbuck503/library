
CREATE DATABASE db_lib;

USE db_lib;

CREATE TABLE tbl_branch (
	branch_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	branch_name  VARCHAR(50) NOT NULL,
	branch_address VARCHAR(50) NOT NULL
	); 
--select * from tbl_branch
INSERT INTO tbl_branch
	(branch_name, branch_address)
	VALUES
	('Central','111 SW Main St Central,NY'),
	('Sharpstown','222 SW First St Seattle,MA'),
	('Portland','333 SW Second St Portland,OR'),
	('Sacramento','444 SW Third St Sacramento,CA')
	;
	

SELECT * FROM tbl_branch

	CREATE TABLE tbl_publisher (
	publisher_PublisherName VARCHAR(50) PRIMARY KEY NOT NULL,
	publisher_Address VARCHAR(50) NOT NULL,
	publisher_Phone VARCHAR(50) NOT NULL
);

	INSERT INTO tbl_publisher
	(publisher_PublisherName,publisher_Address,publisher_Phone)
	VALUES
	('Penguin Random House', '10 SW Front St','800-111-111'),
	('Hachette Livre','11 SW Side St','800-111-2222'),
	('HarperCollins','12 SW Left St','800-111-3333'),
	('Pearson Education','13 SW Right St','800-111-4444'),
	('Bloomsbury','14 SW Upper St','800-111-5555')
	;
	SELECT * FROM tbl_publisher

	


CREATE TABLE tbl_books (
	books_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	books_title VARCHAR(50) NOT NULL,
	books_publisher VARCHAR(50) FOREIGN KEY REFERENCES tbl_publisher(publisher_PublisherName) NOT NULL
	);

	INSERT INTO tbl_books
	(books_title, books_publisher)
	VALUES
	('How To Code','Penguin Random House'),
	('Code Perfection','Hachette Livre'),
	('The Lost Tribe','HarperCollins'),
	('Basketball Greats','HarperCollins'),
	('Media Change','Penguin Random House'),
	('Dinner for Adults','Hachette Livre'),
	('Baseball for Greats','Pearson Education'),
	('Soccer Stars','Bloomsbury'),
	('Acting Class','Penguin Random House'),
	('Help in the Class','Hachette Livre'),
	('Class Act','HarperCollins'),
	('This is Boring','Hachette Livre'),
	('Getting Repetitive','Penguin Random House'),
	('I am Over this','Bloomsbury'),
	('Will It End','Hachette Livre'),
	('Finally Over','Penguin Random House'),
	('Cannot Wait to Be Done','Bloomsbury'),
	('Please Be done','Bloomsbury'),
	('Forgot 2 More','Hachette Livre'),
	('CNow I am Done','Hachette Livre')
	;
	SELECT * FROM tbl_books
	
	
	CREATE TABLE tbl_borrower (
	borrower_CardNo INT PRIMARY KEY NOT NULL IDENTITY (100,1),
	borrower_Name VARCHAR(50) NOT NULL,
	borrower_Address VARCHAR(50) NOT NULL,
	borrower_Phone VARCHAR(50) NOT NULL
);
	INSERT INTO tbl_borrower
	(borrower_Name, borrower_Address, borrower_Phone)
	VALUES
	('Art Buck','111 SW First Ave','555-555-1111'),
	('Marcie Buck','222 SW Second Ave','555-555-2222'),
	('Aubrey Buck', '333 SW Third Ave', '555-555-3333'),
	('Glen Buck', '444 SW Fourth Ave','555-555-4444'),
	('Kelsey Buck','555 SW Fifth Ave','555-555-5555'),
	('Jordan Buck', '777 SW Seventh Ave', '555-555-7777'),
	('Brooklyn Buck','888 SW Eighth Ave', '555-555-8888'),
	('Maddox Buck','999 SW Ninth Ave','555-555-9999'),
	('John Doe', '1212 SW Tenth Ave','555-1212-5555')
	;

	SELECT * FROM tbl_borrower



CREATE TABLE tbl_bookLoans (
	bookLoans_books_id INT NOT NULL FOREIGN KEY REFERENCES tbl_books(books_id),
	bookLoans_branch_id INT NOT NULL FOREIGN KEY REFERENCES tbl_branch(branch_id),
	bookLoans_CardNo INT NOT NULL FOREIGN KEY REFERENCES tbl_borrower(borrower_CardNo),
	bookLoans_DateOut DATE NOT NULL,
	bookLoans_DateDue DATE NOT NULL
	);
	
	INSERT INTO tbl_bookLoans
	(bookLoans_books_id,bookLoans_branch_id,bookLoans_CardNo,bookLoans_DateOut, bookLoans_DateDue)
	VALUES
	(1,1, 100, '2018-02-20', '2018-03-20'),
	(3,1, 101, '2018-04-20', '2018-05-20'),
	(4,1, 102, '2018-06-20', '2018-07-20'),
	(5,1, 103, '2018-08-20', '2018-09-20'),
	(6,1, 104, '2018-10-20', '2018-11-20'),
	(8,2, 105, '2018-02-20', '2018-03-20'),
	(9,2, 106, '2018-04-20', '2018-05-20'),
	(10,2, 107, '2018-06-20', '2018-07-20'),
	(11,2, 100, '2018-08-20', '2018-09-20'),
	(12,2, 101, '2018-10-20', '2018-11-20'),
	(13,3, 102, '2018-02-20', '2018-03-20'),
	(14,3, 103, '2018-04-20', '2018-05-20'),
	(15,3, 104, '2018-06-20', '2018-07-20'),
	(16,3, 105, '2018-08-20', '2018-09-20'),
	(17,3, 106, '2018-10-20', '2018-11-20'),
	(18,4, 107, '2018-02-20', '2018-03-20'),
	(19,4, 100, '2018-04-20', '2018-05-20'),
	(20,4, 101, '2018-08-20', '2018-07-20'),
	(7,4, 102, '2018-10-20', '2018-11-20'),

	(2,1, 100, '2018-02-20', '2018-03-20'),
	(3,1, 101, '2018-04-20', '2018-05-20'),
	(4,1, 102, '2018-06-20', '2018-07-20'),
	(5,1, 103, '2018-08-20', '2018-09-20'),
	(6,1, 104, '2018-10-20', '2018-11-20'),
	(7,1, 105, '2018-02-20', '2018-03-20'),
	(8,2, 106, '2018-04-20', '2018-05-20'),
	(9,2, 107, '2018-06-20', '2018-07-20'),
	(10,2, 100, '2018-08-20', '2018-09-20'),
	(11,2, 101, '2018-10-20', '2018-11-20'),
	(12,3, 102, '2018-02-20', '2018-03-20'),
	(13,3, 103, '2018-04-20', '2018-05-20'),
	(14,3, 104, '2018-06-20', '2018-07-20'),
	(15,3, 105, '2018-08-20', '2018-09-20'),
	(16,3, 106, '2018-10-20', '2018-11-20'),
	(17,4, 107, '2018-02-20', '2018-03-20'),
	(18,4, 100, '2018-04-20', '2018-05-20'),
	(19,4, 101, '2018-08-20', '2018-07-20'),
	(20,4, 102, '2018-10-20', '2018-11-20'),
	(1,4, 102, '2018-12-20', '2018-12-29'),
	(2,4, 102, '2018-12-20', '2018-12-29'),
	
	(1,1, 100, '2018-02-25', '2018-03-25'),
	(2,1, 101, '2018-04-25', '2018-05-25'),
	(3,1, 102, '2018-06-25', '2018-07-25'),
	(4,1, 103, '2018-08-25', '2018-09-25'),
	(5,1, 104, '2018-10-25', '2018-11-25'),
	(6,2, 105, '2018-02-25', '2018-03-25'),
	(7,2, 106, '2018-04-25', '2018-05-25'),
	(8,2, 107, '2018-06-25', '2018-07-25'),
	(9,2, 100, '2018-08-25', '2018-09-25'),
	(10,2, 101, '2018-10-25', '2018-11-25'),
	(11,3, 102, '2018-02-25', '2018-03-25'),
	(4, 2, 100, '2018-10-7','2018-11-7')

	;
	SELECT * FROM tbl_bookLoans
	
CREATE TABLE tbl_bookAuthors (
	bookAuthors_books_id INT NOT NULL FOREIGN KEY REFERENCES tbl_books(books_id),
	booksAuthors_AuthorName VARCHAR(50) NOT NULL
	);
	INSERT INTO tbl_bookAuthors
	(bookAuthors_books_id, booksAuthors_AuthorName)
	VALUES
	(1,'Danielle Steele'),
	(2,'Tom Clancy'),
	(3,'James Patterson'),
	(4,'Maxine Paetro'),
	(5,'Nora Roberts'),
	(6,'Stephen King'),
	(7,'Stephen King'),
	(8,'Kristin Hannah'),
	(9,'Kevin Kwan'),
	(10,'David Baldacci'),
	(11,'Penny Jordan'),
	(12,'Anne Golen'),
	(13,'Brandon Davis'),
	(14,'Sierra Sparling'),
	(15,'Corbin Burke'),
	(16,'Kyle Hirth'),
	(17,'Brnadon Null'),
	(18,'James Grey'),
	(19,'Calvin Spearing'),
	(20,'Tech Academy')
	;

	SELECT * FROM tbl_bookAuthors


	
CREATE TABLE tbl_bookCopies (
	bookCopies_books_id INT NOT NULL  FOREIGN KEY REFERENCES tbl_books(books_id),
	bookCopies_branch_id INT NOT NULL  FOREIGN KEY REFERENCES tbl_branch(branch_id),
	bookCopies_NumberOfCopies VARCHAR(50) NOT NULL
	);

	INSERT INTO tbl_bookCopies
	(bookCopies_books_id, bookCopies_branch_id, bookCopies_NumberOfCopies)
	VALUES
	(6,1,'5'),
	(7,1,'5'),
	(1,1,'5'),
	(2,1,'5'),
	(3,1,'5'),
	(4,1,'5'),
	(5,1,'5'),
	(8,1,'5'),
	(9,1,'5'),
	(10,1,'5'),
	
	(3,2,'7'),
	(12,2,'7'),
	(13,2,'7'),
	(14,2,'7'),
	(15,2,'7'),
	(16,2,'7'),
	(17,2,'7'),
	(18,2,'7'),
	(19,2,'7'),
	(20,2,'7'),

	(20,3,'9'),
	(19,3,'9'),
	(18,3,'9'),
	(17,3,'9'),
	(16,3,'9'),
	(15,3,'9'),
	(14,3,'9'),
	(13,3,'9'),
	(12,3,'9'),
	(11,3,'9'),

	(1,4,'9'),
	(2,4,'9'),
	(4,4,'9'),
	(6,4,'9'),
	(7,4,'9'),
	(8,4,'9'),
	(10,4,'9'),
	(3,4,'9'),
	(14,4,'9'),
	(17,4,'9')
	;

	SELECT * FROM tbl_bookCopies



/* Query #1 */

SELECT tbl_branch.branch_name, tbl_books.books_title, tbl_bookCopies.bookCopies_NumberOfCopies
FROM tbl_branch
INNER JOIN tbl_bookCopies ON tbl_branch.branch_id = tbl_bookCopies.bookCopies_branch_id
INNER JOIN tbl_books ON tbl_bookCopies.bookCopies_books_id= tbl_books.books_id
WHERE tbl_books.books_title = 'The Lost Tribe' AND branch_name = 'Sharpstown';


/* Query #2 */

SELECT tbl_branch.branch_name, tbl_books.books_title, tbl_bookCopies.bookCopies_NumberOfCopies
FROM tbl_branch
INNER JOIN tbl_bookCopies ON tbl_branch.branch_id = tbl_bookCopies.bookCopies_branch_id
INNER JOIN tbl_books ON tbl_bookCopies.bookCopies_books_id= tbl_books.books_id
WHERE tbl_books.books_title		= 'The Lost Tribe';

/* Query #3 */
SELECT tbl_borrower.borrower_Name
FROM tbl_borrower
FULL OUTER JOIN tbl_bookLoans ON tbl_bookLoans.bookLoans_CardNo = tbl_borrower.borrower_CardNo
WHERE tbl_bookLoans.bookLoans_CardNo = NULL



/* Query #4 */

SELECT tbl_borrower.borrower_Name, tbl_borrower.borrower_Address, tbl_books.books_title
FROM tbl_borrower
INNER JOIN tbl_bookLoans ON tbl_borrower.borrower_CardNo = tbl_bookLoans.bookLoans_CardNo
INNER JOIN tbl_books ON tbl_bookLoans.bookLoans_books_id = tbl_books.books_id
INNER JOIN tbl_branch ON tbl_bookloans.bookLoans_branch_id = tbl_branch.branch_id
WHERE tbl_branch.branch_name = 'Sharpstown' AND  tbl_bookLoans.bookLoans_DateDue = '2018-11-7' 


/* Query #5 */

SELECT count(*), tbl_branch.branch_name
FROM tbl_branch
INNER JOIN tbl_bookLoans ON tbl_branch.branch_id = tbl_bookLoans.bookLoans_branch_id
GROUP BY tbl_branch.branch_name



/* Query #6 */

SELECT COUNT (*) AS [Total Number of Books], tbl_borrower.borrower_Name, tbl_borrower.borrower_Address
FROM tbl_borrower
INNER JOIN tbl_bookLoans ON tbl_bookLoans.bookLoans_CardNo = tbl_borrower.borrower_CardNo

GROUP BY tbl_borrower.borrower_Name, tbl_borrower.borrower_Address

HAVING COUNT(*)>5;



/* Query #7 */

SELECT tbl_books.books_title, tbl_bookAuthors.booksAuthors_AuthorName, tbl_bookCopies.bookCopies_NumberOfCopies, tbl_branch.branch_name
FROM tbl_books
INNER JOIN tbl_bookCopies ON tbl_bookCopies.bookCopies_books_id = tbl_books.books_id
INNER JOIN tbl_branch ON tbl_branch.branch_id = tbl_bookCopies.bookCopies_branch_id
INNER JOIN tbl_bookAuthors on tbl_bookAuthors.bookAuthors_books_id = tbl_books.books_id
WHERE tbl_bookAuthors.booksAuthors_AuthorName = 'Stephen King' AND tbl_branch.branch_name = 'Central'

