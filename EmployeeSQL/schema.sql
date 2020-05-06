-- Drop table if exists
DROP TABLE if exists departments;
DROP TABLE if exists dept_manager;
DROP TABLE if exists dept_emp;
DROP TABLE if exists employee;
DROP TABLE if exists titles;
DROP TABLE if exists salary;

-- Create new tables

CREATE TABLE employee (
  emp_no INT NOT NULL PRIMARY KEY,
  birth_date date,  
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  gender VARCHAR(1),    
  hire_date date
);

CREATE TABLE departments ( 
  dept_no VARCHAR(5) NOT NULL PRIMARY KEY,
  dept_name VARCHAR(20)
);

CREATE TABLE dept_manager (
--  dept_no VARCHAR(5) NOT NULL PRIMARY KEY,
  dept_no VARCHAR(5) NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  emp_no INT,
  FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
  from_date date,
  to_date date
 
);

CREATE TABLE dept_emp (
--  emp_no INT NOT NULL PRIMARY KEY,
-- Cannot be primary key as it has duplicates
  emp_no INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employee(emp_no),      
  dept_no VARCHAR(5),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  from_date date,
  to_date date
);


CREATE TABLE titles (
--  emp_no INT NOT NULL PRIMARY KEY,
-- Cannot be primary key as it has duplicates
  emp_no INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
  title VARCHAR(20),
  from_date date,
  to_date date
);

CREATE TABLE salaries (
  emp_no INT NOT NULL PRIMARY KEY,
  FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
  salary INT,
  from_date date,
  to_date date
);
