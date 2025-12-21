/*
 * Experiment 10.2: Implicit Cursors and FOR UPDATE Clause
 * Author: Amey Thakur
 * Profile: https://github.com/Amey-Thakur
 * Repository: https://github.com/Amey-Thakur/DATABASE-MANAGEMENT-SYSTEM-AND-DATABASE-MANAGEMENT-SYSTEM-LAB
 *
 * Description:
 * This script demonstrates an Implicit Cursor using a FOR loop with the FOR UPDATE clause.
 * It iterates through employees in Department 80, raises their salary by 20%,
 * and prints the updated details.
 */

SET SERVEROUTPUT ON;

DECLARE
    -- Cursor to select employees from Department 80 for update.
    CURSOR C1 IS 
        SELECT EMPLOYEE_ID, SALARY 
        FROM EMPLOYEES
        WHERE DEPARTMENT_ID = 80
        FOR UPDATE;
BEGIN
    -- Implicit Cursor FOR Loop (automatically opens, fetches, and closes).
    FOR I IN C1
    LOOP
        -- Update the salary of the current row using WHERE CURRENT OF.
        UPDATE EMPLOYEES
        SET SALARY = SALARY + (SALARY * 0.2)
        WHERE CURRENT OF C1;
        
        -- Display the Employee ID and (Initial) Salary.
        -- Note: 'I.SALARY' holds the value fetched before the update.
        DBMS_OUTPUT.PUT_LINE(I.EMPLOYEE_ID || ' ... ' || I.SALARY);
    END LOOP;
END;
/
