WITH requester AS (
   SELECT request_accepted.requester_id AS id, COUNT(*) cnt
   FROM request_accepted
   GROUP BY request_accepted.requester_id
),
    accepter AS (
        SELECT request_accepted.accepter_id AS id, COUNT(*) cnt
        FROM request_accepted
        GROUP BY request_accepted.accepter_id
    )

SELECT id, COALESCE(r.cnt, 0) + COALESCE(a.cnt, 0) total
FROM requester r
        LEFT JOIN accepter a USING (id)
ORDER BY total DESC
LIMIT 1;

#OR

SELECT id1 AS id, COUNT(*) AS num
FROM (
SELECT requester_id AS id1, accepter_id AS id2 FROM request_accepted
UNION
SELECT accepter_id AS id1 , requester_id AS id2 FROM request_accepted
) a
GROUP BY 1
ORDER BY COUNT(*) DESC
LIMIT 1
