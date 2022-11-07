-- Create the footwear CTE, containing description and revenue
-- Filter footwear for products with a description containing %shoe%, %trainer, or %foot%
-- Also filter for products that are not missing values for description
-- Calculate the number of products and median revenue for footwear products
WITH footwear AS (SELECT info.description, finance.revenue FROM info
                 JOIN finance 
                 ON info.product_id = finance.product_id
                 WHERE info.description ILIKE '%shoe%' OR info.description ILIKE '%trainer%' 
                  OR info.description ILIKE '%foot%'
                AND info.description IS NOT NULL)
SELECT COUNT(footwear) AS num_footwear_products,
PERCENTILE_DISC(0.5) WITHIN GROUP(ORDER BY footwear.revenue) AS median_footwear_revenue
FROM footwear;
