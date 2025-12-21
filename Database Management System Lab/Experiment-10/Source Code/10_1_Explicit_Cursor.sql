/*
 * Experiment 10.1: Explicit Cursors
 * Author: Amey Thakur
 * Profile: https://github.com/Amey-Thakur
 * Repository: https://github.com/Amey-Thakur/DATABASE-MANAGEMENT-SYSTEM-AND-DATABASE-MANAGEMENT-SYSTEM-LAB
 *
 * Description:
 * This script demonstrates the use of an Explicit Cursor to retrieve and display
 * department and manager information by joining EMPLOYEES and DEPARTMENTS tables.
 */

SET SERVEROUTPUT ON SIZE 1000000;

DECLARE
    -- Declare a Cursor to fetch Chief/Manager details with their Department.
    CURSOR CUR_CHIEF IS
        SELECT E.FIRST_NAME,
               E.LAST_NAME,
               D.DEPARTMENT_NAME
        FROM EMPLOYEES E
        INNER JOIN DEPARTMENTS D ON D.MANAGER_ID = E.EMPLOYEE_ID;
        
    -- Declare a record variable matching the cursor's row structure.
    R_CHIEF CUR_CHIEF%ROWTYPE;

BEGIN
    -- Open the Cursor.
    OPEN CUR_CHIEF;
    
    LOOP
        -- Fetch row into the record.
        FETCH CUR_CHIEF INTO R_CHIEF;
        
        -- Exit condition: When no more rows are found.
        EXIT WHEN CUR_CHIEF%NOTFOUND;

        -- Display the fetched information.
        -- Format: Department Name . First Name : Last Name
        DBMS_OUTPUT.PUT_LINE(R_CHIEF.DEPARTMENT_NAME || '. ' || 
                             R_CHIEF.FIRST_NAME || ' : ' || 
                             R_CHIEF.LAST_NAME);
    END LOOP;
    
    -- Close the Cursor.
    CLOSE CUR_CHIEF;
END;
/
