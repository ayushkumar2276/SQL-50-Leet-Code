SELECT 
    DISTINCT(s.user_id),
    ROUND(
        SUM(IF(c.action = 'confirmed', 1, 0)) OVER (PARTITION BY s.user_id) / 
        COUNT(*) OVER (PARTITION BY s.user_id), 
        2
    ) AS confirmation_rate
FROM 
    signups s 
LEFT JOIN 
    confirmations c ON s.user_id = c.user_id;

SELECT S.user_id , ROUND(COUNT(CASE WHEN C.action = 'confirmed' THEN 1 ELSE NULL END)*1.0 /COUNT(S.user_id) ,2) AS confirmation_rate
FROM Signups AS S LEFT JOIN Confirmations AS C 
ON S.user_id = C.user_id 
GROUP BY S.user_id; 
