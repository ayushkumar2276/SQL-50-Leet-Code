SELECT *
FROM CINEMA
WHERE id%2 != 0 AND description !="boring"
ORDER BY RATING DESC;
