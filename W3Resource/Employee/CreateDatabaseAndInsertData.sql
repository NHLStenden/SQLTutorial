CREATE DATABASE IF NOT EXISTS Employee;
USE Employee;

DROP TABLE IF EXISTS employee, department, salary_grade;

CREATE TABLE department (
    dep_id INT PRIMARY KEY AUTO_INCREMENT,
    dep_name VARCHAR(20) NOT NULL,
    dep_location VARCHAR(15)
);

CREATE TABLE employee (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(15) NOT NULL,
    job_name VARCHAR(10) NOT NULL,
    manager_id INTEGER NULL,
    hire_date DATE NOT NULL ,
    salary DECIMAL(10, 2) NOT NULL,
    commission DECIMAL(7, 2) NULL,
    dep_id INTEGER NOT NULL,
    CONSTRAINT FK_employee_employee_manager_id FOREIGN KEY (manager_id) REFERENCES employee (emp_id) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT FK_employee_department FOREIGN KEY (dep_id) REFERENCES department (dep_id) ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE salary_grade (
    grade INT PRIMARY KEY,
    min_salary INT,
    max_salary INT
);


insert into department (dep_id, dep_name, dep_location) values (1001, 'FINANCE', 'SYDNEY');
insert into department (dep_id, dep_name, dep_location) values (2001, 'AUDIT', 'MELBOURNE');
insert into department (dep_id, dep_name, dep_location) values (3001, 'MARKETING', 'PERTH');
insert into department (dep_id, dep_name, dep_location) values (4001, 'PRODUCTION', 'BRISBANE');

insert into salary_grade (grade, min_salary, max_salary) values (1, 800, 1300);
insert into salary_grade (grade, min_salary, max_salary) values (2, 1301, 1500);
insert into salary_grade (grade, min_salary, max_salary) values (3, 1501, 2100);
insert into salary_grade (grade, min_salary, max_salary) values (4, 2101, 3100);
insert into salary_grade (grade, min_salary, max_salary) values (5, 3101, 9999);


SET FOREIGN_KEY_CHECKS=0;

INSERT INTO employee (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (63679, 'SANDRINE', 'CLERK', 69062, '1990-12-18', 900.00, null, 2001);

INSERT INTO employee (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (67832, 'CLARE', 'MANAGER', 68319, '1991-06-09', 2550.00, null, 1001);

INSERT INTO employee (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (65646, 'JONAS', 'MANAGER', 68319, '1991-04-02', 2957.00, null, 2001);

INSERT INTO employee (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (66928, 'BLAZE', 'MANAGER', 68319, '1991-05-01', 2750.00, null, 3001);

INSERT INTO employee (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (68736, 'ADNRES', 'CLERK', 67858, '1997-05-23', 1200.00, null, 2001);

INSERT INTO employee (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (69324, 'MARKER', 'CLERK', 67832, '1992-01-23', 1400.00, null, 1001);

INSERT INTO employee (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (68454, 'TUCKER', 'SALESMAN', 66928, '1991-09-08', 1600.00, 0.00, 3001);

INSERT INTO employee (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (69000, 'JULIUS', 'CLERK', 66928, '1991-12-03', 1050.00, null, 3001);

INSERT INTO employee (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (64989, 'ADELYN', 'SALESMAN', 66928, '1991-02-20', 1700.00, 400.00, 3001);

INSERT INTO employee (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (66564, 'MADDEN', 'SALESMAN', 66928, '1991-09-28', 1350.00, 1500.00, 3001);

INSERT INTO employee (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (65271, 'WADE', 'SALESMAN', 66928, '1991-02-22', 1350.00, 600.00, 3001);

INSERT INTO employee (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (69062, 'FRANK', 'ANALYST', 65646, '1991-12-03', 3100.00, null, 2001);

INSERT INTO employee (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (67858, 'SCARLET', 'ANALYST', 65646, '1997-04-19', 3100.00, null, 2001);

SET FOREIGN_KEY_CHECKS=1;
