--------------------------------------------
-- DML statement for table 'HR' database --
--------------------------------------------

-- Query 1: retrieve all employees whose address is in Elgin,IL --
SELECT 
    f_name, l_name, address
FROM
    employees
WHERE
    address LIKE ('%elgin,il');

-- Query 2: retrieve all employees who were born during the 1970's --
SELECT 
    f_name, l_name, b_date
FROM
    employees
WHERE
    b_date LIKE ('197%');
    
-- Query 3: retrieve all employees in department 5 whose salary is betweeen 60000 and 70000 --
SELECT 
    f_name, l_name, dept_id, salary
FROM
    employees
WHERE
    salary BETWEEN 60000 AND 70000
        AND dept_id = 5;
    
-- Query 4A: retrieve a list of all employees according to department ID --
SELECT 
    f_name, l_name, dept_id
FROM
    employees
ORDER BY dept_id;
    
-- Query 4B: retrieve a list of all employees ordered in descending order by department ID and 
SELECT 
    f_name, l_name, dept_id
FROM
    employees
ORDER BY dept_id DESC , l_name DESC;
    
-- Query 5A: for each department ID retrieve the number of employees in the department --
SELECT 
    dept_id, COUNT(*)
FROM
    employees
GROUP BY dept_id;
    
-- Query 5B: For each department retrieve the number of employees in the department, and
SELECT 
    dept_id, COUNT(*), AVG(salary)
FROM
    employees
GROUP BY dept_id;
    
    -- Query 5C: Label the computed columns in the result set of Query 5B as “NUM_EMPLOYEES” and “AVG_SALARY” --
SELECT 
    dept_id,
    COUNT(*) AS num_employees,
    AVG(salary) AS avg_salary
FROM
    employees
GROUP BY dept_id;
    
-- Query 5D: in Query 5C order the result set by Average Salary -- 
SELECT 
    dept_id,
    COUNT(*) AS num_employees,
    AVG(salary) AS avg_salary
FROM
    employees
GROUP BY dept_id
ORDER BY avg_salary;
    
-- Query 5E: in Query 5D limit the result to departments with fewer than 4 employees -- 
SELECT 
    dept_id,
    COUNT(*) AS num_employees,
    AVG(salary) AS avg_salary
FROM
    employees
GROUP BY dept_id
HAVING COUNT(dept_id) < 4
ORDER BY avg_salary;
    
-- Bonus Query 6: Similar to 4B but instead of department ID use department name. 
SELECT 
    f_name, l_name, dept_name
FROM
    employees
        JOIN
    departments ON employees.dept_id = departments.dept_id
ORDER BY dept_name , l_name DESC;