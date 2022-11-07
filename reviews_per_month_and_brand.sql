-- Select brand, month from last_visited, and a count of all products in reviews aliased as num_reviews
-- Join traffic with reviews and brands on product_id
-- Group by brand and month, filtering out missing values for brand and month
-- Order the results by brand and month
SELECT brands.brand, EXTRACT(MONTH FROM traffic.last_visited) AS month,
COUNT(reviews.product_id) AS num_reviews
FROM traffic 
JOIN reviews
ON traffic.product_id = reviews.product_id
JOIN brands
ON traffic.product_id = brands.product_id
WHERE brands.brand IS NOT NULL AND EXTRACT(MONTH FROM traffic.last_visited) IS NOT NULL
GROUP BY brands.brand, month
ORDER BY brands.brand, month;