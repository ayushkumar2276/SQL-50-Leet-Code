WITH day_agg AS (
    SELECT
        visited_on,
        SUM(amount) sum_amount
    FROM Customer
    GROUP BY 1
)
SELECT *
FROM (
    SELECT 
        visited_on,
        SUM(sum_amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) amount,
        ROUND(SUM(sum_amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) / 7, 2) average_amount
    FROM day_agg
) agg
WHERE visited_on >= DATE_ADD((SELECT MIN(visited_on) FROM Customer), INTERVAL 6 DAY) 
ORDER BY 1;
