CREATE TABLE employees

(emp_no PK int,
title_id varchar(5),
birth_date date,
first_name varchar(15),
last_name varchar(15),
sex varchar(1),
hire_date date);

CREATE TABLE employeedept

(emp_no int,
dept_no varchar(4));

CREATE TABLE deptmanagers

(dept_no varchar(4),
emp_no int);

CREATE TABLE salaries

(emp_no PK int,
salary int);

CREATE TABLE departments

(dept_no PK varchar(4),
dept_name varchar(20) UNIQUE);

CREATE TABLE titles

(title_id PK varchar(5)
title varchar(20) UNIQUE);