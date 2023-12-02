CREATE TABLE  AGENTS(	
    AGENT_CODE VARCHAR(6) NOT NULL PRIMARY KEY, 
  	AGENT_NAME VARCHAR(40), 
  	WORKING_AREA VARCHAR(35), 
  	COMMISSION INT, 
  	PHONE_NO VARCHAR(15), 
  	COUNTRY VARCHAR(25) 
	 );
	 
INSERT INTO AGENTS VALUES 
('A007', 'Ramasundar', 'Bangalore', 0.15, '077-25814763', ''),
('A003', 'Alex ', 'London', 0.13, '075-12458969', ''),
('A008', 'Alford', 'New York',0.12, '044-25874365', ''),
('A011', 'Ravi Kumar', 'Bangalore', 0.15, '077-45625874', ''),
('A010', 'Santakumar', 'Chennai', 0.14, '007-22388644', ''),
('A012', 'Lucida', 'San Jose', 0.12, '044-52981425', ''),
('A005', 'Anderson', 'Brisban', 0.13, '045-21447739', ''),
('A001', 'Subbarao', 'Bangalore', 0.14, '077-12346674', ''),
('A002', 'Mukesh', 'Mumbai', 0.11, '029-12358964', ''),
('A006', 'McDen', 'London', 0.15, '078-22255588', ''),
('A004', 'Ivan', 'Torento',0.15, '008-22544166', ''),
('A009', 'Benjamin', 'Hampshair', 0.11, '008-22536178', '');



CREATE TABLE  CUSTOMER (
  CUST_CODE VARCHAR(6) NOT NULL PRIMARY KEY, 
	CUST_NAME VARCHAR(40) NOT NULL, 
	CUST_CITY CHAR(35), 
	WORKING_AREA VARCHAR(35) NOT NULL, 
	CUST_COUNTRY VARCHAR(20) NOT NULL, 
	GRADE INT, 
	OPENING_AMT INT NOT NULL, 
	RECEIVE_AMT INT NOT NULL, 
	PAYMENT_AMT INT NOT NULL, 
	OUTSTANDING_AMT INT NOT NULL, 
	PHONE_NO VARCHAR(17) NOT NULL, 
	AGENT_CODE VARCHAR(6) NOT NULL,
	FOREIGN KEY (AGENT_CODE) REFERENCES AGENTS(AGENT_CODE)
);

INSERT INTO CUSTOMER
VALUES
('C00013', 'Holmes', 'London', 'London', 'UK', 2, 6000, 5000, 7000, 4000, 'BBBBBBB', 'A003'),
('C00001', 'Micheal', 'New York', 'New York', 'USA', 2, 3000, 5000, 2000, 6000, 'CCCCCCC', 'A008'),
('C00020', 'Albert', 'New York', 'New York', 'USA', 3, 5000, 7000, 6000, 6000, 'BBBBSBB', 'A008'),
('C00025', 'Ravindran', 'Bangalore', 'Bangalore', 'India', 2, 5000, 7000, 4000, 8000, 'AVAVAVA', 'A011'),
('C00024', 'Cook', 'London', 'London', 'UK', 2, 4000, 9000, 7000, 6000, 'FSDDSDF', 'A006'),
('C00015', 'Stuart', 'London', 'London', 'UK', 1, 6000, 8000, 3000, 11000, 'GFSGERS', 'A003'),
('C00002', 'Bolt', 'New York', 'New York', 'USA', 3, 5000, 7000, 9000, 3000, 'DDNRDRH', 'A008'),
('C00018', 'Fleming', 'Brisban', 'Brisban', 'Australia', 2, 7000, 7000, 9000, 5000, 'NHBGVFC', 'A005'),
('C00021', 'Jacks', 'Brisban', 'Brisban', 'Australia', 1, 7000, 7000, 7000, 7000, 'WERTGDF', 'A005'),
('C00019', 'Yearannaidu', 'Chennai', 'Chennai', 'India', 1, 8000, 7000, 7000, 8000, 'ZZZZBFV', 'A010'),
('C00005', 'Sasikant', 'Mumbai', 'Mumbai', 'India', 1, 7000, 11000, 7000, 11000, '147-25896312', 'A002'),
('C00007', 'Ramanathan', 'Chennai', 'Chennai', 'India', 1, 7000, 11000, 9000, 9000, 'GHRDWSD', 'A010'),
('C00022', 'Avinash', 'Mumbai', 'Mumbai', 'India', 2, 7000, 11000, 9000, 9000, '113-12345678', 'A002'),
('C00004', 'Winston', 'Brisban', 'Brisban', 'Australia', 1, 5000, 8000, 7000, 6000, 'AAAAAAA', 'A005'),
('C00023', 'Karl', 'London', 'London', 'UK', 0, 4000, 6000, 7000, 3000, 'AAAABAA', 'A006'),
('C00006', 'Shilton', 'Torento', 'Torento', 'Canada', 1, 10000, 7000, 6000, 11000, 'DDDDDDD', 'A004'),
('C00010', 'Charles', 'Hampshair', 'Hampshair', 'UK', 3, 6000, 4000, 5000, 5000, 'MMMMMMM', 'A009'),
('C00017', 'Srinivas', 'Bangalore', 'Bangalore', 'India', 2, 8000, 4000, 3000, 9000, 'AAAAAAB', 'A007'),
('C00012', 'Steven', 'San Jose', 'San Jose', 'USA', 1, 5000, 7000, 9000, 3000, 'KRFYGJK', 'A012'),
('C00008', 'Karolina', 'Torento', 'Torento', 'Canada', 1, 7000, 7000, 9000, 5000, 'HJKORED', 'A004'),
('C00003', 'Martin', 'Torento', 'Torento', 'Canada', 2, 8000, 7000, 7000, 8000, 'MJYURFD', 'A004'),
('C00009', 'Ramesh', 'Mumbai', 'Mumbai', 'India', 3, 8000, 7000, 3000, 12000, 'Phone No', 'A002'),
('C00014', 'Rangarappa', 'Bangalore', 'Bangalore', 'India', 2, 8000, 11000, 7000, 12000, 'AAAATGF', 'A001'),
('C00016', 'Venkatpati', 'Bangalore', 'Bangalore', 'India', 2, 8000, 11000, 7000, 12000, 'JRTVFDD', 'A007'),
('C00011', 'Sundariya', 'Chennai', 'Chennai', 'India', 3, 7000, 11000, 7000, 11000, 'PPHGRTS', 'A010');



CREATE TABLE  ORDERS (
  ORD_NUM INT NOT NULL PRIMARY KEY, 
	ORD_AMOUNT INT NOT NULL, 
	ADVANCE_AMOUNT INT NOT NULL, 
	ORD_DATE DATE NOT NULL, 
	CUST_CODE  VARCHAR(6) NOT NULL,
	AGENT_CODE VARCHAR(6) NOT NULL REFERENCES AGENTS, 
	ORD_DESCRIPTION VARCHAR(60) NOT NULL,
	FOREIGN KEY (CUST_CODE) REFERENCES CUSTOMER, 
	FOREIGN KEY (AGENT_CODE) REFERENCES AGENTS	
   );


INSERT INTO ORDERS
VALUES
(200100, 1000, 600, '2008-08-01', 'C00013', 'A003', 'SOD'),
(200110, 3000, 500, '2008-04-15', 'C00019', 'A010', 'SOD'),
(200107, 4500, 900, '2008-08-30', 'C00007', 'A010', 'SOD'),
(200112, 2000, 400, '2008-05-30', 'C00016', 'A007', 'SOD'),
(200113, 4000, 600, '2008-06-10', 'C00022', 'A002', 'SOD'),
(200102, 2000, 300, '2008-05-25', 'C00012', 'A012', 'SOD'),
(200114, 3500, 2000, '2008-08-15', 'C00002', 'A008', 'SOD'),
(200122, 2500, 400, '2008-09-16', 'C00003', 'A004', 'SOD'),
(200118, 500, 100, '2008-07-20', 'C00023', 'A006', 'SOD'),
(200119, 4000, 700, '2008-09-16', 'C00007', 'A010', 'SOD'),
(200121, 1500, 600, '2008-09-23', 'C00008', 'A004', 'SOD'),
(200130, 2500, 400, '2008-07-30', 'C00025', 'A011', 'SOD'),
(200134, 4200, 1800, '2008-09-25', 'C00004', 'A005', 'SOD'),
(200108, 4000, 600, '2008-02-15', 'C00008', 'A004', 'SOD'),
(200103, 1500, 700, '2008-05-15', 'C00021', 'A005', 'SOD'),
(200105, 2500, 500, '2008-07-18', 'C00025', 'A011', 'SOD'),
(200109, 3500, 800, '2008-07-30', 'C00011', 'A010', 'SOD'),
(200101, 3000, 1000, '2008-07-15', 'C00001', 'A008', 'SOD'),
(200111, 1000, 300, '2008-07-10', 'C00020', 'A008', 'SOD'),
(200104, 1500, 500, '2008-03-13', 'C00006', 'A004', 'SOD'),
(200106, 2500, 700, '2008-04-20', 'C00005', 'A002', 'SOD'),
(200125, 2000, 600, '2008-10-10', 'C00018', 'A005', 'SOD'),
(200117, 800, 200, '2008-10-20', 'C00014', 'A001', 'SOD'),
(200123, 500, 100, '2008-09-16', 'C00022', 'A002', 'SOD'),
(200120, 500, 100, '2008-07-20', 'C00009', 'A002', 'SOD'),
(200116, 500, 100, '2008-07-13', 'C00010', 'A009', 'SOD'),
(200124, 500, 100, '2008-06-20', 'C00017', 'A007', 'SOD'),
(200126, 500, 100, '2008-06-24', 'C00022', 'A002', 'SOD'),
(200129, 2500, 500, '2008-07-20', 'C00024', 'A006', 'SOD'),
(200127, 2500, 400, '2008-07-20', 'C00015', 'A003', 'SOD'),
(200128, 3500, 1500, '2008-07-20', 'C00009', 'A002', 'SOD'),
(200135, 2000, 800, '2008-09-16', 'C00007', 'A010', 'SOD'),
(200131, 900, 150, '2008-08-26', 'C00012', 'A012', 'SOD'),
(200133, 1200, 400, '2008-06-29', 'C00009', 'A002', 'SOD');


SELECT * FROM ORDERS
SELECT * FROM AGENTS
SELECT * FROM CUSTOMER

-- Return all customers that whose city is in New York, or Mumbai, or San Jose

        SELECT * FROM CUSTOMER
WHERE CUST_CITY = 'New York' OR CUST_CITY = 'Mumbai' OR CUST_CITY = 'San Jose'

-- Our marketting team wants to target customers who lives in the US or Canada for a marketting promotion.
-- Return all customers lives in these areas

SELECT * FROM CUSTOMER
WHERE CUST_COUNTRY = 'USA' OR CUST_COUNTRY = 'Canada'

-- The Advertisement team wants to create a reward programme and thus targets customers who has an open amount of above 5000 naira.
--         Return all customers in this cateogry

SELECT * FROM CUSTOMER
WHERE OPENING_AMT >= 5000 

-- The Management is asking to know which country the customers most important customers resides
-- return a table that shows a customer name, customer country, and opening amount, in descending order. 

SELECT CUST_NAME, CUST_COUNTRY, OPENING_AMT FROM CUSTOMER
ORDER BY  OPENING_AMT DESC 

-- The payment information of customers shows payments made by customers. 
-- The admin wants to know what top 3 customers makes the most payment. Order the customer table according to their payment amounts

SELECT TOP 3 * FROM CUSTOMER
ORDER BY PAYMENT_AMT DESC

-- All organisation knows to be wary of cities who have outstanding debts a lot.
    -- return all necessary information needed to know what city to be wary of.

SELECT CUST_CITY, OUTSTANDING_AMT, CUST_NAME FROM CUSTOMER
ORDER BY OUTSTANDING_AMT DESC

-- show all customers that lives in newyork

SELECT * FROM CUSTOMER
WHERE WORKING_AREA = 'new york'

-- show all customers hat lives in canada and payment amount is above 5000

SELECT * FROM CUSTOMER
WHERE CUST_COUNTRY = 'canada' AND PAYMENT_AMT > 5000

-- AGGREGATE ( MAX, MIN, AVG, STDEV, VAR, COUNT)
SELECT COUNT(OPENING_AMT) FROM CUSTOMER

SELECT MIN(OPENING_AMT) FROM CUSTOMER

SELECT AVG(OPENING_AMT) FROM CUSTOMER

SELECT STDEV(OPENING_AMT) FROM CUSTOMER

SELECT MAX(OPENING_AMT) AS MAXIMUM FROM CUSTOMER

SELECT AVG(OPENING_AMT) FROM CUSTOMER

SELECT SUM(OPENING_AMT) AS TOTAL FROM CUSTOMER

SELECT SUM(OPENING_AMT) AS Sum_of_Customers_that_lives_in_canada 
FROM CUSTOMER WHERE CUST_COUNTRY = 'canada'

-- Query to find the average outstanding debtors in USA
SELECT AVG(OUTSTANDING_AMT) AS Outstanding_debt_in_USA 
FROM CUSTOMER WHERE CUST_COUNTRY = 'USA'


SELECT MIN(opening_amt) FROM CUSTOMER WHERE CUST_COUNTRY = 'india'

SELECT SUM(receive_amt) FROM CUSTOMER WHERE CUST_COUNTRY = 'australia'

SELECT AVG(outstanding_amt) from CUSTOMER WHERE CUST_COUNTRY = 'Canada'

SELECT SUM(opening_amt) from CUSTOMER where CUST_COUNTRY = 'USA'



-- ADDING TWO COLLUMNS TOGETHER
SELECT SUM(OPENING_AMT + RECEIVE_AMT) FROM CUSTOMER

-- selecting some sets of column, and ordering by a particular column
SELECT CUST_NAME, CUST_COUNTRY, OPENING_AMT, RECEIVE_AMT FROM CUSTOMER
ORDER BY OPENING_AMT DESC

-- query to find what country the most valuable customer resides in, value is measured by payment amount 
SELECT  top(1)  CUST_NAME, CUST_COUNTRY, PAYMENT_AMT
FROM CUSTOMER ORDER BY PAYMENT_AMT DESC

-- what city the account with the highest opening account was opened
SELECT CUST_CITY, CUST_NAME, OPENING_AMT
FROM CUSTOMER ORDER BY OPENING_AMT DESC

-- query to find who is owing the most
SELECT CUST_NAME, OUTSTANDING_AMT
FROM CUSTOMER ORDER BY OUTSTANDING_AMT DESC

-- GROUPBY
SELECT * FROM CUSTOMER
SELECT * FROM AGENTS

-- what city often times have conversions
SELECT cust_city, AVG(opening_amt) as averageOpening FROM CUSTOMER
GROUP BY CUST_CITY
ORDER BY averageOpening DESC

-- which city often time have conversions
SELECT TOP(1) Cust_city, SUM(OUTSTANDING_AMT) AS Most_Outstanding_debt
FROM CUSTOMER
GROUP BY CUST_CITY
ORDER BY Most_Outstanding_debt DESC

-- Info on the city with that makes payment the most
SELECT TOP(1) Cust_city, SUM(PAYMENT_AMT) AS City_With_The_Most_Payment_Amt
FROM CUSTOMER
GROUP BY CUST_CITY
ORDER BY City_With_The_Most_Payment_Amt DESC

-- chose what city to avoid due to rising debt
SELECT CUST_COUNTRY, avg(outstanding_AMT)
AS City_With_The_Most_Outstanding_debt
FROM CUSTOMER
WHERE Cust_cOUNTRY = 'india' OR Cust_country = 'CANADA' OR Cust_country = 'USA'
GROUP BY CUST_COUNTRY
ORDER BY City_With_The_Most_Outstanding_debt DESC

-- what working area has the most customer base
SELECT TOP(1) WORKING_AREA, COUNT(WORKING_AREA) AS most_customer_base
FROM CUSTOMER
GROUP BY WORKING_AREA
ORDER by most_customer_base DESC

-- WHAT COUNTRY MAKES THE MOST MONEY
SELECT TOP(1) CUST_COUNTRY, SUM(PAYMENT_AMT + OPENING_AMT + RECEIVE_AMT - OUTSTANDING_AMT) AS City_With_The_least_Outstanding_debt
FROM CUSTOMER
GROUP BY CUST_COUNTRY
ORDER BY City_With_The_least_Outstanding_debt  DESC

-- number of customers in this country above
SELECT COUNT(CUST_NAME) AS most_customer_base, CUST_COUNTRY
FROM CUSTOMER
WHERE CUST_COUNTRY = 'INDIA'
GROUP BY CUST_COUNTRY



SELECT * FROM CUSTOMER
SELECT * FROM AGENTS
SELECT * FROM ORDERS

-- JOINS
SELECT * FROM ORDERS
LEFT JOIN CUSTOMER
ON CUSTOMER.CUST_CODE = ORDERS.CUST_CODE

SELECT * FROM CUSTOMER
RIGHT JOIN ORDERS
ON ORDERS.CUST_CODE = CUSTOMER.CUST_CODE

SELECT * FROM ORDERS
FULL OUTER JOIN CUSTOMER
ON CUSTOMER.CUST_CODE = ORDERS.CUST_CODE

SELECT * FROM CUSTOMER
INNER JOIN ORDERS
ON ORDERS.CUST_CODE = CUSTOMER.CUST_CODE
;


WITH new_table AS(
	SELECT ORDERS.ORD_NUM, ORDERS.ORD_AMOUNT, CUSTOMER.CUST_NAME, CUSTOMER.WORKING_AREA
	FROM ORDERS
	FULL OUTER JOIN CUSTOMER
	ON CUSTOMER.CUST_CODE = ORDERS.CUST_CODE
)
SELECT * FROM new_table
;


-- what agent brought the customer that has the highest opening amount?
WITH QUESTION0 AS(
	SELECT CUSTOMER.CUST_NAME, CUSTOMER.OPENING_AMT, AGENTS.*
	FROM CUSTOMER
	LEFT JOIN AGENTS ON AGENTS.AGENT_CODE = CUSTOMER.AGENT_CODE
)
SELECT top(1) * FROM QUESTION0
ORDER BY OPENING_AMT DESC
;

-- Show the country of the customer that has the highest order amount 
WITH QUESTION1 AS(
	SELECT CUSTOMER.CUST_COUNTRY, CUSTOMER.CUST_NAME, ORDERS.ORD_AMOUNT
	FROM CUSTOMER
	LEFT JOIN ORDERS ON CUSTOMER.CUST_CODE = ORDERS.CUST_CODE
)
SELECT TOP (1) * FROM QUESTION1
ORDER BY ORD_AMOUNT DESC
;


-- The customer that has the lowest order amount and the customer that has the highest grade, are they same ?
WITH QUESTION2 AS(
	SELECT CUSTOMER.CUST_NAME, CUSTOMER.GRADE, ORDERS.ORD_AMOUNT
	FROM CUSTOMER
	LEFT join ORDERS ON CUSTOMER.CUST_CODE = ORDERS.CUST_CODE 
)
SELECT TOP (1) * FROM QUESTION2
ORDER BY ORD_AMOUNT ASC
;

-- Show the phone number of the agent that brought the customer with highest receive amount
WITH QUESTION3 AS(
	SELECT  AGENTS.AGENT_NAME, AGENTS.PHONE_NO, CUSTOMER.CUST_NAME, CUSTOMER.RECEIVE_AMT 
	FROM CUSTOMER LEFT JOIN AGENTS 
	ON CUSTOMER.AGENT_CODE = AGENTS.AGENT_CODE
)
SELECT * FROM QUESTION3
WHERE RECEIVE_AMT = 11000


-- -- Show all information of agents that are from New York City.
SELECT * FROM AGENTS WHERE WORKING_AREA= 'NEW YORK'
;
	
-- -- Show all information of agents that are from USA.
WITH USA AS(
	SELECT CUSTOMER.CUST_COUNTRY, AGENTS.*
	FROM CUSTOMER
	LEFT JOIN AGENTS ON AGENTS.AGENT_CODE = CUSTOMER.AGENT_CODE
)
SELECT * FROM USA
WHERE CUST_COUNTRY = 'USA'
;

-- What is the Order numbers all sales made on 2008- 08-01, and show the information of the agent and customer that is invloved in this sales 
WITH QUESTION6 AS(
	SELECT ORDERS.ORD_NUM, ORDERS.ORD_DESCRIPTION, ORDERS.ORD_DATE, AGENTS.AGENT_CODE, AGENTS.AGENT_NAME, CUSTOMER.CUST_CODE, CUSTOMER.CUST_NAME
	FROM CUSTOMER
	LEFT JOIN AGENTS ON AGENTS.AGENT_CODE = CUSTOMER.AGENT_CODE
	LEFT JOIN ORDERS ON ORDERS.CUST_CODE = CUSTOMER.CUST_CODE
)
    SELECT * FROM QUESTION6
	WHERE ORD_DATE = '2008-08-01'
;
	
-- Who is our best customer (Total of all amounts less outstanding), what date did he purchase, and who is their agent?
WITH QUESTION7 AS(
	SELECT CUSTOMER.CUST_NAME, SUM(PAYMENT_AMT+RECEIVE_AMT+OPENING_AMT-OUTSTANDING_AMT) AS Total_of_all_amounts_less_outstanding, ORDERS.ORD_DATE, AGENTS.AGENT_NAME
	FROM CUSTOMER
	FULL OUTER JOIN AGENTS ON AGENTS.AGENT_CODE = CUSTOMER.AGENT_CODE
	FULL OUTER JOIN ORDERS ON ORDERS.CUST_CODE = CUSTOMER.CUST_CODE
	GROUP BY CUST_NAME, AGENT_NAME, ORD_DATE
)
    SELECT TOP (1) * FROM QUESTION7
	ORDER BY Total_of_all_amounts_less_outstanding DESC
;

-- What Date did Micheal From Torento purchase with us, and show the phone number of the agent 
WITH QUESTION8 AS(
	SELECT ORDERS.ORD_DATE, CUSTOMER.CUST_NAME, CUSTOMER.CUST_CITY, AGENTS.AGENT_NAME, AGENTS.PHONE_NO
	FROM CUSTOMER
	FULL OUTER JOIN AGENTS ON AGENTS.AGENT_CODE = CUSTOMER.AGENT_CODE
	FULL OUTER JOIN ORDERS ON ORDERS.CUST_CODE = CUSTOMER.CUST_CODE
)
    SELECT * FROM QUESTION8
	WHERE CUST_NAME  ='MICHEAL' 
;

-- Find all customers who have payment above 6000, and list out all information of their agent and the date they bought THE ITEM
WITH QUESTION9 AS(
	SELECT CUSTOMER.CUST_NAME, CUSTOMER.PAYMENT_AMT, AGENTS.*, ORDERS.ORD_DATE
	FROM CUSTOMER
	FULL OUTER JOIN AGENTS ON AGENTS.AGENT_CODE = CUSTOMER.AGENT_CODE
	FULL OUTER JOIN ORDERS ON ORDERS.CUST_CODE = CUSTOMER.CUST_CODE
)
    SELECT * FROM QUESTION9
	WHERE PAYMENT_AMT > 6000
	ORDER BY PAYMENT_AMT ASC
