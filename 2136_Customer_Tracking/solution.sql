with ordered as (
  select
    cust_id,
    state,
    timestamp as ts,
    lead(state) OVER (partition by cust_id order by timestamp) AS next_state,
    lead(timestamp)  OVER (partition by cust_id order by timestamp) AS next_ts
  FROM cust_tracking
)
SELECT
  cust_id,
  SUM(
    CASE
      WHEN state = 1 AND next_state = 0
        THEN EXTRACT(EPOCH FROM (next_ts - ts))/3600  -- hours
    END
  ) AS total_active_seconds
FROM ordered
GROUP BY cust_id
ORDER BY cust_id;
