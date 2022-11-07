-- Select the brand, listing_price as an integer, and a count of all products in finance 
-- Join brands to finance on product_id
-- Filter for products with a listing_price more than zero
-- Aggregate results by brand and listing_price, and sort the results by listing_price in descending order
SELECT brands.brand, finance.listing_price :: integer, COUNT(finance.product_id)
        FROM brands 
        JOIN finance
        ON brands.product_id = finance.product_id
        WHERE finance.listing_price > 0
        GROUP BY brands.brand, finance.listing_price
        ORDER BY finance.listing_price DESC;
