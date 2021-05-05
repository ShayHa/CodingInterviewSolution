SELECT DISTINCT e1.employee_id
FROM employees e1
         INNER JOIN employees e2 ON e1.manager_id = e2.employee_id
         INNER JOIN employees e3 ON e3.employee_id = e2.manager_id
WHERE (e2.manager_id = 1 OR e3.manager_id = 1 OR e1.manager_id = 1)
  AND e1.employee_id <> 1
