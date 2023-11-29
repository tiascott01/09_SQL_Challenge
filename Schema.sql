
-- I Exported from QuickDBD: https://www.quickdatabasediagrams.com/ as a starting point but also edited the code myself.

-- Step 1. Drop Table it Exists
DROP TABLE IF EXISTS "employees";
DROP TABLE IF EXISTS "dept_emp";
DROP TABLE IF EXISTS "departments";
DROP TABLE IF EXISTS "salaries";
DROP TABLE IF EXISTS "dept_manager";
DROP TABLE IF EXISTS "titles";

-- Step 2. Create New Tables 
CREATE TABLE "employees" (
    "emp_no" INT NOT NULL,
    "emp_title" varchar(10) NOT NULL,
    "birth_date" date NOT NULL,
    "first_name" varchar(30) NOT NULL,
    "last_name" varchar(30) NOT NULL,
    "sex" varchar(1) NOT NULL,
    "hire_date" date NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" INT NOT NULL,
    "dept_no" varchar(10) NOT NULL
);

CREATE TABLE "departments" (
    "dept_no" varchar(10) NOT NULL,
    "dept_name" varchar(30) NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" INT NOT NULL,
    "salary" INT NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(10) NOT NULL,
    "emp_no" INT NOT NULL
);

CREATE TABLE "titles" (
    "title_id" varchar(10) NOT NULL,
    "title" varchar(30) NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

-- Step 3. Import Data into Tables 
-- I imported the csvs into the existing tables rather than use code here to import 

-- Step 4. Alter Tables to Tie Together

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title" FOREIGN KEY("emp_title")
REFERENCES "titles" ("title_id");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

-- Step 5. Run Queries
