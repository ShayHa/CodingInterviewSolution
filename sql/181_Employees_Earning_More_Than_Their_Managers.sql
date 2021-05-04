SELECT e1.name AS "employee"
FROM employee e1
        INNER JOIN employee e2 ON e1.managerId = e2.Id
WHERE e1.salary > e2.salary
