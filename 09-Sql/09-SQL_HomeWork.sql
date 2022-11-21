
--List the following details of each employee: 
--employee number, last name, first name, sex, and salary.
select
	e.emp_no,
	first_name,
	last_name,
	sex,
	s.salaray

from employees e
join salaries s
on e.emp_no = s.emp_no;

--List first name, last name, and hire date 
--for employees who were hired in 1986.

select
	first_name,
	last_name,
	hire_date

from employees e
where extract(year from hire_date) = '1986';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

select
	d.dept_no,
	de.dept_name,
	d.emp_no,
	last_name,
	first_name
	
from employees e
join dept_manager d
on e.emp_no = d.emp_no
join departments de
on d.dept_no = de.dept_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

select
	d.emp_no,
	last_name,
	first_name,
	de.dept_name

from employees e
join dept_emp d
on e.emp_no = d.emp_no
join departments de
on d.dept_no = de.dept_no;

--List first name, last name, and sex for employees whose 
--first name is "Hercules" and last names begin with "B."

select
	first_name,
	last_name,
	sex

from employees e
where first_name = 'Hercules'
and last_name like 'B%';

--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.

select
	d.emp_no,
	last_name,
	first_name,
	de.dept_name

from employees e
join dept_emp d
on e.emp_no = d.emp_no
join departments de
on d.dept_no = de.dept_no
where de.dept_name = 'Sales';

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

select
	d.emp_no,
	last_name,
	first_name,
	de.dept_name

from employees e
join dept_emp d
on e.emp_no = d.emp_no
join departments de
on d.dept_no = de.dept_no
where de.dept_name in ('Sales', 'Development');

--List the frequency count of employee last names 
--(i.e., how many employees share each last name) in descending order.

select

	last_name,
	count(last_name)
from employees e

group by last_name
order by 2 desc;



