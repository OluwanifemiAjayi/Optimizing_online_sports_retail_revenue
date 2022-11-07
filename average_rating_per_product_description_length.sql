-- Calculate description_length
-- Convert rating to a numeric data type and calculate average_rating
-- Join info to reviews on product_id and group the results by description_length
-- Filter for products without missing values for description, and sort results by description_length
SELECT TRUNC(LENGTH(info.description), -2) AS description_length, ROUND(AVG(reviews.rating :: numeric), 2) AS average_rating
FROM info 
INNER JOIN reviews
ON info.product_id = reviews.product_id
WHERE info.description IS NOT NULL
GROUP BY description_length
ORDER BY description_length;
