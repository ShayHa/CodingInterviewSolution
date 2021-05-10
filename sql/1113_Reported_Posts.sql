SELECT extra AS report_reason, COUNT(DISTINCT post_id) report_count
FROM actions
WHERE action_date = '2019-07-05' - INTERVAL 1 DAY AND ACTION = 'report'
GROUP BY extra
