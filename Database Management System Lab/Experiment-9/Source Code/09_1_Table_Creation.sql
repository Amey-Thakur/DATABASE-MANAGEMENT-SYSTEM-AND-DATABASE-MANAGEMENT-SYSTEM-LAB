/*
 * Experiment 9.1: Database Triggers - Table Creation
 * Author: Amey Thakur
 * Profile: https://github.com/Amey-Thakur
 * Repository: https://github.com/Amey-Thakur/DATABASE-MANAGEMENT-SYSTEM-AND-DATABASE-MANAGEMENT-SYSTEM-LAB
 *
 * Description:
 * This script initializes the environment for the Triggers experiment.
 * It creates the 'EMP' and 'PROJECTS' tables and populates 'PROJECTS' with initial data.
 */

-- 1. Create the EMP (Employee) table.
CREATE TABLE EMP(
    ENO NUMBER,
    ENAME VARCHAR2(20),
    HOURS_SPENT NUMBER,
    PNO NUMBER
);

-- 2. Create the PROJECTS table.
CREATE TABLE PROJECTS(
    PNO NUMBER,
    PROJ_NAME VARCHAR2(20),
    TOTAL_HOURS NUMBER
);

-- 3. Populate PROJECTS table with initial data.
INSERT INTO PROJECTS VALUES (1, 'IMAGE PROCESSING', 0);
INSERT INTO PROJECTS VALUES (2, 'CLOUD COMPUTING', 0);
INSERT INTO PROJECTS VALUES (3, 'NETWORKING', 0);
INSERT INTO PROJECTS VALUES (4, 'MACHINE LEARNING', 0);

-- Verify PROJECTS initialization.
SELECT * FROM PROJECTS;
