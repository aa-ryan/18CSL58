CREATE TABLE SALESMAN (
	SALESMAN_ID NUMBER (4), 
	NAME VARCHAR2 (20),
	CITY VARCHAR2 (20),
	COMMISSION VARCHAR2 (20), 
	PRIMARY KEY(SALESMAN_ID)
);
CREATE TABLE CUSTOMER1 (
	CUSTOMER_ID NUMBER (4), 
	CUST_NAME VARCHAR2 (20),
	CITY VARCHAR2 (20),
	GRADE NUMBER (3),
	SALESMAN_ID NUMBER (4),
	PRIMARY KEY (CUSTOMER_ID),
	FOREIGN KEY(SALESMAN_ID) REFERENCES SALESMAN (SALESMAN_ID) ON DELETE SET NULL
);

CREATE TABLE ORDERS (
	ORD_NO NUMBER (5), 
	PURCHASE_AMT NUMBER (10, 2),
	ORD_DATE DATE,
	CUSTOMER_ID NUMBER (4),
	SALESMAN_ID NUMBER (4), 
	PRIMARY KEY (ORD_NO),
	FOREGIN KEY(CUSTOMER_ID) REFERENCES CUSTOMER1 (CUSTOMER_ID) ON DELETE CASCADE, 
	FOREGIN KEY(SALESMAN_ID) REFERENCES SALESMAN (SALESMAN_ID) ON DELETE CASCADE
);

DESC SALESMAN;
DESC CUSTOMER1;
DESC ORDERS;

INSERT INTO SALESMAN VALUES (1000, 'JOHN','BANGALORE','25 %');
INSERT INTO SALESMAN VALUES (2000, 'RAVI','BANGALORE',’'0 %'); 
INSERT INTO SALESMAN VALUES (3000, 'KUMAR','MYSORE','15 %');
INSERT INTO SALESMAN VALUES (4000, 'SMITH','DELHI','30 %');
INSERT INTO SALESMAN VALUES (5000, 'HARSHA','HYDRABAD','15 %');


INSERT INTO CUSTOMER1 VALUES (10, 'PREETHI','BANGALORE', 100, 1000);
INSERT INTO CUSTOMER1 VALUES (11, 'VIVEK','MANGALORE', 300, 1000);
INSERT INTO CUSTOMER1 VALUES (12, 'BHASKAR','CHENNAI', 400, 2000);
INSERT INTO CUSTOMER1 VALUES (13, 'CHETHAN','BANGALORE', 200, 2000);
INSERT INTO CUSTOMER1 VALUES (14, 'MAMATHA','BANGALORE', 400, 3000);


INSERT INTO ORDERS VALUES (50, 5000, '04-MAY-17', 10, 1000);
INSERT INTO ORDERS VALUES (51, 450, '20-JAN-17', 10, 2000);
INSERT INTO ORDERS VALUES (52, 1000, '24-FEB-17', 13, 2000);
INSERT INTO ORDERS VALUES (53, 3500, '13-APR-17', 14, 3000);
INSERT INTO ORDERS VALUES (54, 550, '09-MAR-17', 12, 2000);

SELECT * FROM SALESMAN;
SELECT * FROM CUSTOMER1;
SELECT * FROM ORDERS;
