
# Find most popular item group in general
SELECT product_category, COUNT(purchase_id) AS `total_purchases` FROM store_data
GROUP BY product_category
ORDER BY `total_purchases` DESC;

# Find most popular item group by age group
SELECT age_group, product_category, total_purchases FROM (
	SELECT age_group, product_category, COUNT(purchase_id) AS `total_purchases`, 
		RANK() OVER (PARTITION BY age_group ORDER BY COUNT(*) DESC) AS `rank` 
	FROM store_data
	GROUP BY age_group, product_category    
) AS `age_rank_table`
WHERE `rank` = 1
ORDER BY total_purchases DESC;

# Find most popular item group by country
SELECT country, product_category, total_purchases FROM (
	SELECT country, product_category, COUNT(purchase_id) as `total_purchases`,
		RANK() OVER (PARTITION BY country ORDER BY COUNT(*) DESC) as `rank`
    FROM store_data
    GROUP BY country, product_category
) AS `country_rank_table`
WHERE `rank` = 1
ORDER BY total_purchases DESC;

# Find most popular item group by season
WITH seasons AS (
	SELECT product_category, `month`, COUNT(purchase_id) AS purchase_count,
    CASE
		WHEN `month` = "December" OR `month` = "January" OR `month` = "February" THEN "winter"
        WHEN `month` = "March" OR `month` = "April" OR `month` = "May" THEN "spring"
        WHEN `month` = "June" OR `month` = "July" OR `month` = "August" THEN "summer"
        WHEN `month` = "September" OR `month` = "October" OR `month` = "November" THEN "fall"
	END AS `season`
    FROM store_data
    GROUP BY `season`, product_category, `month`
)
SELECT `season`, product_category, SUM(purchase_count) AS total_purchases FROM (
	SELECT `season`, product_category, purchase_count, 
		RANK() OVER (PARTITION BY `season` ORDER BY purchase_count DESC) as `rank`
	FROM seasons
    GROUP BY `season`, product_category, purchase_count
) AS seasons_rank
GROUP BY `season`, product_category;

# Profitability of item groups
SELECT product_category, AVG(profit) as average_profit FROM store_data
GROUP BY product_category
ORDER BY average_profit DESC;

# Least expensive item group
SELECT product_category, MIN(cost) AS min_cost FROM store_data
GROUP BY product_category
ORDER BY min_cost;

# Most expensive item group
SELECT product_category, MAX(cost) AS max_cost FROM store_data
GROUP BY product_category
ORDER BY max_cost DESC;
