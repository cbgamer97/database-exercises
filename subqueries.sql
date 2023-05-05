USE employees;

SELECT birth_date FROM employees
WHERE emp_no IN (SELECT emp_no FROM dept_manager);

SELECT CONCAT(first_name, ' ', last_name) AS Employee, birth_date FROM employees
WHERE emp_no IN (SELECT emp_no FROM dept_manager);