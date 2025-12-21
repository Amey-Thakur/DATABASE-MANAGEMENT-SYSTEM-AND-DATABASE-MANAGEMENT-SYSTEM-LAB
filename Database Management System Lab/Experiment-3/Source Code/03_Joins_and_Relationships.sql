/*
 * Experiment 3: Joins and Relationships
 * Author: Amey Thakur
 * Profile: https://github.com/Amey-Thakur
 * Repository: https://github.com/Amey-Thakur/DATABASE-MANAGEMENT-SYSTEM-AND-DATABASE-MANAGEMENT-SYSTEM-LAB
 *
 * Description:
 * This script demonstrates various types of SQL Joins to retrieve data from multiple 
 * tables simultaneously. It covers Equi-Joins, Cross Joins, Natural Joins, 
 * Left Outer Joins, and Full Outer Joins using the EMPLOYEES and DEPARTMENTS tables.
 */

-- 1. Equi-Join (Inner Join)
-- Retrieve Employee Last Name and Department Name by matching Department IDs.
-- This creates a link between the EMPLOYEES and DEPARTMENTS tables.
SELECT E.LAST_NAME, D.DEPARTMENT_NAME
FROM EMPLOYEES E, DEPARTMENTS D
WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID;

-- 2. Cross Join (Cartesian Product)
-- Join every row of EMPLOYEES with every row of DEPARTMENTS.
-- Result Set Size = (Rows in EMPLOYEES) * (Rows in DEPARTMENTS).
SELECT EMPLOYEE_ID, E.DEPARTMENT_ID, D.DEPARTMENT_NAME
FROM EMPLOYEES E CROSS JOIN DEPARTMENTS D;

-- 3. Natural Join with Filtering
-- Automatically joins tables based on columns with the same name and compatible data types.
-- Retrieves distinct Job ID, Department ID, and City for Department 80.
-- Note: Fixed syntax error in original code ('-' changed to '=').
SELECT DISTINCT JOB_ID, DEPARTMENT_ID, CITY
FROM EMPLOYEES 
NATURAL JOIN DEPARTMENTS 
NATURAL JOIN LOCATIONS
WHERE DEPARTMENT_ID = 80;

-- 4. Left Outer Join
-- Retrieves all records from the Left table (EMPLOYEES) and matching records from the Right table (DEPARTMENTS).
-- If no match is found, the Right side columns return NULL.
-- Note: Fixed syntax error in original code (missing '=' operator).
SELECT E.EMPLOYEE_ID, E.DEPARTMENT_ID, D.DEPARTMENT_NAME, D.MANAGER_ID
FROM EMPLOYEES E 
LEFT OUTER JOIN DEPARTMENTS D
ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID);

-- 5. Full Outer Join
-- Retrieves all records when there is a match in either the Left or Right table.
-- Returns NULL for non-matching rows from both sides.
-- Note: Fixed syntax error in original code (typos in column names and operator).
SELECT E.EMPLOYEE_ID, E.DEPARTMENT_ID, D.DEPARTMENT_NAME, D.MANAGER_ID
FROM EMPLOYEES E 
FULL OUTER JOIN DEPARTMENTS D
ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID);