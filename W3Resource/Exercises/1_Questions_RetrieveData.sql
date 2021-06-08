-- 1. Write a SQL statement to display all the information of all salesman
SELECT * FROM salesman;

-- 2. Write a SQL statement to display a string "This is SQL Exercise, Practice and Solution".
SELECT 'This is SQL Exercise, Practice and Solution';

-- 3. Write a query to display three numbers in three columns.
SELECT 5, 10, 12;

-- 4. Write a query to display the sum of two numbers 10 and 15 from RDMS sever.
SELECT 10 + 15;

-- 5. Write a query to display the result of an arithmetic expression.
SELECT 10 + 15 - 5 * 2;

-- 6. Write a SQL statement to display specific columns like name and commission for all the salesmen.
SELECT name, commission FROM salesman;

-- 7. Write a query to display the columns in a specific order like order date, salesman id, order number and purchase amount from for all the orders.
SELECT ord_date, salesman_id, ord_no, purch_amt FROM orders;

-- 8. Write a query which will retrieve the value of salesman id of all salesmen, getting orders from the customers in orders table without any repeats.
SELECT DISTINCT salesman_id FROM orders;

-- 9. Write a SQL statement to display names and city of salesman, who belongs to the city of Paris.
SELECT name, city FROM salesman WHERE city = 'Paris';

-- 10. Write a SQL statement to display all the information for those customers with a grade of 200.
SELECT * FROM customer WHERE grade = 200;

-- 11. Write a SQL query to display the order number followed by order date and the purchase amount for each order which will be delivered by the salesman who is holding the ID 5001.
SELECT ord_no, ord_date, purch_amt FROM orders WHERE salesman_id = 5001