/*
 * Experiment 9.3: Database Triggers - After Update
 * Author: Amey Thakur
 * Profile: https://github.com/Amey-Thakur
 * Repository: https://github.com/Amey-Thakur/DATABASE-MANAGEMENT-SYSTEM-AND-DATABASE-MANAGEMENT-SYSTEM-LAB
 *
 * Description:
 * Creates a trigger to update project hours when an employee record is updated.
 */

-- 1. Create Trigger: AFTER UPDATE on EMP.
-- Logic: If an employee's project changes, we just add hours to the new project 
-- (following the simplified logic of the original lab experiment).
CREATE OR REPLACE TRIGGER TRIG2
AFTER UPDATE ON EMP
FOR EACH ROW
BEGIN
    UPDATE PROJECTS
    SET TOTAL_HOURS = TOTAL_HOURS + :NEW.HOURS_SPENT 
    WHERE PNO = :NEW.PNO;
END;
/

-- 2. Test Trigger 2: Update an employee's Project Number.
UPDATE EMP SET PNO=4 WHERE ENO=102;

-- 3. Verify results.
SELECT * FROM EMP;
SELECT * FROM PROJECTS;
