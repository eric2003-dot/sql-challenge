DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE Departments (
    dept_no varchar PRIMARY KEY NOT NULL,
    dept_name varchar   NOT NULL
);

CREATE TABLE Employees (
    emp_no int PRIMARY KEY  NOT NULL,
	emp_title_id varchar NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    sex varchar   NOT NULL,
    hire_date date   NOT NULL
);

CREATE TABLE Dept_Manager (
    dept_no varchar   REFERENCES Departments(dept_no),
    emp_no int  REFERENCES Employees(emp_no)
);
z

DROP TABLE titles;

CREATE TABLE Titles (
    emp_title_id varchar NOT NULL,
    title varchar   NOT NULL
);

CREATE TABLE Salaries (
    emp_no int REFERENCES Employees(emp_no),
    salary int   NOT NULL
);

CREATE TABLE Dept_Emp (
    emp_no int   REFERENCES Employees(emp_no),
    dep_no varchar  REFERENCES Departments(dept_no)
);
