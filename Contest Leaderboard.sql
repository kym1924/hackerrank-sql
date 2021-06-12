SELECT H.hacker_id, H.name, SUM(S.max) AS Total
FROM 
(
    SELECT hacker_id, challenge_id, MAX(score) AS max
    FROM SUBMISSIONS
    GROUP BY hacker_id, challenge_id
) AS S
JOIN HACKERS AS H
ON H.hacker_id = S.hacker_id
GROUP BY H.hacker_id, H.name
HAVING Total != 0
ORDER BY Total DESC, H.hacker_id;