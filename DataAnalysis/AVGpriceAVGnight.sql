-- Avg price for one night in specific neighbourhood?
-- Avg minimum night in the specific neighbourhood?

CALL show_all_table();

-- Create Temporary table to to make it easier to rely on data
CREATE TEMPORARY TABLE important_values (
		SELECT
		host_id,
		host_name,
		neighbourhood_group,
		neighbourhood,
		price,
		minimum_nights,
		calculated_host_listings_count
    FROM 
		ab_nyc_2019_ac_dd   
);

SELECT *
FROM important_values; 

-- Find avarage price per one night 
WITH avg_price_for_one_night AS(
	SELECT 
		neighbourhood_group,
		neighbourhood,
		ROUND(AVG(
				CASE
					WHEN minimum_nights = 0 THEN price
                    ELSE price /  minimum_nights
				END        
        ),2) as avg_price_per_night
    FROM 
		important_values
    GROUP BY 
		neighbourhood_group,
		neighbourhood
)
SELECT 
	*,
	DENSE_RANK() OVER(PARTITION BY neighbourhood_group ORDER BY avg_price_per_night) AS rank_price
FROM 
	avg_price_for_one_night;

-- FIND avarage minimum nights
WITH avg_min_nights AS(
	SELECT 
			neighbourhood_group,
			neighbourhood,
			FLOOR(AVG(minimum_nights)) as avg_min_nights
    FROM 
		important_values
    GROUP BY 
		neighbourhood_group,
		neighbourhood
)
SELECT *
FROM 
	avg_min_nights
ORDER BY 
	neighbourhood_group,
	neighbourhood;

    



