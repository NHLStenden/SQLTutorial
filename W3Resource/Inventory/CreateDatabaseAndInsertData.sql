CREATE DATABASE IF NOT EXISTS Inventory;
USE Inventory;

DROP TABLE IF EXISTS orders, salesman, customer;

CREATE TABLE salesman
(
    salesman_id INT  PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    city VARCHAR(15) NOT NULL,
    commission DECIMAL(5,2) NOT NULL
);

CREATE TABLE customer
(
    customer_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cust_name VARCHAR(30) NOT NULL,
    city VARCHAR(15) NOT NULL,
    grade INT NULL,
    salesman_id INT NOT NULL REFERENCES salesman(salesman_id),
    CONSTRAINT FK_customer_salesman_salesman_id FOREIGN KEY (salesman_id) REFERENCES salesman (salesman_id) ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE orders
(
    ord_no INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    purch_amt DECIMAL(8,2) NOT NULL,
    ord_date DATE NOT NULL ,
    customer_id INT NOT NULL,
    salesman_id INT NOT NULL,
    CONSTRAINT FK_orders_customer_customer_id FOREIGN KEY (customer_id) REFERENCES customer (customer_id) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT FK_orders_salesman_customer_id FOREIGN KEY (salesman_id) REFERENCES salesman (salesman_id) ON DELETE RESTRICT ON UPDATE RESTRICT
);

INSERT INTO Inventory.salesman (salesman_id, name, city, commission) VALUES (5001, 'James Hoog', 'New York', 0.15);
INSERT INTO Inventory.salesman (salesman_id, name, city, commission) VALUES (5002, 'Nail Knite', 'Paris', 0.13);
INSERT INTO Inventory.salesman (salesman_id, name, city, commission) VALUES (5003, 'Lauson Hen', 'San Jose', 0.12);
INSERT INTO Inventory.salesman (salesman_id, name, city, commission) VALUES (5005, 'Pit Alex', 'London', 0.11);
INSERT INTO Inventory.salesman (salesman_id, name, city, commission) VALUES (5006, 'Mc Lyon', 'Paris', 0.14);
INSERT INTO Inventory.salesman (salesman_id, name, city, commission) VALUES (5007, 'Paul Adam', 'Rome', 0.13);

INSERT INTO Inventory.customer (customer_id, cust_name, city, grade, salesman_id) VALUES (3001, 'Brad Guzan', 'London', null, 5005);
INSERT INTO Inventory.customer (customer_id, cust_name, city, grade, salesman_id) VALUES (3002, 'Nick Rimando', 'New York', 100, 5001);
INSERT INTO Inventory.customer (customer_id, cust_name, city, grade, salesman_id) VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007);
INSERT INTO Inventory.customer (customer_id, cust_name, city, grade, salesman_id) VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006);
INSERT INTO Inventory.customer (customer_id, cust_name, city, grade, salesman_id) VALUES (3005, 'Graham Zusi', 'California', 200, 5002);
INSERT INTO Inventory.customer (customer_id, cust_name, city, grade, salesman_id) VALUES (3007, 'Brad Davis', 'New York', 200, 5001);
INSERT INTO Inventory.customer (customer_id, cust_name, city, grade, salesman_id) VALUES (3008, 'Julian Green', 'London', 300, 5002);
INSERT INTO Inventory.customer (customer_id, cust_name, city, grade, salesman_id) VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003);

INSERT INTO Inventory.orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES (70001, 150.50, '2012-10-05', 3005, 5002);
INSERT INTO Inventory.orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES (70002, 65.26, '2012-10-05', 3002, 5001);
INSERT INTO Inventory.orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES (70003, 2480.40, '2012-10-10', 3009, 5003);
INSERT INTO Inventory.orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES (70004, 110.50, '2012-08-17', 3009, 5003);
INSERT INTO Inventory.orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES (70005, 2400.60, '2012-07-27', 3007, 5001);
INSERT INTO Inventory.orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES (70007, 948.50, '2012-09-10', 3005, 5002);
INSERT INTO Inventory.orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES (70008, 5760.00, '2012-09-10', 3002, 5001);
INSERT INTO Inventory.orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES (70009, 270.65, '2012-09-10', 3001, 5005);
INSERT INTO Inventory.orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES (70010, 1983.43, '2012-10-10', 3004, 5006);
INSERT INTO Inventory.orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES (70011, 75.29, '2012-08-17', 3003, 5007);
INSERT INTO Inventory.orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES (70012, 250.45, '2012-06-27', 3008, 5002);
INSERT INTO Inventory.orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES (70013, 3045.60, '2012-04-25', 3002, 5001);