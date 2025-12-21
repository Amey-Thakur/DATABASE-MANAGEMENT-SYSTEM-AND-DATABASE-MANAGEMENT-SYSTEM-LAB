/*
 * Experiment 9.2: Database Triggers - After Insert
 * Author: Amey Thakur
 * Profile: https://github.com/Amey-Thakur
 * Repository: https://github.com/Amey-Thakur/DATABASE-MANAGEMENT-SYSTEM-AND-DATABASE-MANAGEMENT-SYSTEM-LAB
 *
 * Description:
 * Creates a trigger to automatically update project hours when a new employee is added.
 */

-- 1. Create Trigger: AFTER INSERT on EMP.
-- Adds the new employee's hours to the corresponding project's total.
CREATE OR REPLACE TRIGGER TRIG1
AFTER INSERT ON EMP
FOR EACH ROW
BEGIN
    UPDATE PROJECTS
    SET TOTAL_HOURS = TOTAL_HOURS + :NEW.HOURS_SPENT 
    WHERE PNO = :NEW.PNO;
END;
/

-- 2. Test Trigger 1: Insert new employees.
INSERT INTO EMP VALUES(101, 'ARCHIT', 8, 4);
INSERT INTO EMP VALUES(102, 'SAAKSHI', 8, 3);
INSERT INTO EMP VALUES(103, 'AMEY', 8, 2);
INSERT INTO EMP VALUES(104, 'MEGA', 8, 1);

-- 3. Verify results.
SELECT * FROM EMP;
SELECT * FROM PROJECTS;
