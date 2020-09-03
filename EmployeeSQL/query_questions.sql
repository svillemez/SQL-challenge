-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no, last_name, first_name, sex, salary FROM employees as e, salaries as s
	WHERE e.emp_no = s.emp_no;
	
-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date FROM employees
	WHERE hire_date > '1985-12-31' and hire_date < '1987-01-01';	
	
-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT 
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT e.emp_no, last_name, first_name, d.department FROM employees as e, department as d, employeedept as ed
	WHERE e.emp_no = ed.emp_no;
	
-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

