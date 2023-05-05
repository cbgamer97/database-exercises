USE employees;

SELECT dept_name AS 'Department Name', CONCAT(first_name, last_name) AS 'Department Manager'
FROM departments d JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees e on e.emp_no = dm.emp_no
WHERE to_date LIKE '9%'
ORDER BY dept_name;


SELECT dept_name AS 'Department Name', CONCAT(first_name, last_name) AS 'Department Manager'
FROM departments d JOIN dept_manager dm on d.dept_no = dm.dept_no
                   JOIN employees e on e.emp_no = dm.emp_no
WHERE to_date LIKE '9%'
AND gender = 'F'
ORDER BY dept_name;

SELECT title, COUNT(title) AS Total FROM titles t
JOIN dept_emp de on t.emp_no = de.emp_no
JOIN departments d on d.dept_no = de.dept_no
WHERE dept_name = 'Customer Service'
AND t.to_date LIKE '9%'
AND de.to_date LIKE '9%'
GROUP BY title;

SELECT dept_name AS 'Department Name',
       CONCAT(first_name, last_name) AS 'Department Manager',
       salary AS Salary
       FROM departments d
JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees e on e.emp_no = dm.emp_no
JOIN salaries s on e.emp_no = s.emp_no
WHERE s.to_date LIKE '9%'
AND dm.to_date LIKE '9%'
ORDER BY dept_name;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee,
    dept_name AS Department,
    CONCAT(e2.first_name, ' ', e2.last_name) AS Manager
FROM employees e
JOIN dept_emp de on e.emp_no = de.emp_no
JOIN departments d on d.dept_no = de.dept_no
JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees e2 on e2.emp_no = dm.emp_no
WHERE de.to_date LIKE '9%'
AND dm.to_date LIKE '9%'
ORDER BY dept_name, e.emp_no;
