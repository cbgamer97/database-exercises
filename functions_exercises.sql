USE employees;

SHOW TABLES;

SELECT * FROM employees WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
                          AND gender = 'M'
ORDER BY first_name, last_name;

SELECT * FROM employees WHERE last_name LIKE 'E%'
ORDER BY emp_no;

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE last_name LIKE 'E%'
                           OR last_name LIKE '%e';

SELECT CONCAT(first_name, ' ' , last_name) FROM employees WHERE last_name LIKE 'E%'
                          AND last_name LIKE '%e';

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT * FROM employees WHERE birth_date LIKE '%-12-25';

SELECT * FROM employees WHERE YEAR(hire_date) BETWEEN 1990 AND 2000
                                                            AND MONTH(birth_date) = 12
                                                            AND DAY(birth_date) = 25;

SELECT * FROM employees WHERE YEAR(hire_date) BETWEEN 1990 AND 2000
                                                           AND MONTH(birth_date) = 12
                                                           AND DAY(birth_date) = 25
                                                           ORDER BY birth_date, hire_date DESC;

SELECT *, DATEDIFF(NOW(), hire_date) FROM employees WHERE YEAR(hire_date) BETWEEN 1990 AND 2000
                          AND MONTH(birth_date) = 12
                          AND DAY(birth_date) = 25
                          ORDER BY DATEDIFF(hire_date, NOW()) DESC;