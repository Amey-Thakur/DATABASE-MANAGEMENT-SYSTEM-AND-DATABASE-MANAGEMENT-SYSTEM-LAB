/*
 * Experiment 7: Subqueries
 * Author: Amey Thakur
 * Profile: https://github.com/Amey-Thakur
 * Repository: https://github.com/Amey-Thakur/DATABASE-MANAGEMENT-SYSTEM-AND-DATABASE-MANAGEMENT-SYSTEM-LAB
 *
 * Description:
 * This script demonstrates the use of Subqueries (Nested Queries) in SQL.
 * It includes Single-Row and Multi-Row subqueries to retrieve data based on 
 * dynamic conditions, such as matching department attributes or calculating 
 * averages.
 */

-- 1. Display the last name and hire date of any employee in the same department as 'Zlotkey'.
-- Exclude 'Zlotkey' from the results.
SELECT LAST_NAME, HIRE_DATE 
FROM EMPLOYEES 
WHERE DEPARTMENT_ID = (
    SELECT DEPARTMENT_ID 
    FROM EMPLOYEES 
    WHERE LAST_NAME = 'Zlotkey'
) 
AND LAST_NAME <> 'Zlotkey';

-- 2. Display employee numbers and last names of all employees who earn more than the average salary.
-- Sort the result in descending order of salary.
SELECT EMPLOYEE_ID, LAST_NAME 
FROM EMPLOYEES 
WHERE SALARY > (
    SELECT AVG(SALARY) 
    FROM EMPLOYEES
) 
ORDER BY SALARY DESC;

-- 3. Display employee numbers and last names of all employees who work in a department 
-- with any employee whose last name contains a 'u'.
SELECT EMPLOYEE_ID, LAST_NAME 
FROM EMPLOYEES 
WHERE DEPARTMENT_ID IN (
    SELECT DEPARTMENT_ID 
    FROM EMPLOYEES 
    WHERE LAST_NAME LIKE '%u%'
);

-- 4. Display the last name, department number, and job ID of all employees 
-- whose department location ID is 1700.
SELECT LAST_NAME, DEPARTMENT_ID, JOB_ID 
FROM EMPLOYEES 
WHERE DEPARTMENT_ID IN (
    SELECT DEPARTMENT_ID 
    FROM DEPARTMENTS 
    WHERE LOCATION_ID = 1700
);

-- 5. Display the department number, last name, and job ID for every employee 
-- in the 'Executive' department.
SELECT DEPARTMENT_ID, LAST_NAME, JOB_ID 
FROM EMPLOYEES 
WHERE DEPARTMENT_ID IN (
    SELECT DEPARTMENT_ID 
    FROM DEPARTMENTS 
    WHERE DEPARTMENT_NAME = 'Executive'
);
