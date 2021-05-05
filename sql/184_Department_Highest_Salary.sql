# Since we need all of the salaries with the same amount I use dense rank to get ranking

WITH cte AS (
   SELECT d.name                                                         AS "department",
          e.name                                                         AS "employee",
          e.salary,
          DENSE_RANK() OVER (PARTITION BY d.name ORDER BY e.salary DESC) AS "rank"
   FROM employee e
            INNER JOIN department d ON e.DepartmentId = d.Id)
SELECT cte.department, cte.employee, cte.salary
FROM cte
WHERE cte.rank = 1
