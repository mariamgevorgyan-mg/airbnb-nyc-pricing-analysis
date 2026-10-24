SHOW TABLES FROM airbnb_nyc;
SET GLOBAL local_infile = 1;
TRUNCATE TABLE airbnb_nyc.ab_nyc_2019;
LOAD DATA LOCAL INFILE 'C:/Users/user/Downloads/Airbnb_data/AB_NYC_2019.csv'
INTO TABLE airbnb_nyc.ab_nyc_2019
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
SELECT COUNT(*) AS total_listings
FROM airbnb_nyc.ab_nyc_2019;
DESCRIBE airbnb_nyc.ab_nyc_2019;
SELECT
    room_type,
    AVG(price) AS average_price
FROM airbnb_nyc.ab_nyc_2019
WHERE price > 0
GROUP BY room_type;
SELECT
    room_type,
    COUNT(*) AS listing_count
FROM airbnb_nyc.ab_nyc_2019
WHERE price > 0
GROUP BY room_type
ORDER BY listing_count DESC;
SELECT
    neighbourhood_group,
    AVG(price) AS average_price
FROM airbnb_nyc.ab_nyc_2019
WHERE price > 0
GROUP BY neighbourhood_group
ORDER BY average_price DESC;
SELECT
    neighbourhood_group,
    room_type,
    AVG(price) AS average_price
FROM airbnb_nyc.ab_nyc_2019
WHERE price > 0
GROUP BY neighbourhood_group, room_type
ORDER BY neighbourhood_group, average_price DESC;
SELECT
    neighbourhood,
    COUNT(*) AS listing_count
FROM airbnb_nyc.ab_nyc_2019
WHERE price > 0
GROUP BY neighbourhood
ORDER BY listing_count DESC
LIMIT 10;
SELECT
    room_type,
    AVG(minimum_nights) AS average_minimum_nights
FROM airbnb_nyc.ab_nyc_2019
WHERE price > 0
GROUP BY room_type
ORDER BY average_minimum_nights DESC;
SELECT room_type, AVG(availability_365) AS average_availability FROM airbnb_nyc.ab_nyc_2019 WHERE price > 0 GROUP BY room_type ORDER BY average_availability DESC;
SELECT
    room_type,
    AVG(number_of_reviews) AS average_reviews
FROM airbnb_nyc.ab_nyc_2019
WHERE price > 0
GROUP BY room_type
ORDER BY average_reviews DESC;
SELECT
    neighbourhood_group,
    MIN(price) AS minimum_price,
    MAX(price) AS maximum_price,
    AVG(price) AS average_price
FROM airbnb_nyc.ab_nyc_2019
WHERE price > 0
GROUP BY neighbourhood_group
ORDER BY average_price DESC;