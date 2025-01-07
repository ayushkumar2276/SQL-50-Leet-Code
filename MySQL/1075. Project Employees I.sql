SELECT P.project_id, ROUND(AVG(E.experience_years),2) AS average_years
FROM PROJECT AS P
LEFT JOIN EMPLOYEE AS E ON P.employee_id = E.employee_id
GROUP BY P.PROJECT_ID;
