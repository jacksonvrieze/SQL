--1.      List the names of authors who have authored more than 3 books
select AuthorName
from Book_Authors
group by AuthorName
having count(AuthorName)>3;






--2.      Print the names of borrowers whose phone number starts with area code “414”.
select Name, Phone
from Borrower
where REGEXP_LIKE(PHONE,'414-...-');


--3.      Retrieve the names of borrowers who have never checked out any books.
select b.Name
from  BORROWER b
where not exists (select * from Book_Loans l where l.CardNo = b.CardNo);



--4.      List the titles of books written by “Ringer” author?
select b.Title, a.AuthorName
from Book b, Book_Authors a
where b.BookId = a.BookId and a.AuthorName = 'Ringer';


--5.      List the name(s) of borrowers, who have loaned books
          --ONLY published by “New Moon Books” publisher?
          
          
          

select  Distinct a.Name
from Book_Loans b, Borrower a
where b.CardNo= a.CardNo and b.CardNo not in (select l.CardNo
from Book b, Book_Loans l
where b.BookId = l.BookId AND NOT b.PUBLISHER = 'New Moon Books');







--6.      How many copies of the book titled “But Is It User Friendly?” are owned by each library branch?



select lb.BranchName, b.Title, c.No_Of_Copies
from Library_Branch lb, Book_Copies c, Book b
where b.BookId = c.BookId and c.BranchId = lb.BranchId and b.Title = 'But Is It User Friendly?';



--7.      List the book titles co-authored by more than 2 people. CHECK
select b.Title
from Book_Authors a, Book b
where a.BookId = b.BookId
group by a.BookId, b.Title
having count(a.BookId)> 2;




--8.      Print the names of borrowers who have borrowed the highest number of books.
select bl.CardNo,b.Name
from Book_Loans bl, Borrower b
where bl.CardNo = b.CardNo 
group by bl.CardNo,b.Name
having count(bl.CardNo)>= (select MAX(mycount)as myMax
from (select CardNo, Count(CardNo) mycount
        from Book_Loans
        group by CardNo));








--9.      Print the names of borrowers who have not yet returned the books.

select Distinct b.Name, b.CardNo
from Book_Loans l, Borrower b
where l.CardNo = b.CardNo and l.DateIn Is NULL;


--10.  Print the BookId, book title and average rating received for each book. 
--Shows the results sorted in decreasing order of average rating received.
--Do not show books below an average rating of 3.0

select b.BookId,a.Goodrating, b.Title
from Book b, (select avg(l.rating) as Goodrating, l.BookId
            from Book_Loans l
            group by l.BookId) a
where b.BookId = a.BookId and a.Goodrating>=3.0
Order by a.Goodrating desc;



--11.  For each book that is loaned out from the "Sharpstown" branch 
--and which are not yet returned to the library, retrieve the book title,
--the borrower's name, and the borrower's address.

select lb.BranchName, lb.BRanchId,l.BOOKID, b.Name, b.Address
from Library_Branch lb, Book_Loans l, Borrower b
where   lb.BranchId = l.BranchId and l.CardNo = b.CARDNO 
        and lb.BranchName = 'Sharpstown' and l.DateIn Is Null;




--12.  Print the total number of borrowers in the database.
select count(*) as TotalBorrowers
from Borrower;

--13.  Print the names of tough reviewers. Tough reviewers are the borrowers who have given 
--the lowest overall rating value that a book has for each of the books they have rated.
SELECT Distinct b.Name FROM Borrower b, Book_Loans x
WHERE NOT EXISTS
(
   SELECT * FROM  ((select CardNo, BookId, Rating
                    from Book_Loans bl)
                    MINUS
                    (select l.CardNo, l.BookId,l.rating
                    from Book_Loans l, (select Min(x.rating)as rrating,x.BookId from Book_Loans x group by x.BookId) r
                    where l.BookId = r.BookId And l.rating = r.rrating)) a
   WHERE b.CardNo = a.CardNo
) AND b.CardNo = x.CardNo;


--14.  Print the names of borrowers and the count of number of books that they have reviewed. 
--Shows the results sorted in decreasing order of number of books reviewed. 
--Display the count as zero for the borrowers who have not reviewed any book.

select b.CardNo, count(l.rating)
from Borrower b LEFT OUTER JOIN Book_Loans l on b.CardNo = l.CardNo
group by b.CardNo
Order by count(l.rating) desc;


--group by l.CardNo, l.rating;

select CardNo
from Borrower;


--15.  Print the names and addresses of all publishers in the database.
select Name, Address
from Publisher;




select *
from Borrower;

SELECT borrower_seq.CURRVAL FROM dual;

select * 
from Book_Loans;
Select Title, Count(*) From Book where BookId =1111;

Select DueDate from Book_Loans where CardNo = 12 and BookId = 1035;
