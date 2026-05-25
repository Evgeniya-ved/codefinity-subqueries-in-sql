SELECT
    c.customer_id,
    c.name,
    customer_order_counts.order_count
FROM
    customers c
    JOIN (
        SELECT
            customer_id,
            COUNT(*) AS order_count
        FROM
            orders
        GROUP BY
            customer_id
    ) AS customer_order_counts
        ON c.customer_id = customer_order_counts.customer_id
ORDER BY
    customer_order_counts.order_count DESC,
    c.customer_id ASC
LIMIT 3;
