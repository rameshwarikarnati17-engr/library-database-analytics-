create database library;
use library;
show tables;
alter table  publisher1 rename  to publisher;
-- -- Table: publisher
CREATE TABLE publisher (
    PublisherName VARCHAR(255) PRIMARY KEY,
    PublisherAddress TEXT,
    Phone VARCHAR(15)
);
select *from publisher;

insert into publisher values
('DAW Books','375 Hudson Street, New York, NY 10014','212-366-2000'),
('Viking','375 Hudson Street, New York, NY 10014','212-366-2000'),
('Signet Books','375 Hudson Street, New York, NY 10014','212-366-2000'),
('Chilton Book',null,null),
('George Allen & Unwin','83 Alexander Ln, Crows Nest NSW 2065, Australia','-8466'),
('Alfred A. Knopf','The Knopf Doubleday Group Domestic Rights, 1745 Broadway, New York, NY 10019','212-940-7390'),
('Bloomsbury','Bloomsbury Publishing Inc., 1385 Broadway, 5th Floor, New York, NY 10018','212-419-53000'),
('Shinchosa','Oga Bldg. 8, 2-5-4 Sarugaku-cho, Chiyoda-ku, Tokyo 101-0064 Japan','-12006'),
('Harper and Row','HarperCollins Publishers, 195 Broadway, New York, NY 10007','212-207-7000'),
('Pan Books','175 Fifth Avenue, New York, NY 10010','646-307-5745'),
('Chalto & Windus','375 Hudson Street, New York, NY 10014','212-366-2000'),
('Harcourt Brace Jovanovich','3 Park Ave, New York, NY 10016','212-420-5800'),
('W.W. Norton','W. W. Norton & Company, Inc., 500 Fifth Avenue, New York, New York 10110','212-354-5500'),
('Scholastic','557 Broadway, New York, NY 10012','800-724-6527'),
('Bantam','375 Hudson Street, New York, NY 10014','212-366-2000'),
('Picador USA','175 Fifth Avenue, New York, NY 10010','646-307-5745');

-- Table: books
drop table books;
CREATE TABLE books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255),
    PublisherName varchar(255) ,
    FOREIGN KEY (PublisherName) REFERENCES publisher(PublisherName)
);
select *from books;

insert into books values 
(1,'The Name of the Wind','DAW Books'),
(2,'It','Viking'),
(3,'The Green Mile','Signet Books'),
(4,'Dune','Chilton Book'),
(5,'The Hobbit','George Allen & Unwin'),
(6,'Eragon','Alfred A. Knopf'),
(7,'A Wise Mans Fear','DAW Books'),
(8,'Harry Potter and the Philosophers','Bloomsbury'),
(9,'Hard Boiled Wonderland and The End of the World','Shinchosa'),
(10,'The Giving Tree','Harper and Row'),
(11,'The Hitchhikers Guide to the Galaxy','Pan Books'),
(12,'Brave New World','Chalto & Windus'),
(13,'The Princess Bride','Harcourt Brace Jovanovich'),
(14,'Fight Club','W.W. Norton'),
(15,'Holes','Scholastic'),
(16,'Harry Potter and the Chamber of Secrets','Bloomsbury'),
(17,'Harry Potter and the Prisoner of Azkaban','Bloomsbury'),
(18,'The Fellowship of the Ring','George Allen & Unwin'),
(19,'A Game of Thrones','Bantam'),
(20,'The Lost Tribe','Picador USA');

-- Table: authors
CREATE TABLE authors (
    AuthorID INT auto_increment PRIMARY KEY  ,
    BookID INT,
    AuthorName VARCHAR(255),
    FOREIGN KEY (BookID) REFERENCES books(BookID)
);
select *from authors;

insert into authors (BookID ,AuthorName) values 
(1,'Patrick Rothfuss'),
(2,'Stephen King'),
(3,'Stephen King'),
(4,'Frank Herbert'),
(5,'J.R.R. Tolkien'),
(6,'Christopher Paolini'),
(6,'Patrick Rothfuss'),
(8,'J.K. Rowling'),
(9,'Haruki Murakami'),
(10,'Shel Silverstein'),
(11,'Douglas Adams'),
(12,'Aldous Huxley'),
(13,'William Goldman'),
(14,'Chuck Palahniuk'),
(15,'Louis Sachar'),
(16,'J.K. Rowling'),
(17,'J.K. Rowling'),
(18,'J.R.R. Tolkien'),
(19,'George R.R. Martin'),
(20,'Mark Lee');

-- Table: library_branch
CREATE TABLE library_branch (
    BranchID INT auto_increment PRIMARY KEY ,
    BranchName VARCHAR(255),
    BranchAddress TEXT
);
select *from library_branch;
insert into library_branch values 
(1,'Sharpstown','32 Corner Road'),
(2,'Central','491 3rd Street'),
(3,'Saline','40 State Street'),
(4,'Ann Arbor','101 South University');


-- Table: copies
CREATE TABLE copies (
    CopiesID INT auto_increment PRIMARY KEY ,
    BookID INT,
    BranchID INT,
    No_Of_Copies INT,
    FOREIGN KEY (BookID) REFERENCES books(BookID),
    FOREIGN KEY (BranchID) REFERENCES library_branch(BranchID)
);
select *from copies;

insert into copies (BookID,BranchID,No_Of_Copies ) values 
(1,1,5),
(2,1,5),
(3,1,5),
(4,1,5),
(5,1,5),
(6,1,5),
(7,1,5),
(8,1,5),
(9,1,5),
(10,1,5),
(11,1,5),
(12,1,5),
(13,1,5),
(14,1,5),
(15,1,5),
(16,1,5),
(17,1,5),
(18,1,5),
(19,1,5),
(20,1,5),
(1,2,5),
(2,2,5),
(3,2,5),
(4,2,5),
(5,2,5),
(6,2,5),
(7,2,5),
(8,2,5),
(9,2,5),
(10,2,5),
(11,2,5),
(12,2,5),
(13,2,5),
(14,2,5),
(15,2,5),
(16,2,5),
(17,2,5),
(18,2,5),
(19,2,5),
(20,2,5),
(1,3,5),
(2,3,5),
(3,3,5),
(4,3,5),
(5,3,5),
(6,3,5),
(7,3,5),
(8,3,5),
(9,3,5),
(10,3,5),
(11,3,5),
(12,3,5),
(13,3,5),
(14,3,5),
(15,3,5),
(16,3,5),
(17,3,5),
(18,3,5),
(19,3,5),
(20,3,5),
(1,4,5),
(2,4,5),
(3,4,5),
(4,4,5),
(5,4,5),
(6,4,5),
(7,4,5),
(8,4,5),
(9,4,5),
(10,4,5),
(11,4,5),
(12,4,5),
(13,4,5),
(14,4,5),
(15,4,5),
(16,4,5),
(17,4,5),
(18,4,5),
(19,4,5),
(20,4,5);

-- Table: borrower
CREATE TABLE borrower (
   Borrower_CardNo INT PRIMARY KEY,
    Borrower_Name VARCHAR(255),
    Borrower_Address TEXT,
    Borrower_Phone VARCHAR(15)
);

select *from borrower;
insert into borrower values
(100,'Joe Smith','1321 4th Street, New York, NY 10014','212-312-1234'),
(101,'Jane Smith','1321 4th Street, New York, NY 10014','212-931-4124'),
(102,'Tom Li','981 Main Street, Ann Arbor, MI 48104','734-902-7455'),
(103,'Angela Thompson','2212 Green Avenue, Ann Arbor, MI 48104','313-591-2122'),
(104,'Harry Emnace','121 Park Drive, Ann Arbor, MI 48104','412-512-5522'),
(105,'Tom Haverford','23 75th Street, New York, NY 10014','212-631-3418'),
(106,'Haley Jackson','231 52nd Avenue New York, NY 10014','212-419-9935'),
(107,'Michael Horford','653 Glen Avenue, Ann Arbor, MI 48104','734-998-1513');

-- Table: book_loans
CREATE TABLE book_loans (
    LoansID INT auto_increment PRIMARY KEY ,
    BookID INT,
    BranchID INT,
    Borrower_CardNo INT,
    DateOut varchar(20),
    DueDate varchar(20),
    FOREIGN KEY (BookID) REFERENCES books(BookID),
    FOREIGN KEY (BranchID) REFERENCES library_branch(BranchID),
    FOREIGN KEY (Borrower_CardNo) REFERENCES borrower(Borrower_CardNo)
);
			
select *from book_loans;
alter table book_loans drop column DateOut ;
alter table book_loans drop column DueDate ;
alter table book_loans add column DateOut1 date;
alter table book_loans add column DueDate1 date;
update book_loans set DateOut1 = str_to_date(DateOut,'%m/%d/%y');
update book_loans set DueDate1 = str_to_date(DueDate,'%m/%d/%y');
insert into book_loans(BookID,BranchID,Borrower_CardNo,DateOut,DueDate) values
(1,1,100,'1/1/18','2/2/18'),
(2,1,100,'1/1/18','2/2/18'),
(3,1,100,'1/1/18','2/2/18'),
(4,1,100,'1/1/18','2/2/18'),
(5,1,102,'1/3/18','2/3/18'),
(6,1,102,'1/3/18','2/3/18'),
(7,1,102,'1/3/18','2/3/18'),
(8,1,102,'1/3/18','2/3/18'),
(9,1,102,'1/3/18','2/3/18'),
(11,1,102,'1/3/18','2/3/18'),
(12,2,105,'12/12/17','1/12/18'),
(10,2,105,'12/12/17','1/12/17'),
(20,2,105,'2/3/18','3/3/18'),
(18,2,105,'1/5/18','2/5/18'),
(19,2,105,'1/5/18','2/5/18'),
(19,2,100,'1/3/18','2/3/18'),
(11,2,106,'1/7/18','2/7/18'),
(1,2,106,'1/7/18','2/7/18'),
(2,2,100,'1/7/18','2/7/18'),
(3,2,100,'1/7/18','2/7/18'),
(5,2,105,'12/12/17','1/12/18'),
(4,3,103,'1/9/18','2/9/18'),
(7,3,102,'1/3/18','2/3/18'),
(17,3,102,'1/3/18','2/3/18'),
(16,3,104,'1/3/18','2/3/18'),
(15,3,104,'1/3/18','2/3/18'),
(15,3,107,'1/3/18','2/3/18'),
(14,3,104,'1/3/18','2/3/18'),
(13,3,107,'1/3/18','2/3/18'),
(13,3,102,'1/3/18','2/3/18'),
(19,3,102,'12/12/17','1/12/18'),
(20,4,103,'1/3/18','2/3/18'),
(1,4,102,'1/12/18','2/12/18'),
(3,4,107,'1/3/18','2/3/18'),
(18,4,107,'1/3/18','2/3/18'),
(12,4,102,'1/4/18','2/4/18'),
(11,4,103,'1/15/18','2/15/18'),
(9,4,103,'1/15/18','2/15/18'),
(7,4,107,'1/1/18','2/2/18'),
(4,4,103,'1/1/18','2/2/18'),
(1,4,103,'2/2/17','3/2/18'),
(20,4,103,'1/3/18','2/3/18'),
(1,4,102,'1/12/18','2/12/18'),
(3,4,107,'1/13/18','2/13/18'),
(18,4,107,'1/13/18','2/13/18'),
(12,4,102,'1/14/18','2/14/18'),
(11,4,103,'1/15/18','2/15/18'),
(9,4,103,'1/15/18','2/15/18'),
(7,4,107,'1/19/18','2/19/18'),
(4,4,103,'1/19/18','2/19/18'),
(1,4,103,'1/22/18','2/22/18');

show tables;
select *from authors;
select *from book_loans;
select *from books;
select *from borrower;
select *from copies;
select *from library_branch;
select *from publisher;

-- Task Questions

-- How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?
select c.No_Of_Copies,
       b.Title,
       l.BranchName
       from copies c 
       join books b on b.bookid=c.bookid
       join library_branch l on l.branchid=c.branchid where title="The Lost Tribe" and BranchName='Sharpstown' ;

-- How many copies of the book titled "The Lost Tribe" are owned by each library branch?
select c.No_Of_Copies,
       b.Title,
       l.BranchName
       from copies c 
       join books b on b.bookid=c.bookid
       join library_branch l on l.branchid=c.branchid where title="The Lost Tribe";
       
-- Retrieve the names of all borrowers who do not have any books checked out.
select b.Borrower_CardNo, Borrower_Name,
       bl.LoansID,bl.BookID
from borrower b left join book_loans bl on bl.Borrower_CardNo=b.Borrower_CardNo where bl.loansid is null;

-- For each book that is loaned out from the "Sharpstown" branch and whose DueDate is 2/3/18, 
select str_to_date('2/3/18','%m/%d/%y');
-- retrieve the book title, the borrower's name, and the borrower's address. 
select l.DueDate1,
       b.Borrower_Name,b.Borrower_Address,
       br.BranchName, 
       bo.Title
       from book_loans l
       join borrower b on b.Borrower_CardNo=l.Borrower_CardNo
       join library_branch br on br.BranchID=l.BranchID
       join books bo on bo.BookID=l.BookID where BranchName='Sharpstown' and DueDate1='2018-02-03' ;


-- For each library branch, retrieve the branch name and the total number of books loaned out from that branch.

select br.BranchID,br.BranchName, 
       count(l.LoansID) as  total_no_books_loaned_out
from library_branch br 
join book_loans l on l.BranchID=br.BranchID group by (branchid);

-- Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out.
select b.Borrower_Name,b.Borrower_Address ,
	count(l.LoansID) as no_of_books_lentout
from borrower b
join book_loans l on l.Borrower_CardNo=b.Borrower_CardNo group by b.Borrower_Name,b.Borrower_Address having no_of_books_lentout>5 ;

-- For each book authored by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central".
select  c.No_Of_Copies,
        a.AuthorName,
        b.Title ,
        br.BranchName
       from copies c 
       join authors a on a.bookid=c.bookid
       join books b on b.bookid = c.bookid
       join library_branch br on br.BranchID=c.BranchID
       where AuthorName="Stephen King" and BranchName='Central';
       
