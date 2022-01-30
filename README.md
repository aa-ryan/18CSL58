# 18CSL58


* Consider the following schema for a Library Database: <br>
	BOOK (Book_id, Title, Publisher_Name, Pub_Year)</br>
	BOOK_AUTHORS (Book_id, Author_Name)</br>
	PUBLISHER (Name, Address, Phone)</br>
	BOOK_COPIES (Book_id, Branch_id, No-of_Copies) </br>
	BOOK_LENDING (Book_id, Branch_id, Card_No, Date_Out, Due_Date) </br>
	LIBRARY_BRANCH (Branch_id, Branch_Name, Address)</br>
	Write SQL queries to
	1. Retrieve details of all books in the library – id, title, name of publisher, authors,
	number of copies in each branch, etc.
	2. Get the particulars of borrowers who have borrowed more than 3 books, but from Jan
	2017 to Jun 2017
	3. Delete a book in BOOK table. Update the contents of other tables to reflect this data
	manipulation operation.
	4. Partition the BOOK table based on year of publication. Demonstrate its working with a
	simple query.
	5. Create a view of all books and its number of copies that are currently available in the
	Library.
	------

* Consider the following schema for Order Database:<br>
	SALESMAN (Salesman_id, Name, City, Commission)</br>
	CUSTOMER (Customer_id, Cust_Name, City, Grade, Salesman_id) </br>
	ORDERS (Ord_No, Purchase_Amt, Ord_Date, Customer_id, Salesman_id) </br>
	Write SQL queries to
	1. Count the customers with grades above Bangalore’s average.
	2. Find the name and numbers of all salesmen who had more than one customer.
	3. List all salesmen and indicate those who have and don’t have customers in their cities
	(Use UNION operation.)
	4. Create a view that finds the salesman who has the customer with the highest order of a
	day.
	5. Demonstrate the DELETE operation by removing salesman with id 1000. All his orders
	must also be deleted.
	-----

* Consider the schema for Movie Database: <br>
	ACTOR (Act_id, Act_Name, Act_Gender)<br>
	DIRECTOR (Dir_id, Dir_Name, Dir_Phone)<br>
	MOVIES (Mov_id, Mov_Title, Mov_Year, Mov_Lang, Dir_id) MOVIE_CAST (Act_id, Mov_id, Role)<br>
	RATING (Mov_id, Rev_Stars)<br>
	Write SQL queries to
	1. List the titles of all movies directed by ‘Hitchcock’.
	2. Find the movie names where one or more actors acted in two or more movies.
	3. List all actors who acted in a movie before 2000 and also in a movie after
	2015 (use JOIN operation).
	4. Find the title of movies and number of stars for each movie that has at least one
	rating and find the highest number of stars that movie received. Sort the result by
		  movie title.
	5. Update rating of all movies directed by ‘Steven Spielberg’ to 5.
	-----

* Consider the schema for College Database:<br>
STUDENT (USN, SName, Address, Phone, Gender)<br>
SEMSEC (SSID, Sem, Sec)<br>
CLASS (USN, SSID)<br>
SUBJECT (Subcode, Title, Sem, Credits)<br>
IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3, FinalIA) Write SQL queries to<br>
1. List all the student details studying in fourth semester ‘C’ section.
2. Compute the total number of male and female students in each semester and in each
section.
3. Create a view of Test1 marks of student USN ‘1BI15CS101’ in all subjects.
4. Calculate the FinalIA (average of best two test marks) and update the
corresponding table for all students.
5. Categorize students based on the following criterion:<br>
If FinalIA = 17 to 20 then CAT = ‘Outstanding’<br>
If FinalIA = 12 to 16 then CAT = ‘Average’<br>
If FinalIA < 12 then CAT = ‘Weak’<br>
Give these details only for 8th semester A, B, and C section students.
