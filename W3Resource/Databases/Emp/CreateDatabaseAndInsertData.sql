CREATE DATABASE IF NOT EXISTS Emp;
USE Emp;

DROP TABLE IF EXISTS emp_details;

CREATE TABLE emp_details (
  emp_idno INT PRIMARY KEY ,
  emp_fname VARCHAR(100) NOT NULL,
  emp_lname VARCHAR(100) NOT NULL,
  emp_dept INT NOT NULL
);

INSERT INTO Emp.emp_details (emp_idno, emp_fname, emp_lname, emp_dept)
VALUES (631548, 'Alan', 'Snappy', 27);

INSERT INTO Emp.emp_details (emp_idno, emp_fname, emp_lname, emp_dept)
VALUES (839139, 'Maria', 'Foster', 57);

INSERT INTO Emp.emp_details (emp_idno, emp_fname, emp_lname, emp_dept)
VALUES (127323, 'Michale', 'Robbin', 57);

INSERT INTO Emp.emp_details (emp_idno, emp_fname, emp_lname, emp_dept)
VALUES (526689, 'Carlos', 'Snares', 63);

INSERT INTO Emp.emp_details (emp_idno, emp_fname, emp_lname, emp_dept)
VALUES (843795, 'Enric', 'Dosio', 57);

INSERT INTO Emp.emp_details (emp_idno, emp_fname, emp_lname, emp_dept)
VALUES (328717, 'Jhon', 'Snares', 63);

INSERT INTO Emp.emp_details (emp_idno, emp_fname, emp_lname, emp_dept)
VALUES (444527, 'Joseph', 'Dosni', 47);

INSERT INTO Emp.emp_details (emp_idno, emp_fname, emp_lname, emp_dept)
VALUES (659831, 'Zanifer', 'Emily', 47);

INSERT INTO Emp.emp_details (emp_idno, emp_fname, emp_lname, emp_dept)
VALUES (847674, 'Kuleswar', 'Sitaraman', 57);

INSERT INTO Emp.emp_details (emp_idno, emp_fname, emp_lname, emp_dept)
VALUES (748681, 'Henrey', 'Gabriel', 47);

INSERT INTO Emp.emp_details (emp_idno, emp_fname, emp_lname, emp_dept)
VALUES (555935, 'Alex', 'Manuel', 57);

INSERT INTO Emp.emp_details (emp_idno, emp_fname, emp_lname, emp_dept)
VALUES (539569, 'George', 'Mardy', 27);

INSERT INTO Emp.emp_details (emp_idno, emp_fname, emp_lname, emp_dept)
VALUES (733843, 'Mario', 'Saule', 63);

