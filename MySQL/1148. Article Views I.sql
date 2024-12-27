SELECT Distinct author_id AS id
FROM VIEWS
WHERE viewer_id = author_id
ORDER BY id ASC;
