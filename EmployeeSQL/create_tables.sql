COPY employees(
	emp_no,
  	title_id,
  	birth_date,
  	first_name,
  	last_name,
  	sex,
  	hire_date)
FROM 'C:\users\shann\documents\GitHub\SQL-challenge\data\employees.csv'
DELIMITER ','
CSV HEADER;

COPY departments(
	dept_no,
  	dept_name)
FROM 'C:\users\shann\documents\GitHub\SQL-challenge\data\departments.csv'
DELIMITER ','
CSV HEADER;

COPY titles(
	title_id,
  	title)
FROM 'C:\users\shann\documents\GitHub\SQL-challenge\data\titles.csv'
DELIMITER ','
CSV HEADER;	

COPY salaries(
  emp_no,
  salary)
FROM 'C:\users\shann\documents\GitHub\SQL-challenge\data\salaries.csv'
DELIMITER ','
CSV HEADER;	 

COPY deptmanagers(
  dept_id,
  emp_no)
FROM 'C:\users\shann\documents\GitHub\SQL-challenge\data\dept_manager.csv'
DELIMITER ','
CSV HEADER;	


CREATE TABLE employeedept(
  emp_no,
  dept_no)
FROM 'C:\users\shann\documents\GitHub\SQL-challenge\data\dept_emp.csv'
DELIMITER ','
CSV HEADER;	