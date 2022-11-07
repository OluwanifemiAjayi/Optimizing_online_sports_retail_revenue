-- Select the brand, a count of all products in the finance table, and total revenue
-- Create four labels for products based on their price range, aliasing as price_category
-- Join brands to finance on product_id and filter out products missing a value for brand
-- Group results by brand and price_category, sort by total_revenue
SELECT brands.brand, COUNT(finance.product_id), SUM(finance.revenue) AS total_revenue,
CASE WHEN finance.listing_price < 42 THEN 'Budget'
WHEN finance.listing_price >= 42 AND finance.listing_price < 74 THEN 'Average'
WHEN finance.listing_price >= 74 AND finance.listing_price < 129 THEN 'Expensive'
ELSE 'Elite' END AS price_category
FROM brands
LEFT JOIN finance 
ON brands.product_id = finance.product_id
WHERE brands.brand IS NOT NULL
GROUP BY brands.brand, price_category
ORDER BY total_revenue DESC;
