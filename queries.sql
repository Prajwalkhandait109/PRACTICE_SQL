-- Get all employees
SELECT * FROM employees;

-- Find employees in Engineering department
SELECT name, salary
FROM employees
WHERE department = 'Engineering';

-- Get employees hired after 2022
SELECT name, hire_date
FROM employees
WHERE hire_date > '2022-01-01';

-- Average salary per department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- Total hours worked per project
SELECT project_id, SUM(hours_worked) AS total_hours
FROM employee_projects
GROUP BY project_id;

-- Employees earning more than company average
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Join 
-- Employees who are not assigned to any project
SELECT e.name
FROM employees e
LEFT JOIN employee_projects ep
ON e.employee_id = ep.employee_id
WHERE ep.project_id IS NULL;