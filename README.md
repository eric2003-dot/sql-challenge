# sql-challenge-


Data Analysis
1. List the following details of each employee: employee number, last name, first name, sex, and salary.

select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
left join salaries on salaries.emp_no=employees.emp_no;

2. List first name, last name, and hire date for employees who were hired in 1986.

select * 
from employees 
where hire_date between '1986-01-01' and '1986-12-31';

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from dept_manager
left join departments on departments.dept_no = dept_manager.dept_no
left join employees on employees.emp_no = dept_manager.emp_no;

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
left join dept_emp on dept_emp.emp_no=employees.emp_no
left join departments on dept_emp.dep_no=departments.dept_no;

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select *
from employees
where first_name='Hercules' and last_name like 'B%';

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
left join departments on dept_emp.dep_no=departments.dept_no
left join employees on employees.emp_no=dept_emp.emp_no
where departments.dept_name='Sales';

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
left join departments on dept_emp.dep_no=departments.dept_no
left join employees on employees.emp_no=dept_emp.emp_no
where departments.dept_name='Sales' or departments.dept_name='Development';

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name. selct last_name, count(*) As freq_count
from employees
group by last_name
order by freq_count DESC;



