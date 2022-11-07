-- Calculate the correlation between reviews and revenue as review_revenue_corr
-- Join the reviews and finance tables on product_id
SELECT CORR(reviews.reviews, finance.revenue) AS review_revenue_corr 
FROM reviews 
JOIN finance
ON reviews.product_id = finance.product_id;