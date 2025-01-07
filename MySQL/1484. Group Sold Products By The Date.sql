SELECT sell_date, count(distinct product) as num_sold, GROUP_CONCAT(Distinct product ORDER BY product SEPARATOR ',') AS products
FROM ACTIVITIES
GROUP BY sell_date
ORDER BY sell_date;
