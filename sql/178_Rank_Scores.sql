#This solution uses dense rank and since I use the order by its ranking based on the score.
SELECT score, DENSE_RANK() OVER (ORDER BY score DESC) AS `rank`
FROM scores

#OR, another way without using window function as some companies require this.
SELECT
    b.Score,
	(SELECT COUNT(DISTINCT a.Score) FROM Scores a WHERE b.Score <= a.Score) as `Rank`
FROM Scores b ORDER BY `Rank`
