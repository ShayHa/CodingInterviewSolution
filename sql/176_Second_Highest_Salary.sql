# This can also be done using limit and offset.
WITH cte AS (
   SELECT salary, RANK() OVER (ORDER BY salary) AS "rank"
   FROM employee
),
    cte2 AS (SELECT cte.salary, rank FROM cte WHERE rank = 2)

SELECT CASE when count(cte2.*) <> 1 then null else cte2.Salary END
FROM cte2
group by cte2.Salary


# Another solution

WITH cte AS (
   SELECT DISTINCT salary
   FROM employee
   ORDER BY salary DESC
   LIMIT 2
)

SELECT CASE WHEN COUNT(salary) <> 2 THEN NULL ELSE MIN(salary) END AS "SecondHighestSalary"
FROM cte
