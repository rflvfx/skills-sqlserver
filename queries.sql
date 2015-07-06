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
- Extend coverage — iteration 17 (2015)
- Add helper — iteration 18 (2015)
- Add feature — iteration 19 (2015)
- Document usage — iteration 22 (2015)
- Add feature — iteration 23 (2015)
- Refactor module — iteration 26 (2015)
- Fix edge case — iteration 32 (2015)
- Improve naming — iteration 34 (2015)
- Update dependencies — iteration 35 (2015)
- Fix lint warnings — iteration 36 (2015)
- Update docs — iteration 38 (2015)
- Update config — iteration 39 (2015)
- Extend coverage — iteration 50 (2015)
