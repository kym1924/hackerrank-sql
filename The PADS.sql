SELECT CONCAT(NAME, "(", SUBSTR(OCCUPATION, 1, 1), ")")
FROM OCCUPATIONS
ORDER BY NAME;
SELECT CONCAT("There are a total of ", COUNT(OCCUPATION), " ", LOWER(OCCUPATION), "s.")
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION), OCCUPATION;