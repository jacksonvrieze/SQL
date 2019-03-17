DROP TABLE PUBLISHER CASCADE CONSTRAINTS;
CREATE TABLE PUBLISHER (
  name    varchar2(25) primary key,
  address  varchar2(50),
  phone    varchar2(12)
);

DROP TABLE BOOK CASCADE CONSTRAINTS;
CREATE TABLE BOOK (
BookId  Decimal(20,1) primary key,
Title   varchar2(30) not null,
PublisherName   varchar2(15),
Constraint Whole_Number_Book_Book check(trunc(BookId) = BookId),
foreign key (PublisherName) references PUBLISHER(name)
);

DROP TABLE Book_AUTHORS CASCADE CONSTRAINTS;
CREATE TABLE BOOK_AUTHORS(
BookId Decimal(20,1),
AuthorName varchar2(30),
foreign key(BookId) references BOOK(BookId),
Constraint Whole_Number_Book_Book_Author check(trunc(BookId) = BookId),
primary key (BookId,AuthorName)
);


DROP TABLE LIBRARY_BRANCH CASCADE CONSTRAINTS;
CREATE TABLE LIBRARY_BRANCH(
BranchId    Decimal(20,1) primary key,
BranchName  varchar2(30) not null,
Address     varchar2(50),
Constraint Whole_Number_Branch_Library check(trunc(BranchId) = BranchId)
);

DROP TABLE BORROWER CASCADE CONSTRAINTS;
CREATE TABLE BORROWER(
CardNo  DECIMAL(20,1) primary key,
Name    varchar2(30) not null,
Address varchar2(20),
Phone   varchar2(12),
Constraint Whole_Number_Card_Borrower check(trunc(CardNo) = CardNo)
);


DROP TABLE BOOK_LOANS CASCADE CONSTRAINTS;
CREATE TABLE BOOK_LOANS(
BookId      Decimal(20,1),
BranchId     Decimal(20,1),
CardNo       Decimal(20,1),
foreign key (BookId) references BOOK(BookId),
foreign key (BranchId) references LIBRARY_BRANCH(BranchId),
foreign key (CardNo) references BORROWER(CardNo),
primary key(BookId,BranchId,CardNo),
DateOut     TIMESTAMP,
DueDate     TIMESTAMP,
CONSTRAINT checkDate Check (DueDate = ADD_MONTHS(DateOut,1)),
Constraint Whole_Number_Book_Loan check(trunc(BookId) = BookId),
Constraint Whole_Number_Branch_Loan check(trunc(BranchId) = BranchId),
Constraint Whole_Number_Card_Loan check(trunc(CardNo) = CardNo)

--DueDate AS DATEADD(day,30,DateOut)
--SELECT DATEADD (day, 10, '2000-01-05 00:05:00.000');
);





DROP TABLE BOOKS_COPIES CASCADE CONSTRAINTS;
CREATE TABLE BOOKS_COPIES(
BookId      Decimal(20,1),
BranchId    Decimal(20,1),
No_Of_Copies    number(2) CHECK (No_Of_Copies>=0),
foreign key (BookId) references BOOK(BookId),
foreign key (BranchId) references LIBRARY_BRANCH(BranchId),
primary key(BookId,BranchId),
Constraint Whole_Number_Book_Book_Copies check(trunc(BookId) = BookId),
Constraint Whole_Number_Branch_Book_Copies check(trunc(BranchId) = BranchId)

);