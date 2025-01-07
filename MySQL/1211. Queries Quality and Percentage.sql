SELECT QUERY_NAME, ROUND(AVG(RATING/POSITION),2) AS quality, ROUND(COUNT(CASE WHEN RATING <3 THEN 1 END) * 100/COUNT(*),2) AS poor_query_percentage
FROM QUERIES 
GROUP BY QUERY_NAME;
