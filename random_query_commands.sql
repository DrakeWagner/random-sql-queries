USE hr;
SELECT * FROM employees;

/* random selection executions */
SELECT first_name 'First Name', last_name 'Last Name'
	FROM employees;
    
SELECT DISTINCT department_id
	FROM employees;
    
SELECT *
	FROM employees
    ORDER BY first_name DESC;

SELECT first_name, last_name, salary, salary*.15 'PF'
	FROM employees;
    
SELECT employee_id, first_name, last_name, salary
	FROM employees
    ORDER BY salary;

SELECT SUM(salary) 'Total Salary', 
AVG(salary) 'Average Salary', 
MIN(salary) 'Minimum Salary', 
MAX(salary) 'Maximum Salary'
	FROM employees;
    
SELECT COUNT(employee_id) 'Number of Employees'
	FROM employees;
    
SELECT DISTINCT job_id 'Types of Jobs'
	FROM employees;
    
SELECT COUNT(DISTINCT job_id) 'Number of Different Jobs'
	FROM employees;
    
SELECT upper(first_name)
	FROM employees;
    
SELECT LEFT(first_name, 4)
	FROM employees;

SELECT SUBSTRING(first_name, 1, 4)
	FROM employees;
    
SELECT 311*50+7805 result;

SELECT first_name, last_name, CONCAT(first_name,' ',last_name) 'Full Name'
    FROM employees;

SELECT LENGTH(first_name)+LENGTH(last_name) 'Length of Full Name'
	FROM employees;

SELECT *
	FROM employees
    WHERE first_name REGEXP '[0-9]' /* checks for numbers within the first_name column */;
    /* REGEXP seems to be the only way to check for integers in columns */
    
SELECT employee_id, first_name
	FROM employees LIMIT 10;
    
SELECT employee_id, first_name, round(salary/12, 2) 'Monthly Salary'
	/* rounds 2 decimal places */
	FROM employees;

/***********************/

SELECT * FROM employees
	WHERE salary NOT BETWEEN 10000 AND 15000;

SELECT first_name, last_name, department_id
	FROM employees
    WHERE department_id IN (30, 100)
    ORDER BY department_id;

SELECT first_name, last_name, department_id, salary
	FROM employees
    WHERE salary NOT BETWEEN 10000 AND 15000 
    AND (department_id = 30 OR department_id = 100);
    
SELECT first_name, last_name, hire_date
	FROM employees
    WHERE SUBSTRING(hire_date, 1, 4) = 1987;
/* or..... */
SELECT first_name, last_name, hire_date
	FROM employees
    WHERE YEAR(hire_date) = 1987;
    
SELECT first_name
	FROM employees
    WHERE first_name LIKE '%b%'
    AND first_name LIKE '%c%';
    
SELECT last_name, job_id, salary
	FROM employees
    WHERE job_id LIKE '%prog%' OR job_id LIKE '%SH%' 
    AND salary NOT IN (4500, 10000, 15000);
    
SELECT last_name
	FROM employees
    WHERE length(last_name) = 6;
    
SELECT last_name
	FROM employees
    WHERE last_name LIKE '__e%';

