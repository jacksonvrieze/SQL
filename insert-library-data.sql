
 -- name    varchar2(25) primary key,
 -- address  varchar2(50),
--  phone    varchar2(12)
Insert Into PUBLISHER VALUES('Lion Gates', '123 First Ave.', '123-123-1234');
Insert Into PUBLISHER VALUES('Happy Helper', 'McDonald drive', '000-000-0000');
Insert Into PUBLISHER VALUES('Club Pengiun', '30303 Antartic circle', '999-999-9999');
Insert Into PUBLISHER VALUES('Hello Kitty', '0033 Meow dr.', '888-888-8888');
Insert Into PUBLISHER VALUES('Doggo Inc.', '900 Woof Woof plaza', '777-777-7777');
Insert Into PUBLISHER VALUES('Nerd Publishing', '1001000111 dr.', '101-111-0001');
Insert Into PUBLISHER VALUES('Plagarism Inc.', '1888 Stealer court', '661-661-6616');
Insert Into PUBLISHER VALUES('Twenty Nine Century', '29 Century Street', '212-121-2121');
Insert Into PUBLISHER VALUES('Blah Blah Blah', '777 didnt write it street', '222-222-2222');
Insert Into PUBLISHER VALUES('stupid writer', 'haha 21st Ave.', '333-333-3333');
Insert Into PUBLISHER VALUES('Elephant in the room', 'Hidden Leaf 122 harborview', '857-411-9090');

--test cases for inserting into the PUBLISHER table
Insert Into PUBLISHER VALUES(null, '6789 red tree lane', null);
Insert Into PUBLISHER VALUES('Fake Pub', null, null);


Insert INTO BOOK VALUES(00000001, 'To Killl a MockingBird', 'Lion Gates');
Insert INTO BOOK VALUES(00000020, 'Hello World', 'stupid writer');
Insert INTO BOOK VALUES(00000300, 'Introduction to Economics', 'Blah Blah Blah');
Insert INTO BOOK VALUES(00004000, 'The Moon landing was fake', 'Plagarism Inc.');
Insert INTO BOOK VALUES(00050000, 'Hunger Games', 'Nerd Publishing');
Insert INTO BOOK VALUES(00600000, 'Naruto', 'Doggo Inc.');
Insert INTO BOOK VALUES(07000000, 'World War Two', 'Doggo Inc.');
Insert INTO BOOK VALUES(80000000, 'Catcher in the rye', 'Hello Kitty');
Insert INTO BOOK VALUES(00000009, 'Charlets Web', 'Lion Gates');
Insert INTO BOOK VALUES(11111111, 'Mountain Biking 101', 'Blah Blah Blah');
Insert INTO BOOK VALUES(2222222, 'Yosemite National Park Guide', 'Happy Helper');
Insert INTO BOOK VALUES(33333344, 'Batman vs. Superman', 'Lion Gates');
Insert INTO BOOK VALUES(444444444, 'Marley and Me', 'stupid writer');

--Test cases for BOOK Table
Insert Into BOOK VALUES(1244.3, 'me','stupid writer');
Insert Into BOOK VALUES(1244, null,'stupid writer');

--Insert Statments for Book_Author Table
Insert INTO BOOK_AUTHORS VALUES(00000001, 'Dr.Seuss');
Insert INTO BOOK_AUTHORS VALUES(00000020, 'J.K.Rowling');
Insert INTO BOOK_AUTHORS VALUES(00000300, 'Mark Twain');
Insert INTO BOOK_AUTHORS VALUES(00004000, 'C.S. Lewis');
Insert INTO BOOK_AUTHORS VALUES(00050000, 'Mary Ann Evans');
Insert INTO BOOK_AUTHORS VALUES(00600000, 'Ernest Hemingway');
Insert INTO BOOK_AUTHORS VALUES(07000000, 'Ayn Rand');
Insert INTO BOOK_AUTHORS VALUES(80000000, 'Anne Rice');
Insert INTO BOOK_AUTHORS VALUES(00000009, 'J.R.R Tolkien');
Insert INTO BOOK_AUTHORS VALUES(11111111, 'Lewis Carroll');
Insert INTO BOOK_AUTHORS VALUES(2222222, 'Franz Kafka');
Insert INTO BOOK_AUTHORS VALUES(33333344, 'Isaac Asimov');
Insert INTO BOOK_AUTHORS VALUES(444444444, 'Edgar Allan Poe');


--test cases for BOOK_AUTHORS
Insert INTO BOOK_AUTHORS VALUES(null, 'Dr.Seuss');
Insert INTO BOOK_AUTHORS VALUES(00000001, null);
Insert INTO BOOK_AUTHORS VALUES(00234352, 'Dr.Seuss');



--Insert value for Library branch
Insert INTO LIBRARY_BRANCH VALUES(12345, 'Book Mark Library','1630 Grasselli Street');
Insert INTO LIBRARY_BRANCH VALUES(00001, 'Chimera Library','4359 Walnut Hill Drive');
Insert INTO LIBRARY_BRANCH VALUES(98765,'Central Park Library', '4229 Randall Drive');
Insert INTO LIBRARY_BRANCH VALUES(24680, 'Pursuit Library','1630 Grasselli Street');
Insert INTO LIBRARY_BRANCH VALUES(11111, 'Reticence Bilbiotheca','1630 Grasselli Street');
Insert INTO LIBRARY_BRANCH VALUES(13579, 'Probe Library','4481 Primrose Lane');
Insert INTO LIBRARY_BRANCH VALUES(50000, 'Probe Library','977 Oliver Street');
Insert INTO LIBRARY_BRANCH VALUES(80000, 'Grand State Atheneum','337 Mapleview Drive');
Insert INTO LIBRARY_BRANCH VALUES(77777, 'Central Park Library','2159 Apple Lane');
Insert INTO LIBRARY_BRANCH VALUES(55123, 'Revelation Library','1826 Werninger Street');
Insert INTO LIBRARY_BRANCH VALUES(54601, 'Daydream Library','3061 Post Avenue');

--test cases for LIBRARY_BRANCH
Insert INTO LIBRARY_BRANCH VALUES(54601, null,'3061 Post Avenue');
Insert INTO LIBRARY_BRANCH VALUES(54601.3, 'Daydream Library','3061 Post Avenue');
Insert INTO LIBRARY_BRANCH VALUES(54601, 'Daydream Two Library',null);

--INSERT VALUES FOR BORROWERS TABLE
--CardNo  number(20) primary key,
--Name    varchar2(30) not null,
--Address varchar2(20),
--Phone   varchar2(12)


Insert INTO BORROWER VALUES(000000000, 'Tim T. Lanning','227 Oliver Street','817-299-2460');
Insert INTO BORROWER VALUES(001200000, 'Nika Howard','650 Diane Street','805-372-9858');
Insert INTO BORROWER VALUES(002859293, 'Jackson A. Micheal','1904 Chicago Avenue','559-622-5443');
Insert INTO BORROWER VALUES(100023452, 'Thomas Jefferson','291 Wyatt Street','561-506-9219');
Insert INTO BORROWER VALUES(582003473, 'Lincoln L. Vrieze','2492 County Line Rd','727-820-9188');
Insert INTO BORROWER VALUES(902482920, 'Justin J. Sorenson','1633 Smith Road','770-909-9989');
Insert INTO BORROWER VALUES(000741930, 'Michael D. Dimauro','652 Sugar Camp Road','507-639-9435');
Insert INTO BORROWER VALUES(099302849, 'Michael D. Dimauro','652 Sugar Camp Road','507-639-9435');
Insert INTO BORROWER VALUES(000493728, 'Jennifer A. Cheek','288 Cheshire Road','203-358-5375');
Insert INTO BORROWER VALUES(888392029, 'Tyler Z. Cheek','288 Cheshire Road','203-667-7208');
Insert INTO BORROWER VALUES(373901039, 'Tim T. Lanning','1350 Libby Street','310-238-1706');
Insert INTO BORROWER VALUES(001334210, 'Logan W. Fulwiler','4914 Euclid Avenue','805-290-7720');

--test cases for BORROWER
Insert INTO BORROWER VALUES(null, 'Logan W. Fulwiler','4914 Euclid Avenue',null);
Insert INTO BORROWER VALUES(0013342196.7, 'Logan W. Fulwiler','4914 Euclid Avenue','805-290-7720');
Insert INTO BORROWER VALUES(001334210, null,'4914 Euclid Avenue','805-290-7720');


--INSERT VALUES FOR BOOK_LOANS TABLE
--BookId      number(20),
--BranchId     number(20),
--CardNo       number(20),
--foreign key (BookId) references BOOK(BookId),
--foreign key (BranchId) references LIBRARY_BRANCH(BranchId),
--foreign key (CardNo) references BORROWER(CardNo),
--primary key(BookId,BranchId,CardNo),
--DateOut     TIMESTAMP,
--DueDate     TIMESTAMP 


Insert INTO BOOK_LOANS VALUES(444444444,80000,001334210,timestamp '2017-02-12 02:30:23',timestamp '2017-03-12 02:30:23');
Insert INTO BOOK_LOANS VALUES(00000001,11111,099302849,timestamp '2016-12-12 05:30:23',timestamp '2017-01-12 05:30:23');
Insert INTO BOOK_LOANS VALUES(00000020,12345,000000000,timestamp '2017-05-06 08:30:23',timestamp '2017-06-06 08:30:23');
Insert INTO BOOK_LOANS VALUES(33333344,54601,888392029,timestamp '2010-01-28 01:30:23',timestamp '2010-02-28 01:30:23');
Insert INTO BOOK_LOANS VALUES(2222222,55123,373901039,timestamp '2018-04-12 01:30:23',timestamp '2018-05-12 01:30:23');
Insert INTO BOOK_LOANS VALUES(00000001,77777,001200000,timestamp '2018-07-12 02:30:23',timestamp '2018-08-12 02:30:23');
Insert INTO BOOK_LOANS VALUES(00000020,11111,001334210,timestamp '2013-11-01 06:27:45',timestamp '2013-12-01 06:27:45');
Insert INTO BOOK_LOANS VALUES(80000000,54601,001334210,timestamp '2017-03-05 02:30:23',timestamp '2017-04-05 02:30:23');
Insert INTO BOOK_LOANS VALUES(00000009,50000,373901039,timestamp '2017-10-29 15:20:20',timestamp '2017-11-29 15:20:20');
Insert INTO BOOK_LOANS VALUES(2222222,11111,099302849,timestamp '2017-06-17 02:30:23',timestamp '2017-07-17 02:30:23');

--Test Cases For BOOK_LOANS
Insert INTO BOOK_LOANS VALUES(22244422,11111,099302849,timestamp '2017-06-17 02:30:23',timestamp '2017-07-17 02:30:23');
Insert INTO BOOK_LOANS VALUES(2222222,112321,099302849,timestamp '2017-06-17 02:30:23',timestamp '2017-07-17 02:30:23');
Insert INTO BOOK_LOANS VALUES(2222222,11111,0992849,timestamp '2017-06-17 02:30:23',timestamp '2017-07-17 02:30:23');
Insert INTO BOOK_LOANS VALUES(2222222,11111,099302849,timestamp '2017-06-17 02:30:23',timestamp '2017-07-23 02:30:23');
Insert INTO BOOK_LOANS VALUES(2222222,11111,099302849,timestamp '2017-06-17 02:30:23',timestamp '2017-07-19 02:30:23');
Insert INTO BOOK_LOANS VALUES(2222222,11111,099302849,timestamp '2017-06-17 02:30:23',timestamp '2017-07-16 02:30:23');



--INSERT INTO BOOK_COPIES
--BookId      number(20),
--BranchId    number(20),
--No_Of_Copies    number(2) CHECK (No_Of_Copies>=0),
--foreign key (BookId) references BOOK(BookId),
--foreign key (BranchId) references LIBRARY_BRANCH(BranchId),
--primary key(BookId,BranchId)

INSERT INTO BOOKS_COPIES VALUES(00000001,11111,2);
INSERT INTO BOOKS_COPIES VALUES(00000001,77777,4);
INSERT INTO BOOKS_COPIES VALUES(00000001,12345,3);
INSERT INTO BOOKS_COPIES VALUES(00000001,98765,0);
INSERT INTO BOOKS_COPIES VALUES(00000001,80000,1);

INSERT INTO BOOKS_COPIES VALUES(00000020,12345,2);
INSERT INTO BOOKS_COPIES VALUES(00000020,11111,8);
INSERT INTO BOOKS_COPIES VALUES(00000020,98765,0);
INSERT INTO BOOKS_COPIES VALUES(00000020,55123,0);
INSERT INTO BOOKS_COPIES VALUES(00000020,54601,1);

INSERT INTO BOOKS_COPIES VALUES(00000300,00001, 1);
INSERT INTO BOOKS_COPIES VALUES(00000300,12345,3);
INSERT INTO BOOKS_COPIES VALUES(00000300,80000,5);
INSERT INTO BOOKS_COPIES VALUES(00000300,54601,1);
INSERT INTO BOOKS_COPIES VALUES(00000300,11111,0);

INSERT INTO BOOKS_COPIES VALUES(00004000,13579,7);
INSERT INTO BOOKS_COPIES VALUES(00004000,77777,2);
INSERT INTO BOOKS_COPIES VALUES(00004000,55123,1);
INSERT INTO BOOKS_COPIES VALUES(00004000,98765,1);

INSERT INTO BOOKS_COPIES VALUES(00050000,77777,3);

INSERT INTO BOOKS_COPIES VALUES(00600000,24680,4);
INSERT INTO BOOKS_COPIES VALUES(00600000,50000,2);

INSERT INTO BOOKS_COPIES VALUES(07000000,50000,2);
INSERT INTO BOOKS_COPIES VALUES(07000000,24680,3);

INSERT INTO BOOKS_COPIES VALUES(80000000,54601,1);
INSERT INTO BOOKS_COPIES VALUES(80000000,77777,1);

INSERT INTO BOOKS_COPIES VALUES(00000009,50000,2);
INSERT INTO BOOKS_COPIES VALUES(00000009,00001,3);

INSERT INTO BOOKS_COPIES VALUES(11111111,80000,1);
INSERT INTO BOOKS_COPIES VALUES(11111111,12345,2);

INSERT INTO BOOKS_COPIES VALUES(2222222,55123,1);
INSERT INTO BOOKS_COPIES VALUES(2222222,11111,1);

INSERT INTO BOOKS_COPIES VALUES(33333344,54601,5);
INSERT INTO BOOKS_COPIES VALUES(33333344,98765,3);

INSERT INTO BOOKS_COPIES VALUES(444444444,80000,4);
INSERT INTO BOOKS_COPIES VALUES(444444444,24680,9);
INSERT INTO BOOKS_COPIES VALUES(444444444,12345,8);

--Test Cases For BOOK_COPIES
INSERT INTO BOOKS_COPIES VALUES(44444,12345,8);
INSERT INTO BOOKS_COPIES VALUES(444444444.4,12345,8);
INSERT INTO BOOKS_COPIES VALUES(444444444.0,12345,8);
INSERT INTO BOOKS_COPIES VALUES(444444444,12345,8);


--12345
--00001, 
--98765
--24680
--11111
--13579
--50000
--80000
--77777
--55123
--54601,

