-- Which neighbourhood_group has the most offerts?
-- Which neighbourhood has the most offerts?

CALL show_all_table();

-- Create CTE to find amount offerts by neighbourhood group
WITH neighbourhood_group_offerts AS(
	SELECT 
		neighbourhood_group, 
		COUNT(host_id) AS amount_offerts_in_neighbourhood_group
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

-- Create Temporary table to to make it easier to rely on data
CREATE TEMPORARY TABLE neighbourhood_offerts AS(
	SELECT
		neighbourhood_group,
		neighbourhood,
		COUNT(neighbourhood) AS count_neighbourhood
    FROM 
		ab_nyc_2019_ac_dd
    GROUP BY 
		neighbourhood_group, 
		neighbourhood
);
SELECT *
FROM 
	neighbourhood_offerts
order by 
	neighbourhood_group,
	neighbourhood;

-- Change type of coolumn
ALTER TABLE neighbourhood_offerts
MODIFY COLUMN count_neighbourhood INT;

-- Use CTE to find max count offerts in specific nighbourhood
WITH max_offerts_in_neighbourhood as (
	SELECT 
		neighbourhood_group,
        neighbourhood,
		MAX(count_neighbourhood) as max_offerts
	FROM 
		neighbourhood_offerts
	GROUP BY 
		neighbourhood_group,
        neighbourhood
)
Select *
FROM  
	max_offerts_in_neighbourhood
ORDER BY 
		neighbourhood_group, max_offerts DESC;


