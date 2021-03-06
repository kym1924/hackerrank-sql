SET @INDEX = (SELECT COUNT(*)/2 FROM STATION);
SELECT ROUND(LAT_N,4)
FROM(
    SELECT LAT_N, ROW_NUMBER() OVER (ORDER BY LAT_N) AS R
    FROM STATION) STATION
WHERE R = @INDEX;