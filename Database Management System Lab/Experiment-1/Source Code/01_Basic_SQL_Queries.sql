/*
 * Experiment 1: Basic SQL Queries
 * Author: Amey Thakur
 * Profile: https://github.com/Amey-Thakur
 * Repository: https://github.com/Amey-Thakur/DATABASE-MANAGEMENT-SYSTEM-AND-DATABASE-MANAGEMENT-SYSTEM-LAB
 *
 * Description:
 * This script demonstrates fundamental SQL queries including retrieving all records,
 * selecting specific columns, using column aliases for readability, and handling 
 * duplicate records using the DISTINCT keyword. Behaviours are explored using 
 * standard tables: EMPLOYEES, DEPARTMENTS, and JOB_GRADES.
 */

-- 1. Display all tables available in the current user's schema.
-- 'TAB' is a system view containing information about tables, views, and synonyms.
SELECT * FROM TAB;

-- 2. Display all records from the DEPARTMENTS table.
-- This retrieves every column and every row from the table.
SELECT * FROM DEPARTMENTS;

-- 3. Display all records from the JOB_GRADES table.
SELECT * FROM JOB_GRADES;

-- 4. Select a specific column (DEPARTMENT_ID) from the EMPLOYEES table.
-- This query returns the department ID for every employee record.
SELECT DEPARTMENT_ID FROM EMPLOYEES;

-- 5. Select a specific column (JOB_ID) from the EMPLOYEES table.
SELECT JOB_ID FROM EMPLOYEES;

-- 6. Select specific columns with Custom Data Labels (Aliases).
-- Using the 'AS' keyword to rename columns in the output for better readability.
-- EMPLOYEE_ID becomes "EMPLOYEE ID", LAST_NAME becomes "SURNAME", etc.
SELECT 
    EMPLOYEE_ID AS "EMPLOYEE ID", 
    LAST_NAME AS "SURNAME", 
    JOB_ID AS "JOB ID" 
FROM EMPLOYEES;

-- 7. Select distinct (unique) JOB_IDs from the EMPLOYEES table.
-- The DISTINCT keyword eliminates duplicate values from the result set.
SELECT DISTINCT JOB_ID FROM EMPLOYEES;

-- 8. Select distinct (unique) DEPARTMENT_IDs from the EMPLOYEES table.
-- Lists all unique departments where employees differ.
SELECT DISTINCT DEPARTMENT_ID FROM EMPLOYEES;