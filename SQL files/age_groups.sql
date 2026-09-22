
# Most popular age group (all-time)
SELECT age_group, COUNT(purchase_id) as num_purchases FROM store_data
GROUP BY age_group
ORDER BY num_purchases DESC
LIMIT 1;

# Average money spent for this group per transaction (written after running the previous query)
SELECT age_group, AVG(revenue) as average_spent FROM store_data
WHERE age_group = 'adults (35-64)';

##################################################
# Most popular age group (by month)
SELECT `month`, age_group, num_purchases FROM (
	SELECT `month`, age_group, COUNT(purchase_id) as num_purchases, 
	RANK() OVER (PARTITION BY `month` ORDER BY COUNT(`purchase_id`) DESC) as `rank` FROM store_data
	GROUP BY `month`, age_group
) AS month_popularity
WHERE `rank` = 1
ORDER BY num_purchases DESC;

##################################################
# Most popular age group (all-time, by country)
WITH countries AS (
	SELECT country, age_group, COUNT(purchase_id) AS num_purchases FROM store_data
    GROUP BY country, age_group
    ORDER BY country
)
SELECT country, age_group, num_purchases FROM countries c
WHERE num_purchases = (
	SELECT MAX(num_purchases) from countries WHERE
    country = c.country
);
