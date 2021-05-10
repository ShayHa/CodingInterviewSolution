WITH cte_odd AS (
    SELECT id + 1 AS id, s1.student
    FROM seat s1
    WHERE s1.id % 2 <> 0
),
     cte_even AS (
         SELECT id - 1 AS id, s1.student
         FROM seat s1
         WHERE s1.id % 2 = 0
     )

SELECT ROW_NUMBER() OVER (ORDER BY id) as id, student
FROM (SELECT *
      FROM cte_even
      UNION
      SELECT *
      FROM cte_odd) f

#OR
SELECT (CASE
            WHEN ((SELECT MAX(id) FROM seat) % 2 = 1) AND id = (SELECT MAX(id) FROM seat) THEN id
            WHEN id % 2 = 1 THEN id + 1
            ELSE id - 1
    END) AS id,
       student

FROM seat
ORDER BY id
