-- Where was the most offerts availability by 365 days 
-- AVG when offert was availbility 
-- In which year and month host gathering the most reviews?

CALL show_all_table();

-- Where was the most offerts availability by 365 days 
WITH avail_by_365_days AS (
	SELECT 
		name,
		neighbourhood_group,
		availability_365
    FROM 
		ab_nyc_2019_ac_dd    
)
SELECT 
	neighbourhood_group,
	COUNT(name) as amount_avail_offert_by_oneyear
FROM 
	avail_by_365_days
WHERE 
	availability_365 = 365
GROUP BY 
	neighbourhood_group;

-- AVG when offert was availbility 
WITH avg_by_365_days AS (
	SELECT 
		name,
		neighbourhood_group,
		ROUND(AVG(availability_365) OVER(PARTITION BY neighbourhood_group),2) as avg_avail
    FROM 
		ab_nyc_2019_ac_dd    
)
SELECT 
	neighbourhood_group,
	avg_avail
FROM 
	avg_by_365_days
GROUP BY 
	neighbourhood_group,
	avg_avail
ORDER BY 
	neighbourhood_group desc;

-- In which year and month host gathering the most reviews?
WITH reviews AS(
	SELECT
		YEAR(last_review) as y,
		MONTH(last_review) as m,
		SUM(number_of_reviews) as amount_reviews
    FROM 
		ab_nyc_2019_ac_dd
    GROUP BY 
		YEAR(last_review),
		MONTH(last_review)  
)
SELECT 
	y,
	m,
	CASE 
		WHEN y IS NULL OR m IS NULL THEN 'Brak danych'
		ELSE amount_reviews
	END as amount_reviews
FROM 
	reviews
ORDER BY 
	CASE WHEN y IS NULL OR m IS NULL THEN 1 ELSE 0 END,
	y desc,
	m asc;






