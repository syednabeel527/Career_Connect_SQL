```sql
/*
===========================================================
Project Name : CareerConnect - Campus Placement Management System
Database     : career_connect_db
File         : 02_tables.sql

Description:
This file contains all the tables required for the
CareerConnect SQL Project.

Author : Syed Nabeel
===========================================================
*/

USE career_connect_db;

-- =========================================================
-- Table: students
-- Description: Stores student information
-- =========================================================

CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    department VARCHAR(50),
    cgpa DECIMAL(3,2),
    graduation_year INT
);

-- =========================================================
-- Table: departments
-- Description: Stores department information
-- =========================================================

CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR(100),
    hod_name VARCHAR(100),
    total_students INT
);

-- =========================================================
-- Table: companies
-- Description: Stores company details
-- =========================================================

CREATE TABLE companies (
    company_id INT,
    company_name VARCHAR(100),
    industry VARCHAR(100),
    location VARCHAR(100),
    package_lpa DECIMAL(5,2)
);

-- =========================================================
-- Table: jobs
-- Description: Stores job openings offered by companies
-- =========================================================

CREATE TABLE jobs (
    job_id INT,
    company_id INT,
    job_role VARCHAR(100),
    eligibility_cgpa DECIMAL(3,2),
    job_location VARCHAR(100)
);

-- =========================================================
-- Table: applications
-- Description: Stores job applications submitted by students
-- =========================================================

CREATE TABLE applications (
    application_id INT,
    student_id INT,
    company_id INT,
    job_id INT,
    application_date DATE,
    status VARCHAR(30)
);

-- =========================================================
-- Table: interviews
-- Description: Stores interview schedules and results
-- =========================================================

CREATE TABLE interviews (
    interview_id INT,
    application_id INT,
    interview_round VARCHAR(50),
    interview_date DATE,
    interview_time TIME,
    result VARCHAR(30)
);

-- =========================================================
-- Table: offers
-- Description: Stores final placement offers
-- =========================================================

CREATE TABLE offers (
    offer_id INT,
    student_id INT,
    company_id INT,
    offered_package DECIMAL(5,2),
    offer_date DATE,
    offer_status VARCHAR(30)
);
```
