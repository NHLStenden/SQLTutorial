-- antwoorden: https://github.com/ryrych/sql_tutorial
-- orginele antwoorden: https://www.w3resource.com/sql-exercises/sql-boolean-operator-exercise-6.php
-- je kan de nummer vervangen in bovenstaande link

-- Inventory Database --
-- Inventory Database --
-- Inventory Database --

USE Inventory;

-- 1. Write a query to display all customers with a grade above 100.
SELECT * FROM customer WHERE grade > 100;

-- 2. Write a query statement to display all customers in New York who have a grade value above 100.
SELECT * FROM customer WHERE city = 'New York' AND grade > 100;

-- 3. Write a SQL statement to display all customers, who are either belongs to the city New York or had a grade above 100.
SELECT * FROM customer WHERE city = 'New York' OR grade > 100;

-- 4. Write a SQL statement to display all the customers, who are either belongs to the city New York or not had a grade above 100.
SELECT * FROM customer WHERE city = 'New York' OR NOT(grade > 100);
SELECT * FROM customer WHERE city = 'New York' OR grade <= 100;

-- Martin? ik raak in de war van deze zin, denk aanpassen (remove neither, nor?)
-- 5.Write a SQL query to display those customers who are neither belongs to the city New York nor grade value is more than 100.
SELECT * FROM customer WHERE city  <> 'New York' AND grade <= 100;
SELECT * FROM customer WHERE NOT(city = 'New York' OR grade > 100);

-- Martin? ik raak in de war van deze zin (remove either)
-- 6. Write a SQL statement to display either those orders which are not issued on date 2012-09-10 and
-- issued by the salesman whose ID is 5005 and below or those orders which purchase amount is 1000.00 and below.
SELECT * FROM orders WHERE
    NOT (ord_date = '2012-09-10' AND salesman_id <= 5005)
        OR purch_amt <= 1000.00;

-- 7 .Write a SQL statement to display salesman_id, name, city and commission who gets the commission within the range more than 0.10% and less than 0.12%
SELECT salesman_id, name, city, commission FROM salesman
WHERE commission > 0.10 AND commission < 0.12;

-- 8 Write a SQL query to display all orders where purchase amount less than 200 or exclude those orders which order date is on or greater than 10th Feb,2012 and customer id is below 3009.
SELECT * FROM orders WHERE purch_amt < 200 OR NOT(ord_date >= '2012-2-10');

-- 9. Write a SQL statement to exclude the rows which satisfy
-- 1) order dates are 2012-08-17 and purchase amount is below 1000
-- 2) customer id is greater than 3005 and purchase amount is below 1000.
SELECT * FROM orders
WHERE
      NOT(
          ord_date = '2012-08-17' AND purch_amt < 1000
            AND
            customer_id > 3005 AND purch_amt < 1000
      );

-- 10. Write a SQL query to display order number, purchase amount,
-- achieved, the unachieved percentage for those order which exceeds the 50% of the target value of 6000.
SELECT ord_no, purch_amt,
       (100 * purch_amt / 6000) AS "Achieved %",
       (100 * (6000 - purch_amt) / 6000) AS "Unachieved %"
FROM orders
WHERE (100 * purch_amt) / 6000 > 50;




-- Employee Database --
-- Employee Database --
-- Employee Database --

USE Emp;
-- 11. Write a query in SQL to find the data of employees whose last name is Dosni or Mardy.
SELECT * FROM emp_details WHERE emp_lname = 'Dosni' or emp_lname = 'Mardy';

-- 12. Write a query in SQL to display all the data of employees that work in department 47 or department 63.
SELECT * FROM emp_details WHERE emp_dept = 47 or emp_dept = 63;

