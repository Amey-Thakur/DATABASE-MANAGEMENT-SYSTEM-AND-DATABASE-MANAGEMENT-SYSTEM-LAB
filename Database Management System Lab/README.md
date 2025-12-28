<!-- =========================================================================================
                                     HEADER SECTION
     ========================================================================================= -->
<div align="center">

  # Database Management System Lab

  ### CSL503 · Semester V · Computer Engineering

  [![Curated by](https://img.shields.io/badge/Curated%20by-Amey%20Thakur-blue.svg)](https://github.com/Amey-Thakur)
  [![Programs](https://img.shields.io/badge/Programs-10-yellowgreen.svg)](#laboratory-experiments)
  [![Language](https://img.shields.io/badge/Language-SQL-blueviolet.svg)](./)

  **A collection of SQL programs covering DDL, DML, DCL commands, Joins, Views, Triggers, and more, executed as part of the Database Management System Laboratory.**

  ---

  [How to Use](#how-to-use) &nbsp;·&nbsp; [Learning Path](#learning-path) &nbsp;·&nbsp; [Experiment 1](#experiment-1-introduction-to-sql-ddl--dml-commands) &nbsp;·&nbsp; [Experiment 2](#experiment-2-constraints--built-in-functions) &nbsp;·&nbsp; [Experiment 3](#experiment-3-joins--set-operations) &nbsp;·&nbsp; [Experiment 4](#experiment-4-views--subqueries) &nbsp;·&nbsp; [Experiment 5](#experiment-5-ddl-and-constraints-recreated) &nbsp;·&nbsp; [Experiment 6](#experiment-6-dml-and-tcl-commands-recreated) &nbsp;·&nbsp; [Experiment 7](#experiment-7-subqueries-recreated) &nbsp;·&nbsp; [Experiment 8](#experiment-8-plsql-procedures-recreated) &nbsp;·&nbsp; [Experiment 9](#experiment-9-database-triggers) &nbsp;·&nbsp; [Experiment 10](#experiment-10-plsql-cursors)

</div>

---

> [!TIP]
> **Tip**: For comprehensive theory notes and exam resources, check out [Mega's Notes](../README.md#megas-notes) in the main repository. These collaboratively curated notes provide the theoretical foundation necessary for mastering these practical experiments.

> [!WARNING]
> **Data Integrity**: When executing DML commands (INSERT, UPDATE, DELETE), always remember to `COMMIT` your transactions to permanently save changes. Exercise extreme caution when using `DELETE` or `DROP` statements without a `WHERE` clause to avoid irreversible data loss.

---



<!-- =========================================================================================
                                     HOW TO USE
     ========================================================================================= -->
## How to Use

### Running SQL Scripts
These scripts are tailored for **Oracle Database** environments.

**1. Prerequisites**
Ensure you have access to one of the following tools:
- **Oracle SQL*Plus** (Command Line Interface)
- **Oracle SQL Developer** (GUI Tool)
- **Oracle LiveSQL** (Online Compiler)

**2. Execution Guide**
To execute a script file (e.g., `filename.sql`) in SQL*Plus, use the `@` command followed by the file path:

```sql
-- Syntax: @<path_to_file>/<filename>.sql
@D:/DBMS_Lab/Experiment-1/01_Basic_SQL_Queries.sql
```

---

<!-- =========================================================================================
                                     LEARNING PATH
     ========================================================================================= -->
## Learning Path

**Beginner Level:**
- Start with **Experiment 1 & 2** to understand table creation, data types, and constraints.
- Practice basic DML (Insert, Update, Delete) and DQL (Select).

**Intermediate Level:**
- Explore **Experiment 3, 4 & 7** to master Joins, Subqueries, and Views.
- Understand how to query data from multiple sources efficiently.

**Advanced Level:**
- Study **Experiments 5, 8, 9 & 10** for PL/SQL programming (Procedures, Triggers, Cursors).
- Learn **DDL/DML/TCL (Exp 5 & 6)** for database transaction and schema management.

---

<!-- =========================================================================================
                                     EXPERIMENT 1
     ========================================================================================= -->
## Experiment 1: Introduction to SQL (DDL & DML Commands)

Implementation of Data Definition Language (DDL) and Data Manipulation Language (DML) commands to create and manage database schemas.

**Date**: July 14, 2020

| # | Program | Description | Source Code |
|:-:|:---|:---|:-:|
| 1 | 01_Basic_SQL_Queries.sql | Creating tables and inserting data | [View](Experiment-1/Source%20Code/01_Basic_SQL_Queries.sql) |
| — | Lab Report | Detailed experiment report | [View](Experiment-1/Amey_B-50_DBMS_Experiments-1.pdf) |

---

<!-- =========================================================================================
                                     EXPERIMENT 2
     ========================================================================================= -->
## Experiment 2: Constraints & Built-in Functions

Applying integrity constraints and utilizing SQL built-in functions for data analysis.

**Date**: July 21, 2020

| # | Program | Description | Source Code |
|:-:|:---|:---|:-:|
| 1 | 02_Restricting_and_Sorting_Data.sql | Primary Key, Foreign Key, NOT NULL, Check etc. | [View](Experiment-2/Source%20Code/02_Restricting_and_Sorting_Data.sql) |
| — | Lab Report | Detailed experiment report | [View](Experiment-2/Amey_B-50_DBMS_Experiments-2.pdf) |

---

<!-- =========================================================================================
                                     EXPERIMENT 3
     ========================================================================================= -->
## Experiment 3: Joins & Set Operations

Combining data from multiple tables using Joins and performing Set operations (Union, Intersect, Minus).

**Date**: July 28, 2020

| # | Program | Description | Source Code |
|:-:|:---|:---|:-:|
| 1 | 03_Joins_and_Relationships.sql | Inner, Left, Right, Full Joins & Set Ops | [View](Experiment-3/Source%20Code/03_Joins_and_Relationships.sql) |
| — | Lab Report | Detailed experiment report | [View](Experiment-3/Amey_B-50_DBMS_Experiments-3.pdf) |

---

<!-- =========================================================================================
                                     EXPERIMENT 4
     ========================================================================================= -->
## Experiment 4: Views & Subqueries

Creating virtual tables (Views) and writing complex queries using Subqueries.

**Date**: August 04, 2020

| # | Program | Description | Source Code |
|:-:|:---|:---|:-:|
| 1 | 04_Aggregate_Functions_and_Views.sql | Creating Views and Nested Queries | [View](Experiment-4/Source%20Code/04_Aggregate_Functions_and_Views.sql) |
| — | Lab Report | Detailed experiment report | [View](Experiment-4/Amey_B-50_DBMS_Experiments-4.pdf) |

---

<!-- =========================================================================================
                                     EXPERIMENT 5
     ========================================================================================= -->
## Experiment 5: DDL and Constraints (Recreated)

Advanced DDL operations including altering tables and managing constraints.

**Date**: August 14, 2020

| # | Program | Description | Source Code |
|:-:|:---|:---|:-:|
| 1 | 05_DDL_and_Constraints.sql | Altering tables, constraints, renaming | [View](Experiment-5/Source%20Code/05_DDL_and_Constraints.sql) |
| — | Lab Report | Detailed experiment report | [View](Experiment-5/Amey_B-50_DBMS_Experiments-5.pdf) |

---

<!-- =========================================================================================
                                     EXPERIMENT 6
     ========================================================================================= -->
## Experiment 6: DML and TCL Commands (Recreated)

Performing Data Manipulation and Transaction Control operations.

**Date**: August 21, 2020

| # | Program | Description | Source Code |
|:-:|:---|:---|:-:|
| 1 | 06_DML_and_TCL.sql | Insert, Update, Delete, Commit, Rollback | [View](Experiment-6/Source%20Code/06_DML_and_TCL.sql) |
| — | Lab Report | Detailed experiment report | [View](Experiment-6/Amey_B-50_DBMS_Experiments-6.pdf) |

---

<!-- =========================================================================================
                                     EXPERIMENT 7
     ========================================================================================= -->
## Experiment 7: Subqueries (Recreated)

Advanced data retrieval using various types of subqueries.

**Date**: August 28, 2020

| # | Program | Description | Source Code |
|:-:|:---|:---|:-:|
| 1 | 07_Subqueries.sql | Single-row and Multi-row subqueries | [View](Experiment-7/Source%20Code/07_Subqueries.sql) |
| — | Lab Report | Detailed experiment report | [View](Experiment-7/Amey_B-50_DBMS_Experiments-7.pdf) |

---

<!-- =========================================================================================
                                     EXPERIMENT 8
     ========================================================================================= -->
## Experiment 8: PL/SQL Procedures (Recreated)

Introduction to Procedural SQL (PL/SQL) stored procedures.

**Date**: September 09, 2020

| # | Program | Description | Source Code |
|:-:|:---|:---|:-:|
| 1 | 08_PLSQL_Procedures.sql | Creating and executing stored procedures | [View](Experiment-8/Source%20Code/08_PLSQL_Procedures.sql) |
| — | Lab Report | Detailed experiment report | [View](Experiment-8/Amey_B-50_DBMS_Experiments-8.pdf) |

---

<!-- =========================================================================================
                                     EXPERIMENT 9
     ========================================================================================= -->
## Experiment 9: Database Triggers

Automating database actions using Row-Level Triggers.

**Date**: November 24, 2020

| # | Program | Description | Source Code |
|:-:|:---|:---|:-:|
| 1 | 09_1_Table_Creation.sql | Setup: Creating EMP and PROJECTS tables | [View](Experiment-9/Source%20Code/09_1_Table_Creation.sql) |
| 2 | 09_2_Trigger_Insert.sql | Trigger: Update hours on Insert | [View](Experiment-9/Source%20Code/09_2_Trigger_Insert.sql) |
| 3 | 09_3_Trigger_Update.sql | Trigger: Update hours on Update | [View](Experiment-9/Source%20Code/09_3_Trigger_Update.sql) |
| 4 | 09_4_Trigger_Delete.sql | Trigger: Update hours on Delete | [View](Experiment-9/Source%20Code/09_4_Trigger_Delete.sql) |
| — | Lab Report | Detailed experiment report | [View](Experiment-9/Amey_B-50_DBMS_Experiments-9.pdf) |

---

<!-- =========================================================================================
                                     EXPERIMENT 10
     ========================================================================================= -->
## Experiment 10: PL/SQL Cursors

Handling row-by-row processing using Explicit and Implicit Cursors.

**Date**: December 02, 2020

| # | Program | Description | Source Code |
|:-:|:---|:---|:-:|
| 1 | 10_1_Explicit_Cursor.sql | Explicit Cursor example (Join) | [View](Experiment-10/Source%20Code/10_1_Explicit_Cursor.sql) |
| 2 | 10_2_Implicit_Cursor.sql | Implicit Cursor example (For Update) | [View](Experiment-10/Source%20Code/10_2_Implicit_Cursor.sql) |
| — | Lab Report | Detailed experiment report | [View](Experiment-10/Amey_B-50_DBMS_Experiments-10.pdf) |

---



<!-- =========================================================================================
                                     FOOTER SECTION
     ========================================================================================= -->
<div align="center">

  <!-- Footer Navigation -->
  [↑ Back to Top](#database-management-system-lab)

  [How to Use](#how-to-use) &nbsp;·&nbsp; [Learning Path](#learning-path) &nbsp;·&nbsp; [Experiment 1](#experiment-1-introduction-to-sql-ddl--dml-commands) &nbsp;·&nbsp; [Experiment 2](#experiment-2-constraints--built-in-functions) &nbsp;·&nbsp; [Experiment 3](#experiment-3-joins--set-operations) &nbsp;·&nbsp; [Experiment 4](#experiment-4-views--subqueries) &nbsp;·&nbsp; [Experiment 5](#experiment-5-ddl-and-constraints-recreated) &nbsp;·&nbsp; [Experiment 6](#experiment-6-dml-and-tcl-commands-recreated) &nbsp;·&nbsp; [Experiment 7](#experiment-7-subqueries-recreated) &nbsp;·&nbsp; [Experiment 8](#experiment-8-plsql-procedures-recreated) &nbsp;·&nbsp; [Experiment 9](#experiment-9-database-triggers) &nbsp;·&nbsp; [Experiment 10](#experiment-10-plsql-cursors)

  <br>

  🏠 **[Back to Main Repository](../)**

</div>

---

<div align="center">

  ### [Database Management System and Database Management System Lab](../)

  **CSC502 & CSL503 · Semester V · Computer Engineering**

  *University of Mumbai · Curated by [Amey Thakur](https://github.com/Amey-Thakur)*

</div>
