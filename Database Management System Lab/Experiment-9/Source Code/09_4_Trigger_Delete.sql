/*
 * Experiment 9.4: Database Triggers - After Delete
 * Author: Amey Thakur
 * Profile: https://github.com/Amey-Thakur
 * Repository: https://github.com/Amey-Thakur/DATABASE-MANAGEMENT-SYSTEM-AND-DATABASE-MANAGEMENT-SYSTEM-LAB
 *
 * Description:
 * Creates a trigger to deduct project hours when an employee is deleted.
 */

-- 1. Create Trigger: AFTER DELETE on EMP.
-- Subtracts the deleted employee's hours from the corresponding project's total.
CREATE OR REPLACE TRIGGER TRIG3
AFTER DELETE ON EMP
FOR EACH ROW
BEGIN
    UPDATE PROJECTS
    SET TOTAL_HOURS = TOTAL_HOURS - :OLD.HOURS_SPENT 
    WHERE PNO = :OLD.PNO;
END;
/

-- 2. Test Trigger 3: Delete employees.
DELETE FROM EMP WHERE ENO=103;
DELETE FROM EMP WHERE ENO=104;

-- 3. Verify results.
SELECT * FROM EMP;
SELECT * FROM PROJECTS;
