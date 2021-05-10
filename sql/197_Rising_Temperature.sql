WITH cte AS (SELECT id,
                    temperature,
                    LAG(temperature) OVER (ORDER BY recordDate ASC) AS "previous",
                    recordDate,
                    LAG(recordDate) OVER (ORDER BY recordDate ASC)  AS "previous_date"
             FROM weather)
SELECT id
FROM cte
WHERE temperature > previous
  AND recordDate::DATE - previous_date::DATE = 1

# OR
SELECT t1.id
FROM weather t1
         left JOIN weather t2 ON t1.id = t2.id + 1
WHERE t1.Temperature > t2.Temperature
  AND t1.RecordDate::DATE - t2.RecordDate::DATE = 1
