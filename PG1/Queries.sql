-- Retrieve details of all books in the library – id, title, name of publisher, authors, number of copies in each branch, etc.
SELECT LB.BRANCH_NAME, B.BOOK_ID,TITLE,
    PUBLISHER_NAME,AUTHOR_NAME, NO_OF_COPIES
    FROM BOOK B, BOOK_AUTHORS BA, BOOK_COPIES BC, LIBRARY_BRANCH LB 
    WHERE B.BOOK_ID = BA.BOOK_ID AND
    BA.BOOK_ID = BC.BOOK_ID AND
    BC.BRANCH_ID = LB.BRANCH_ID;

-- Get the particulars of borrowers who have borrowed more than 3 books, but from Jan 2017 to Jun 2017.
SELECT CARD_NO
    FROM BOOK_LENDING
    WHERE DATE_OUT BETWEEN '01-JAN-2017' AND '30-JUN-2017' GROUP BY CARD_NO
    HAVING COUNT(*) > 3;

-- Delete a book in BOOK table. Update the contents of other tables to reflect this data manipulation operation.
DELETE FROM BOOK
    WHERE BOOK_ID = '3333';


-- Partition the BOOK table based on year of publication. Demonstrate its working with a simple query.
CREATE VIEW V_PUBLICATION AS SELECT PUB_YEAR FROM BOOK;
    
SELECT * FROM V_PUBLICATIONS;

-- Create a view of all books and its number of copies that are currently available in the Library.
CREATE VIEW BOOKS_AVAILABLE AS
    SELECT B.BOOK_ID, B.TITLE, C.NO_OF_COPIES
    FROM LIBRARY_BRANCH L, BOOK B, BOOK_COPIES C 
    WHERE B.BOOK_ID = C.BOOK_ID AND L.BRANCH_ID=C.BRANCH_ID;
    
SELECT * FROM BOOK;
SELECT * FROM BOOK_AUTHORS;
SELECT * FROM PUBLISHER;
SELECT * FROM BOOK_COPIES;
SELECT * FROM BOOK_LENDING;
SELECT * FROM LIBRARY_BRANCH;

-- views
SELECT * FROM V_PUBLICATIONS;
SELECT * FROM BOOKS_AVAILABLE;
