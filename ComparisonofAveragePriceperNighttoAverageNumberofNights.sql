-- Comparison of Average Price per Night to Average Number of Nights

-- The average we have to pay in a given neighborhood
WITH avg_price AS(
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
		ab_nyc_2019_AC_DD
    GROUP BY 
		neighbourhood_group,
		neighbourhood
),
min_nights AS(
	SELECT 
        neighbourhood_group,
		neighbourhood,
		FLOOR(AVG(minimum_nights)) as avg_min_nights
    FROM 
		ab_nyc_2019_AC_DD
    GROUP BY 
		neighbourhood_group,
		neighbourhood
)
SELECT 
	p.neighbourhood_group,
    p.neighbourhood,
    p.avg_price_per_night,
    m.avg_min_nights,
    (p.avg_price_per_night * m.avg_min_nights) AS amount
FROM 
	avg_price p
JOIN min_nights m 
	ON p.neighbourhood_group = m.neighbourhood_group
    AND p.neighbourhood = m.neighbourhood
ORDER BY 
	p.neighbourhood_group,
	p.neighbourhood;


    



