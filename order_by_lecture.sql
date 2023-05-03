USE employees;

SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date;

SELECT last_name FROM employees GROUP BY last_name;

SELECT last_name, COUNT(first_name) FROM employees GROUP BY last_name;

SELECT DATEDIFF(hire_date, birth_date) / 365 FROM employees;
