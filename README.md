# Analysis to Optimize the Revenue of an Online Sports Retail Store

## Project Outline 

1. Introduction
2. Data Evaluation
3. Data Analysis
4. Conclusion

## 1. Introduction
This is an SQL capstone project from Datacamp, it involved analyzing data from a PostgreSQL database containing information about online sports retails. The goal was to gather insights into various aspects such as product descriptions, pricing, reviews, and traffic. The analysis, as shown in this [Jupyter Notebook](https://github.com/OluwanifemiAjayi/Optimizing_online_sports_retail_revenue/blob/main/notebook.ipynb) was performed by extracting, joining, and manipulating data from different tables within the database.

The tables involved in this analysis are:

- **info:** Contains product information such as description and product ID.
- **finance:** Contains financial details of products like listing price and revenue.
- **traffic:** Records the last visited date of products.
- **reviews:** Includes product reviews and ratings.
- **brands:** Contains brand information associated with products.

## 2. Data Evaluation
In this step, I determined the total number of rows in the dataset and counted the number of non-missing entries for specific columns. By joining the info, finance, and traffic tables based on product_id, I calculated the total rows and specifically counted the non-missing entries for description, listing_price, and last_visited.

## 3. Data Analysis
### Brand and Listing Price Analysis
I focused on analyzing the brands and their associated listing prices. By joining the brands and finance tables on product_id, I selected the brand and listing price, converting the price to an integer.I filtered out products with a listing price of zero or less and grouped the results by brand and listing price. Finally, I sorted the results by listing price in descending order to identify the most expensive products within each brand.

### Revenue and Price Category Analysis
This step involved categorizing products into different price ranges and analyzing their revenue. I defined four price categories: Budget, Average, Expensive, and Elite. By joining the brands and finance tables on product_id, I grouped the products by brand and price category. I calculated the total revenue for each group and sorted the results by total revenue to identify the most lucrative brands and categories.

### Average Discount by Brand
We calculated the average discount offered by each brand. By joining the brands and finance tables on product_id, we aggregated the data to compute the average discount for each brand. We ensured that only products with non-missing brand values were included in this analysis.

### Correlation Between Reviews and Revenue
To understand the relationship between customer reviews and revenue, I calculated the correlation between the number of reviews and the revenue generated. By joining the reviews and finance tables on product_id, I computed this correlation, which provides insights into how customer feedback might influence sales performance.

### Description Length and Average Rating
I analyzed the relationship between the length of product descriptions and their average ratings. By joining the info and reviews tables on product_id, I calculated the length of each product description and truncated it to the nearest hundred. I then computed the average rating for products grouped by description length and sorted the results to identify trends.

### Brand and Monthly Reviews
This step involved analyzing the number of reviews received by products each month, grouped by brand. By joining the traffic, reviews, and brands tables on product_id, I extracted the month from the last_visited date and counted the number of reviews for each brand and month. I filtered out missing values and sorted the results to observe seasonal patterns in customer reviews.

### Footwear Analysis
I focused on analyzing products related to footwear. By creating a Common Table Expression (CTE), I filtered products with descriptions containing keywords like "shoe," "trainer," or "foot." I then calculated the number of footwear products and their median revenue. This analysis helps identify the financial performance of footwear products.

### Clothing Analysis
I extended the footwear analysis to other clothing products by excluding footwear descriptions. By joining the info and finance tables on product_id, I calculated the number of clothing products and their median revenue. This step provided insights into the financial performance of non-footwear clothing products.

## 4. Conclusion
The analysis conducted through these SQL queries provides a comprehensive understanding of product data from various perspectives, including description length, pricing, reviews, and revenue. By joining and aggregating data from multiple tables, valuable insights were gained into the relationships between different product attributes and their financial performance. 

## Relevant Links
- [Jupyter Notebook](https://github.com/OluwanifemiAjayi/Optimizing_online_sports_retail_revenue/blob/main/notebook.ipynb)
- [Online Sports Retail Dataset](https://github.com/OluwanifemiAjayi/Optimizing_online_sports_retail_revenue/tree/main/datasets)
- [LinkedIn](https://www.linkedin.com/in/oluwanifemiii)
