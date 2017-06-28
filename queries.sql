-- T-SQL patterns
SELECT TOP 10 * FROM orders ORDER BY created_at DESC;

SELECT c.name, COUNT(o.id) AS total
FROM customers c
LEFT JOIN orders o ON o.customer_id = c.id
GROUP BY c.name;

-- CTE + row_number
WITH ranked AS (
  SELECT *, ROW_NUMBER() OVER (PARTITION BY status ORDER BY created_at DESC) rn
  FROM orders
)
SELECT * FROM ranked WHERE rn = 1;
