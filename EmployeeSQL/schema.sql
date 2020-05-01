-- Drop table if exists
DROP TABLE departments;
DROP TABLE dept_manager;
DROP TABLE dept_emp;
DROP TABLE employee;
DROP TABLE titles;
DROP TABLE salary;

-- Create new tables
CREATE TABLE departments ( 
  dept_no VARCHAR(5) NOT NULL PRIMARY KEY,
  dept_name VARCHAR(20)
);

CREATE TABLE dept_manager (
--  dept_no VARCHAR(5) NOT NULL PRIMARY KEY,
  dept_no VARCHAR(5) NOT NULL,
  emp_no INT,
  from_date date,
  to_date date
);

CREATE TABLE dept_emp (
--  emp_no INT NOT NULL PRIMARY KEY,
  emp_no INT NOT NULL,      
  dept_no VARCHAR(5),
  from_date date,
  to_date date
);

CREATE TABLE employee (
  emp_no INT NOT NULL PRIMARY KEY,
  birth_date date,  
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  gender VARCHAR(1),    
  hire_date date
);

CREATE TABLE titles (
--  emp_no INT NOT NULL PRIMARY KEY,
  emp_no INT NOT NULL,
  title VARCHAR(20),
  from_date date,
  to_date date
);

CREATE TABLE salaries (
  emp_no INT NOT NULL PRIMARY KEY,
  salary INT,
  from_date date,
  to_date date
);
