SELECT
   v.customer_id,
   COUNT(v.visit_id) as count_no_trans
FROM Visits as v
WHERE visit_id not in (SELECT visit_id FROM Transactions)
GROUP BY 1
