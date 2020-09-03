CREATE TABLE departments
	(dept_no varchar(4),
	dept_name varchar(20),
PRIMARY KEY(dept_no));

CREATE TABLE titles
	(title_id varchar(5),
	title varchar(20),
PRIMARY KEY(title_id));

CREATE TABLE employees
	(emp_no int,
	title_id varchar(5),
	birth_date date,
	first_name varchar(15),
	last_name varchar(20),
	sex varchar(1),
	hire_date date,
PRIMARY KEY(emp_no),
FOREIGN KEY(title_id) REFERENCES titles(title_id));

CREATE TABLE salaries
	(emp_no int,
	salary int,
PRIMARY KEY(emp_no),
FOREIGN KEY(emp_no) REFERENCES employees(emp_no));


CREATE TABLE employeedept
	(emp_no int,
	dept_no varchar(4),
PRIMARY KEY(emp_no, dept_no),
FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
FOREIGN KEY(dept_no) REFERENCES departments(dept_no));

CREATE TABLE deptmanagers
	(dept_no varchar(4),
	emp_no int,
PRIMARY KEY(dept_no, emp_no),
FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
FOREIGN KEY(emp_no) REFERENCES employees(emp_no));
