DROP TABLE IF EXISTS titles CASCADE;

CREATE TABLE "titles" (
    "title_id" VARCHAR NOT NULL,
    "title" VARCHAR NOT NULL,
    PRIMARY KEY ("title_id")
);

SELECT * from titles

-------------------------------------

DROP TABLE IF EXISTS employees CASCADE;

CREATE TABLE "employees" (
    "emp_no" INT NOT NULL,
    "emp_title_id" VARCHAR(10) NOT NULL,
    "birth_date" DATE NOT NULL,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "sex" VARCHAR NOT NULL,
    "hire_date" DATE NOT NULL,
    PRIMARY KEY ("emp_no"),
	FOREIGN KEY ("emp_title_id") REFERENCES "titles"("title_id")
);

SELECT * from employees

-------------------------------------

DROP TABLE IF EXISTS departments CASCADE;

CREATE TABLE "departments" (
    "dept_no" VARCHAR(10) NOT NULL,
    "dept_name" VARCHAR(50) NOT NULL,
	PRIMARY KEY ("dept_no")
);

SELECT * from departments

-------------------------------------

DROP TABLE IF EXISTS dept_emp CASCADE;

CREATE TABLE "dept_emp" (
    "emp_no" INT NOT NULL,
    "dept_no" VARCHAR(10) NOT NULL,
	FOREIGN KEY("dept_no") REFERENCES "departments"("dept_no"), 
	FOREIGN KEY("emp_no") REFERENCES "employees"("emp_no")
);

SELECT * from dept_emp

-------------------------------------

DROP TABLE IF EXISTS dept_manager CASCADE;

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(10) NOT NULL,
    "emp_no" INT NOT NULL,
	FOREIGN KEY("dept_no") REFERENCES "departments"("dept_no"), 
	FOREIGN KEY("emp_no") REFERENCES "employees"("emp_no")
);

SELECT * from dept_manager

-------------------------------------

DROP TABLE IF EXISTS salaries CASCADE;

CREATE TABLE "salaries" (
    "emp_no" INT NOT NULL,
    "salary" INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * from salaries

-------------------------------------
