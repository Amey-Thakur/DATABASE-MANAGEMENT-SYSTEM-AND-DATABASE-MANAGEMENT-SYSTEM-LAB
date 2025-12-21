/*
 * Experiment 8: PL/SQL Procedures
 * Author: Amey Thakur
 * Profile: https://github.com/Amey-Thakur
 * Repository: https://github.com/Amey-Thakur/DATABASE-MANAGEMENT-SYSTEM-AND-DATABASE-MANAGEMENT-SYSTEM-LAB
 *
 * Description:
 * This script demonstrates the creation and execution of PL/SQL Stored Procedures.
 * It includes a procedure 'ADD_JOB' to insert records into a table and 'print_emp_data'
 * (QUERY_EMP) to retrieve and display specific employee information.
 */

-- 1. Create the JOBS table to store job details.
CREATE TABLE JOBS (
    JOB_ID      VARCHAR2(100),
    JOB_TITLE   VARCHAR2(100)
);

-- 2. Create the ADD_JOB procedure.
-- This procedure takes Job ID and Job Title as input parameters and inserts them into the JOBS table.
CREATE OR REPLACE PROCEDURE ADD_JOB (
    JOB_ID IN VARCHAR2, 
    JOB_TITLE IN VARCHAR2
)
AS
BEGIN
    INSERT INTO JOBS VALUES (JOB_ID, JOB_TITLE);
END;
/

-- 3. Invoke the ADD_JOB procedure with sample data ('IT_DBA', 'EMPLOYEE').
EXEC ADD_JOB('IT_DBA', 'EMPLOYEE');

-- Verify the insertion.
SELECT * FROM JOBS;

-- 4. Invoke the ADD_JOB procedure with updated title ('IT_DBA', 'DATABASE ADMINISTRATOR').
-- Note: Since no primary key constraint matches checked here, this inserts a new row.
EXEC ADD_JOB('IT_DBA', 'DATABASE ADMINISTRATOR');

-- Verify the insertion.
SELECT * FROM JOBS;

-- 5. Invoke the ADD_JOB procedure with another record ('ST_MAN', 'Stock Manager').
EXEC ADD_JOB('ST_MAN ', 'Stock Manager');

-- Verify all insertions.
SELECT * FROM JOBS;

-- 6. Create the QUERY_EMP procedure (implemented as 'print_emp_data').
-- This procedure accepts an Employee ID, retrieves their Salary and Job ID,
-- and prints the details to the DBMS output.
SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE print_emp_data (
    in_emp_id NUMBER
)
IS
    out_sal employees.salary%TYPE;
    out_id  employees.job_id%TYPE;
BEGIN
    SELECT salary, job_id
    INTO out_sal, out_id
    FROM employees
    WHERE employee_id = in_emp_id;
    
    DBMS_OUTPUT.PUT_LINE(out_sal || ' ' || out_id);
END;
/

-- 7. Execute the procedure for specific employees.
-- Example for Employee ID 100.
EXEC print_emp_data(100);

-- Example for Employee ID 149.
EXEC print_emp_data(149);
