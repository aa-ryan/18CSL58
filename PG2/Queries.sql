-- Count the customers with grades above Bangalore’s average.
SELECT GRADE, COUNT (DISTINCT CUSTOMER_ID) FROM CUSTOMER1
	GROUP BY GRADE
	HAVING GRADE > (SELECT AVG(GRADE) FROM CUSTOMER1 WHERE CITY='BANGALORE');

-- Find the name and numbers of all salesmen who had more than one customer.
SELECT SALESMAN_ID, NAME FROM SALESMAN A
	WHERE 1 < (SELECT COUNT (*) FROM CUSTOMER1
	WHERE SALESMAN_ID=A.SALESMAN_ID);

-- List all salesmen and indicate those who have and don’t have customers in their cities (Use UNION operation.)
SELECT SALESMAN.SALESMAN_ID, NAME, CUST_NAME, COMMISSION FROM SALESMAN, CUSTOMER1
	WHERE SALESMAN.CITY = CUSTOMER1.CITY
	UNION
	SELECT SALESMAN_ID, NAME, 'NO MATCH', COMMISSION FROM SALESMAN
	WHERE NOT CITY = ANY
	(SELECT CITY FROM CUSTOMER1) ORDER BY 2 DESC;

-- Create a view that finds the salesman who has the customer with the highest order of a day.
CREATE VIEW ELITSALESMAN AS
	SELECT B.ORD_DATE, A.SALESMAN_ID, A.NAME
	FROM SALESMAN A, ORDERS B
	WHERE A.SALESMAN_ID = B.SALESMAN_ID
	AND B.PURCHASE_AMT=(SELECT MAX (PURCHASE_AMT) FROM ORDERS C
	WHERE C.ORD_DATE = B.ORD_DATE);

-- Demonstrate the DELETE operation by removing salesman with id 1000. All his orders must also be deleted.
DELETE FROM SALESMAN WHERE SALESMAN_ID=1000;

