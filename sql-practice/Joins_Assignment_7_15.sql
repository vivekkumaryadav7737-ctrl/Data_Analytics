#7 Display all departments and their employees (including departments with no employees).
select e.*,d.dept_name from employees e
right join departments d
on e.dept_id=d.dept_id;
#8 Display employee name, project name, assigned date. 
select e.emp_name,p.project_name,ep.assigned_date from employees e
join employee_projects ep
on e.emp_id=ep.emp_id
join projects p
on p.project_id=ep.project_id;
#9 Show employees working on "Mobile App". 
select e.emp_name,p.project_name,ep.assigned_date from employees e
join employee_projects ep
on e.emp_id=ep.emp_id
join projects p
on p.project_id=ep.project_id where p.project_name='Mobile App';
# 10  Find employees assigned to non-existing departments. 
select e.emp_name, e.dept_id from employees e
left join departments d
on e.dept_id = d.dept_id where e.dept_id
is not null and d.dept_id IS NULL;
# 11 Find records in employee_projects where employee does not exist.
select ep.emp_id, ep.project_id
from employee_projects ep
left join employees e on ep.emp_id = e.emp_id
where e.emp_id is null;
# 12 Find projects that have no employees assigned.
select p.* from projects p
left join employee_projects ep
on p.project_id=ep.project_id
left join employees e
on ep.emp_id=e.emp_id
where e.emp_id is null; 
# 13 Show department name and total salary. ]
select d.dept_name,sum(e.esal) as total_salary from employees e
join departments d
on e.dept_id=d.dept_id
group by d.dept_name;
# 14 Show project name and employee count. 
select p.project_name, count(ep.emp_id) as employee_count from projects p
left join employee_projects ep 
on p.project_id = ep.project_id
group by p.project_name;
#15 Show department with highest average salary
select d.dept_name, avg(e.esal) as avg_salary from employees e
join departments d
on e.dept_id = d.dept_id
group by d.dept_name
order by avg_salary desc
limit 1;
select * from employees;
select * from departments;