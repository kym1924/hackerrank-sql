SELECT W.id, P.age, W.coins_needed, W.power
FROM (SELECT code, Min(coins_needed) AS coins_needed FROM WANDS GROUP BY code, power) AS M
JOIN WANDS AS W
ON W.code = M.code and W.coins_needed = M.coins_needed
JOIN WANDS_PROPERTY AS P
ON W.code = P.code
WHERE P.is_evil = 0
ORDER BY W.power DESC, P.age DESC;