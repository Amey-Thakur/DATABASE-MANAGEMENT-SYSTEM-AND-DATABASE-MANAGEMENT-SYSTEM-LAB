/*
 * Experiment 5: DDL Commands and Constraints
 * Author: Amey Thakur
 * Profile: https://github.com/Amey-Thakur
 * Repository: https://github.com/Amey-Thakur/DATABASE-MANAGEMENT-SYSTEM-AND-DATABASE-MANAGEMENT-SYSTEM-LAB
 *
 * Description:
 * This script demonstrates the use of Data Definition Language (DDL) commands to create 
 * and modify database structures. It covers creating tables with Primary Keys, 
 * adding new columns using ALTER TABLE, and enforcing referential integrity with Foreign Key constraints.
 */

-- 1. Create the DEPT (Department) table.
-- Defines the structure for storing department information.
-- 'Dept_id' is the Primary Key, ensuring each department has a unique identifier.
CREATE TABLE DEPT (
    Dept_id       NUMBER PRIMARY KEY,
    Dept_name     VARCHAR(10),
    Dept_location NUMBER
);

-- 2. Create the EMP (Employee) table.
-- Defines the structure for storing employee details.
-- 'Emp_id' is the Primary Key.
CREATE TABLE EMP (
    Emp_id     NUMBER PRIMARY KEY,
    Last_name  VARCHAR(25),
    First_name VARCHAR(25),
    Address    VARCHAR(25)
);

-- 3. Create the LOC (Location) table.
-- Defines the structure for storing location details.
-- 'Loc_id' is the Primary Key.
CREATE TABLE LOC (
    Loc_id   NUMBER PRIMARY KEY,
    Loc_name VARCHAR(25)
);

-- 4. Add a new column to the EMP table.
-- Uses ALTER TABLE to append 'dept_id' to the existing EMP table structure.
-- This column will later serve as the Foreign Key link to the DEPT table.
ALTER TABLE EMP ADD dept_id NUMBER;

-- Verify the column addition by selecting all columns (Optional check).
SELECT * FROM EMP;

-- 5. Add a Foreign Key constraint to the EMP table.
-- Establishes a relationship between EMP (Child Table) and DEPT (Parent Table).
-- Ensures that the 'dept_id' in EMP must match a valid 'Dept_id' in DEPT.
ALTER TABLE EMP 
ADD CONSTRAINT emp_fk FOREIGN KEY (dept_id) 
REFERENCES DEPT (Dept_id);

-- 6. Rename the EMP table to MY_EMP.
-- Changes the name of an existing table without affecting its data or definitions.
ALTER TABLE EMP RENAME TO MY_EMP;

-- Verify the renaming operation by querying the USER_TABLES dictionary view.
SELECT TABLE_NAME 
FROM USER_TABLES 
WHERE TABLE_NAME = 'MY_EMP';

-- 7. Verify created constraints.
-- Querying USER_CONSTRAINTS to confirm the existence of Primary and Foreign Keys 
-- on 'MY_EMP' and 'DEPT' tables.
SELECT * 
FROM USER_CONSTRAINTS 
WHERE TABLE_NAME IN ('MY_EMP', 'DEPT');

-- 8. Drop the DEPT table.
-- Removes the table structure and its data from the database.
-- Note: Dropping a parent table with dependent child records will raise an error 
-- unless 'CASCADE CONSTRAINTS' is used.
DROP TABLE DEPT CASCADE CONSTRAINTS;

-- 9. Drop the MY_EMP table.
-- Clean up by removing the renamed employee table.
DROP TABLE MY_EMP;
