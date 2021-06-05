SELECT H.hacker_id, H.name
FROM HACKERS AS H
JOIN SUBMISSIONS AS S
ON S.hacker_id = H.hacker_id
JOIN CHALLENGES AS C
ON C.challenge_id = S.challenge_id
JOIN DIFFICULTY AS D
ON D.difficulty_level = C.difficulty_level
WHERE S.score = D.score
GROUP BY H.hacker_id, H.name
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC, S.hacker_id ASC;