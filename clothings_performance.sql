WITH footwear AS (SELECT info.description, finance.revenue FROM info
                 JOIN finance 
                 ON info.product_id = finance.product_id
                 WHERE info.description ILIKE '%shoe%' OR info.description ILIKE '%trainer%' 
                  OR info.description ILIKE '%foot%'
                AND info.description IS NOT NULL)


SELECT COUNT(info.product_id) AS num_clothing_products,
PERCENTILE_DISC(0.5) WITHIN GROUP(ORDER BY finance.revenue) AS median_clothing_revenue
FROM info
INNER JOIN finance
ON info.product_id = finance.product_id
WHERE info.description NOT IN (SELECT description FROM footwear);
