SELECT H.hacker_id, H.name, COUNT(C.hacker_id) AS challenges_created
FROM CHALLENGES AS C
JOIN HACKERS AS H
ON H.hacker_id = C.hacker_id
GROUP BY H.hacker_id, H.name
HAVING 
    challenges_created =
    (
        SELECT MAX(count)
        FROM (SELECT COUNT(hacker_Id) AS count FROM CHALLENGES GROUP BY hacker_id) AS M
    )
    or
    challenges_created in
    (
        SELECT count
        FROM (SELECT COUNT(hacker_Id) AS count FROM CHALLENGES GROUP BY hacker_id) AS M
        GROUP BY count
        HAVING COUNT(count) = 1
    )
ORDER BY challenges_created DESC, hacker_id;