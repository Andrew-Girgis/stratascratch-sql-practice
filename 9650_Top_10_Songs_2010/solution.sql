select * from billboard_top_100_year_end;

select
distinct year_rank,
group_name,
song_name
from 
billboard_top_100_year_end
where year = 2010
order by year_rank asc
limit 10