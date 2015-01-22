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
- Extend coverage — iteration 2 (2015)
- Refactor module — iteration 5 (2015)
- Polish code — iteration 10 (2015)
- Update config — iteration 12 (2015)
- Fix typo — iteration 14 (2015)
