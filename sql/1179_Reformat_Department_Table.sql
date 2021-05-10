SELECT id,
       SUM(CASE WHEN Department.month = 'Jan' THEN Department.revenue END) AS "Jan Rev",
       SUM(CASE WHEN Department.month = 'Feb' THEN Department.revenue END) AS "Feb Rev",
       SUM(CASE WHEN Department.month = 'Mar' THEN Department.revenue END) AS "Mar Rev"

FROM Department
GROUP BY id
