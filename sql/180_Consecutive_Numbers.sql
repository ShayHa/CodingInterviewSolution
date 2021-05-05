# The idea is to use lead to get the next and the other next near the corrent number then check if they are all equal.
# If we needed to use this for N consecutive numbers we should use recursion
WITH cte AS (SELECT *, LEAD(num) OVER () AS "next_n", LEAD(num, 2) OVER () AS "next_2n"
            FROM logs l1)
SELECT DISTINCT num
FROM cte
WHERE num = cte.next_n
 AND cte.next_n = cte.next_2n
