select e.emp_no, e.last_name, 
 e.first_name, e.sex, s.salary
from employees e 
 inner join salaries s 
  on e.emp_no = s.emp_no 
  

select e.first_name, e.last_name, e.sex,
 e.hire_date
from employees e 
where date_part('year', hire_date) = 1986
 
select d.dept_no, d.dept_name, e.emp_no, e.last_name, 
 e.first_name
from dept_manager dm
 inner join departments d
  on dm.dept_no = d.dept_no
 inner join employees e
  on dm.emp_no = e.emp_no
   
 select d.dept_no, e.emp_no, e.last_name, 
  e.first_name, d.dept_name
 from employees e
  inner join dept_emp de
   on e.emp_no = de.emp_no
  inner join departments d
   on de.dept_no = d.dept_no
   
 select e.first_name, e.last_name, e.sex
 from employees e
 where e.first_name = 'Hercules' and e.last_name like 'B%'
 
select e.emp_no, e.last_name, 
 e.first_name
from employees e
 inner join dept_emp de
  on e.emp_no = de.emp_no
 inner join departments d
  on de.dept_no = d.dept_no
where d.dept_name = 'Sales'

select e.emp_no, e.last_name, 
 e.first_name, d.dept_name
from employees e
 inner join dept_emp de
  on e.emp_no = de.emp_no
 inner join departments d
  on de.dept_no = d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'

select last_name, count(*)
from employees
group by last_name
order by count(*) desc
 
 
    
 