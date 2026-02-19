with user_events as (
select
user_id,
DATE(timestamp),
MAX(case when action = 'page_load' then timestamp end) load,
MIN(case when action = 'page_exit' then timestamp end) exit
from facebook_web_log
group by user_id, DATE(timestamp)
)

select
user_id,
avg(exit - load) avg_session_duration
from user_events
where load is not null and exit is not null
group by user_id