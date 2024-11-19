-- Which neighbourhood_group has the most offerts?
-- Which neighbourhood has the most offerts?

CALL show_all_table();

-- Create CTE to find amount offerts by neighbourhood group
WITH neighbourhood_group_offerts AS(
	SELECT 
		neighbourhood_group, 
		SUM(calculated_host_listings_count) AS amount_offerts_in_neighbourhood_group
	FROM 
		ab_nyc_2019_ac_dd
	GROUP BY 
		neighbourhood_group
)
SELECT *
FROM 
	neighbourhood_group_offerts
ORDER BY 
	amount_offerts_in_neighbourhood_group DESC;
    


-- Create CTE to find which neighbourhood has the most offerts
WITH neighbourhood_offerts AS(
	SELECT 
		neighbourhood_group, 
		neighbourhood,
		SUM(calculated_host_listings_count) AS amount_offerts_in_neighbourhood
	FROM 
		ab_nyc_2019_ac_dd
	GROUP BY 
		neighbourhood_group,
       	 	neighbourhood
)
SELECT *
FROM 
	neighbourhood_offerts
ORDER BY 
	1,3 DESC;


