WITH cte AS (
    SELECT DISTINCT ra.requester_id, ra.accepter_id
    FROM RequestAccepted ra
),
     cte2 AS (
         SELECT DISTINCT fr.sender_id, fr.send_to_id
         FROM FriendRequest fr
     )

SELECT ROUND(COALESCE((SELECT COUNT(*) FROM cte) / (SELECT COUNT(*) FROM cte2), 0), 2) AS "accept_rate"

-- Or for Postgres

WITH accepted AS (
    SELECT DISTINCT requester_id, accepter_id
    FROM requestaccepted
),
     sendes AS (
         SELECT DISTINCT sender_id, send_to_id
         FROM friendrequest
     )

SELECT COALESCE(
        ROUND(
            (SELECT COUNT(*) FROM accepted) /
            NULLIF((SELECT COUNT(*) FROM sendes), 0), 2), 0) AS accept_rate
