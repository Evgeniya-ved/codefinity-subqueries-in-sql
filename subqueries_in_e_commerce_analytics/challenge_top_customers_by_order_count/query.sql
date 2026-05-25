SELECT 
    C.customer_id, 
    C.name,
  (SELECT COUNT(*)
    FROM ORDERS o
    WHERE O.CUSTOMER_ID=C.customer_id)  
    AS ORDER_COUNT
FROM customers C
 ORDER BY C.customer_id
LIMIT 3;
