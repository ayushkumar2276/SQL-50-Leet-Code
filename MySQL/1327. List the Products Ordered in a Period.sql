SELECT P.PRODUCT_NAME as product_name, SUM(O.UNIT) as unit
FROM PRODUCTS AS P INNER JOIN ORDERS AS O ON O.PRODUCT_ID = P.PRODUCT_ID
WHERE year(O.order_date)=2020 and month(O.order_date)=2
GROUP BY product_name
HAVING unit >= 100;
