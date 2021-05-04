DELETE
FROM Person p
WHERE p.Id NOT IN (
            SELECT MIN(p2.Id)
            FROM Person p2
            GROUP BY p2.Email)
