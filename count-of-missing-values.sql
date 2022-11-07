

-- Count all columns as total_rows
-- Count the number of non-missing entries for description, listing_price, and last_visited
-- Join info, finance, and traffic
SELECT COUNT(*) AS total_rows, COUNT(info.description) AS count_description, 
COUNT(finance.listing_price) AS count_listing_price, COUNT(traffic.last_visited) AS count_last_visited
FROM info
LEFT JOIN finance 
ON info.product_id = finance.product_id
LEFT JOIN traffic
ON info.product_id = traffic.product_id