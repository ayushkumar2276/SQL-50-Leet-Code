SELECT MAX(num) AS num
FROM (
    SELECT num
    FROM MYNUMBERS
    GROUP BY num
    HAVING COUNT(num) = 1
) AS unique_numbers;
