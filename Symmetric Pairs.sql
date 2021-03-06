SELECT F.X, F.Y
FROM FUNCTIONS AS F
JOIN FUNCTIONS AS S
ON F.X = S.Y AND F.Y = S.X
GROUP BY F.X, F.Y
HAVING F.X < F.Y OR COUNT(*) >= 2
ORDER BY F.X;