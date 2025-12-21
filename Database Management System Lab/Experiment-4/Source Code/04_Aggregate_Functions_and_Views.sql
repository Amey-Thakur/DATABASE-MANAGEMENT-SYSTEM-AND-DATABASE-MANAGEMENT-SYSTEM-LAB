/*
 * Experiment 4: Aggregate Functions and Views
 * Author: Amey Thakur
 * Profile: https://github.com/Amey-Thakur
 * Repository: https://github.com/Amey-Thakur/DATABASE-MANAGEMENT-SYSTEM-AND-DATABASE-MANAGEMENT-SYSTEM-LAB
 *
 * Description:
 * This script demonstrates the use of Group Functions (Aggregate Functions) to perform 
 * calculations on sets of rows. It also introduces Views, which are virtual tables 
 * based on the result-set of an SQL statement, and how to verify them using data dictionary views.
 */

-- 1. Use Aggregate Functions on the Salary column.
-- Calculates Average, Maximum, Minimum, and Sum of salaries for all employees.
-- Group functions ignore NULL values.
SELECT AVG(SALARY), MAX(SALARY), MIN(SALARY), SUM(SALARY)
FROM EMPLOYEES;

-- 2. Count distinct Manager IDs.
-- Determines the number of unique managers in the EMPLOYEES table.
-- The "Number of Managers" alias provides a descriptive column header.
SELECT COUNT(DISTINCT MANAGER_ID) AS "Number of Managers"
FROM EMPLOYEES;

-- 3. Create a View named EMPLOYEES_VU.
-- This view restricts access to specific columns: Employee ID, Last Name (aliased as EMPLOYEE), and Department ID.
-- 'OR REPLACE' allows modification of satisfy existing view without dropping it first.
CREATE OR REPLACE VIEW EMPLOYEES_VU AS
SELECT EMPLOYEE_ID, LAST_NAME AS EMPLOYEE, DEPARTMENT_ID
FROM EMPLOYEES;

-- 4. Retrieve data from the newly created View.
-- Verifies that the view functions correctly as a virtual table.
-- Note: Fixed syntax error in original code (added missing columns/star).
SELECT *
FROM EMPLOYEES_VU;

-- 5. specific information about the View from the Data Dictionary.
-- 'USER_VIEWS' contains descriptions of the views owned by the current user.
-- Helpful for inspecting the query definition text of a view.
SELECT VIEW_NAME, TEXT
FROM USER_VIEWS;