CREATE TABLE departments (
  dept_no character varying(4) NOT NULL,
  dept_name character varying(25) NOT NULL
  
);

CREATE TABLE dept_emp (
  emp_no integer NOT NULL,
  dept_no character varying(4) NOT NULL
  
);

CREATE TABLE dept_manager (
  dept_no character varying(4) NOT NULL,
  emp_no integer NOT NULL

);

CREATE TABLE employees (
    emp_no integer NOT NULL,
    emp_title_id character varying(5) NOT NULL,
    birth_date timestamp without time zone NOT NULL,
	first_name character varying(25) NOT NULL,
	last_name character varying(25) NOT NULL,
	sex character varying(1) NOT NULL,
	hire_date timestamp without time zone NOT NULL
);
CREATE TABLE salaries (
    emp_no integer NOT NULL,
	salaray integer NOT NULL
);
CREATE TABLE titles (
	title_id character varying(25) NOT NULL,
	title character varying(25) NOT NULL

);