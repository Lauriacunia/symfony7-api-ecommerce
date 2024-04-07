INSERT INTO product_category (product_id, category_id)
SELECT 
    product_id,
    category_id
FROM
    (SELECT 
        FLOOR(RAND() * (95 - 46 + 1)) + 46 AS product_id,
        FLOOR(RAND() * (24 - 5 + 1)) + 5 AS category_id
    FROM
        information_schema.tables AS rand1
    CROSS JOIN
        information_schema.tables AS rand2) AS rand_ids
GROUP BY product_id
HAVING COUNT(*) >= 2;
