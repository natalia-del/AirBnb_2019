-- Cleaning data
SELECT *
FROM ab_nyc_2019;

-- Create new table something like backup - AC - after change
CREATE TABLE ab_nyc_2019_AC
LIKE ab_nyc_2019;

-- Add all rows to our new table 
INSERT INTO ab_nyc_2019_AC
SELECT *
FROM ab_nyc_2019;

SELECT id
FROM ab_nyc_2019_AC;

-- CHECK Duplicates
WITH duplicates AS(
SELECT *,
ROW_NUMBER() OVER(  -- row number assign unique number to each group 
PARTITION BY name,host_id,host_name,neighbourhood_group,neighbourhood,latitude,longitude,
room_type,price,minimum_nights,number_of_reviews,last_review,reviews_per_month,calculated_host_listings_count,availability_365) AS row_num
FROM ab_nyc_2019_AC
)
SELECT *
FROM duplicates
WHERE row_num > 1;

-- Find duplicates
SELECT *
FROM ab_nyc_2019_AC_dd
WHERE row_num > 1;

-- dd delete duplicates
CREATE TABLE `ab_nyc_2019_AC_DD`(
	`id` int,
    `name` text,
    `host_id` int,
    `host_name` text,
    `neighbourhood_group` text,
    `neighbourhood` text,
    `latitude` double,
    `longitude` double,
    `room_type` text,
    `price` INT,
    `minimum_nights` INT,
    `number_of_reviews` INT,
    `last_review` text,
    `reviews_per_month` text,
    `calculated_host_listings_count` INT,
    `availability_365` int,
    `row_num` INT
    
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- add all rows to new table with the new column row_num
INSERT INTO ab_nyc_2019_AC_DD
SELECT *, ROW_NUMBER() OVER (
PARTITION BY name,host_id,host_name,neighbourhood_group,neighbourhood,latitude,longitude,
room_type,price,minimum_nights,number_of_reviews,last_review,reviews_per_month,calculated_host_listings_count,availability_365) AS row_num 
FROM ab_nyc_2019_AC;

-- delete duplicates
DELETE 
FROM ab_nyc_2019_AC_DD
WHERE row_num > 1;

-- Standarizing Data
 
-- use trim on name
SELECT name, TRIM(name)
FROM ab_nyc_2019_AC_DD;

-- choose all name which ended by * and delete * on the end 
SELECT name, TRIM(TRAILING '*' FROM name)
FROM ab_nyc_2019_AC_DD
order BY 1;

-- choose all name which started and ended by * and delete *  
SELECT name, TRIM(BOTH '*' FROM name)
FROM ab_nyc_2019_AC_DD
order BY 1;

-- update table and delete * when string contains * on the start or end
UPDATE ab_nyc_2019_AC_DD
SET name = TRIM(BOTH '*' FROM name)
WHERE name LIKE '*%*';

-- do update table and delete * when string contains * on the start
UPDATE ab_nyc_2019_AC_DD
SET name = TRIM(LEADING '*' from name)
WHERE name LIKE '*%';

-- use trim on name 
UPDATE ab_nyc_2019_AC_DD
SET name = TRIM(name);

-- set date type in colum last_review
ALTER TABLE ab_nyc_2019_ac_dd
MODIFY COLUMN `last_review` DATE;

SELECT *
FROM ab_nyc_2019_AC_DD;

-- SET null when last_review is blank type
UPDATE ab_nyc_2019_AC_DD
SET last_review = NULL
WHERE last_review = "";

SELECT *
FROM ab_nyc_2019_ac_dd;

-- delete /apt after entire home
UPDATE ab_nyc_2019_AC_dd
SET room_type = REPLACE(room_type,'/apt','')
WHERE room_type LIKE '%/apt';




















