with max_eng as (
select
MAX(e.salary) as salary
from 
db_employee e
join
db_dept d
on
e.department_id = d.id
where d.department = 'engineering'
),

max_marketing as (
select
MAX(e.salary) as salary
from 
db_employee e
join
db_dept d
on
e.department_id = d.id
where d.department = 'marketing'
)

select 
( max_marketing.salary - max_eng.salary)
from 
max_eng
cross join max_marketing