SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users
FROM activity
WHERE activity_date BETWEEN "2019-07-27" - INTERVAL 29 DAY AND "2019-07-27"
AND session_id IS NOT NULL
GROUP BY activity_date
