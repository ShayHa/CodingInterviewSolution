WITH cte AS (
    SELECT id, email, RANK() OVER (PARTITION BY email ORDER BY id ASC) AS 'rank'
    FROM person
)
SELECT DISTINCT email
FROM cte
WHERE cte.rank > 1

-- Another solution is to group by or self join where id <> id