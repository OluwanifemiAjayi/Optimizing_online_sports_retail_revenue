-- Select brand and average_discount as a percentage
-- Join brands to finance on product_id
-- Aggregate by brand
-- Filter for products without missing values for brand
SELECT brands.brand, AVG(finance.discount) * 100 AS average_discount
FROM brands
JOIN finance 
ON brands.product_id = finance.product_id
WHERE brands.brand IS NOT NULL
GROUP BY brands.brand;