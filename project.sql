with project_status as
(
select
project_id,
project_name,
project_budget,
'Completed' as status
from completed_projects
union all
select 
project_id,
project_name,
project_budget,
'Upcoming' as status
from [upcoming projects]
)

select 
e.employee_id,
e.first_name,
e.last_name,
e.salary,
d.Department_Name,
pa.project_id,
ps.status,
ps.project_name
from employees e
join departments d
on e.department_id = d.Department_ID
join project_assignments pa
on pa.employee_id = e.employee_id
join project_status ps
on ps.project_id = pa.project_id

