
with num_wins as (
select
nominee,
count(*) wins
from oscar_nominees 
where winner = 'TRUE'
group by nominee
order by wins desc
)

select 
-- nw.nominee,
-- nw.wins,
ni.top_genre
from num_wins nw
left join nominee_information ni on ni.name = nw.nominee
order by wins desc, nw.nominee asc
limit 1;