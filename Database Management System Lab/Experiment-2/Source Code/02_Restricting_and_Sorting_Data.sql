/*
 * Experiment 2: Restricting and Sorting Data
 * Author: Amey Thakur
 * Profile: https://github.com/Amey-Thakur
 * Repository: https://github.com/Amey-Thakur/DATABASE-MANAGEMENT-SYSTEM-AND-DATABASE-MANAGEMENT-SYSTEM-LAB
 *
 * Description:
 * This script focuses on filtering and sorting data using the WHERE, ORDER BY, 
 * BETWEEN, IN, and LIKE clauses. It also handles NULL values and introduces basic 
 * Single-Row Functions for character manipulation.
 */

-- 1. Select employees with a salary greater than 7000.
-- Using the basic comparison operator '>' to filter rows.
SELECT LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY > 7000;

-- 2. Select employees with a salary NOT between 5000 and 12000.
-- Display results sorted by Last Name in descending order.
-- The 'NOT BETWEEN' operator excludes the specified range (inclusive).
SELECT LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY NOT BETWEEN 5000 AND 12000
ORDER BY LAST_NAME DESC;

-- 3. Select employees in Department 20 or 50.
-- Display results sorted by Last Name in ascending order (default).
-- The 'IN' operator specifies a list of values to match.
SELECT LAST_NAME, DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID IN (20, 50)
ORDER BY LAST_NAME;

-- 4. Select employees who earn a commission.
-- Display results sorted by Salary, then by Commission Percentage.
-- 'IS NOT NULL' checks for the presence of a value.
SELECT LAST_NAME, SALARY, COMMISSION_PCT
FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL
ORDER BY SALARY, COMMISSION_PCT;

-- 5. Select employees with Job ID 'SA_REP' or 'ST_CLERK' excluding specific salaries.
-- Combining conditions with 'AND', 'OR', and 'NOT IN'.
-- Note: Fixed syntax error in original code (mixed quotes).
SELECT LAST_NAME, JOB_ID, SALARY
FROM EMPLOYEES
WHERE (JOB_ID = 'SA_REP' OR JOB_ID = 'ST_CLERK') 
  AND SALARY NOT IN (2500, 3500, 7000);

-- 6. Select employees whose name starts with 'A', 'J', or 'M'.
-- Using the 'LIKE' operator for pattern matching (% wildcard matches any string).
-- Also demonstrates Single-Row Functions: INITCAP (Format case) and LENGTH (Character count).
-- Note: Fixed syntax error in original code (mixed quotes).
SELECT INITCAP(LAST_NAME) AS "Formatted Name", LENGTH(LAST_NAME) AS "Name Length"
FROM EMPLOYEES
WHERE LAST_NAME LIKE 'A%' 
   OR LAST_NAME LIKE 'J%' 
   OR LAST_NAME LIKE 'M%';