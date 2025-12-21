/*
 * Experiment 6: DML and TCL Commands
 * Author: Amey Thakur
 * Profile: https://github.com/Amey-Thakur
 * Repository: https://github.com/Amey-Thakur/DATABASE-MANAGEMENT-SYSTEM-AND-DATABASE-MANAGEMENT-SYSTEM-LAB
 *
 * Description:
 * This script demonstrates Data Manipulation Language (DML) commands (INSERT, UPDATE, DELETE)
 * and Transaction Control Language (TCL) commands (COMMIT, SAVEPOINT, ROLLBACK).
 * It covers creating a table, populating it with data, modifying records, and managing
 * transaction states to ensure data integrity.
 */

-- 1. Create the MY_TAB table.
CREATE TABLE MY_TAB (
    ID          NUMBER PRIMARY KEY,
    LAST_NAME   VARCHAR(15),
    FIRST_NAME  VARCHAR(15),
    USERID      VARCHAR(15),
    SALARY      NUMBER
);

-- 2. Populate the table with sample data.
INSERT INTO MY_TAB VALUES (1, 'Patel', 'Ralph', 'Rpatel', 895);
INSERT INTO MY_TAB VALUES (2, 'Dance', 'Betty', 'Bdance', 860);
INSERT INTO MY_TAB VALUES (3, 'Biri', 'Ben', 'Bben', 1100);
INSERT INTO MY_TAB VALUES (4, 'Newman', 'Chad', 'Cnewman', 750);
INSERT INTO MY_TAB VALUES (5, 'Ropeburn', 'Audrey', 'Aropeburn', 1550);

-- 3. Delete a specific row (ID = 2) and verify deletion.
DELETE FROM MY_TAB WHERE ID = 2;

-- 4. Re-insert the deleted row.
INSERT INTO MY_TAB (ID, LAST_NAME, FIRST_NAME, USERID, SALARY) 
VALUES (2, 'Dance', 'Betty', 'Bdance', 860);

-- Verify the table data.
SELECT * FROM MY_TAB;

-- 5. Update Employee data.
-- Change Last Name of Employee 3 to 'Drexler'.
UPDATE MY_TAB 
SET LAST_NAME = 'Drexler' 
WHERE ID = 3;

-- Change Salary to 1000 for all employees with salary < 900.
UPDATE MY_TAB 
SET SALARY = 1000 
WHERE SALARY < 900;

-- Verify the updates.
SELECT * FROM MY_TAB;

-- 6. Commit changes to make them permanent.
COMMIT;

-- 7. Transaction Control Operations.
-- Create a Savepoint (Marker in the transaction).
SAVEPOINT Q7;

-- Delete all rows from the table.
DELETE FROM MY_TAB;

-- Verify the table is empty.
SELECT * FROM MY_TAB;

-- 8. Rollback to the previous state.
-- Undo the DELETE operation, restoring the data to the state at COMMIT or SAVEPOINT.
ROLLBACK;

-- Verify that data has been restored.
SELECT * FROM MY_TAB;
