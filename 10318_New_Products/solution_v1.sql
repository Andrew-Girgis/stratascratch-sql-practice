with count2019 as (
select 
cl.company_name cn19,
count(*) count19
from car_launches cl
where year = 2019
group by cl.company_name
),

count2020 as (
select 
cl.company_name cn20,
count(*) count20
from car_launches cl
where year = 2020
group by cl.company_name
)

select
distinct cl.company_name,
(count20 - count19) net_diff
from
car_launches cl
left join count2019 on count2019.cn19 = cl.company_name
left join count2020 on count2020.cn20 = cl.company_name


