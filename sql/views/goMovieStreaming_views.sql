USE goMovieStreaming;

-- 1 view
CREATE OR REPLACE VIEW view_list_of_movies AS
(SELECT title, description, popularity, release_date FROM movie);

SELECT * FROM view_list_of_movies;

-- 2 view
CREATE OR REPLACE VIEW view_top_10_most_popular_movies AS
(SELECT M.title, M.popularity, SP.streaming_platform_name
FROM movie M
INNER JOIN streaming_platform SP
ON M.id_streaming_platform = SP.id_streaming_platform) ORDER BY popularity DESC LIMIT 10;

SELECT * FROM view_top_10_most_popular_movies;

-- 3 view
CREATE OR REPLACE VIEW view_list_of_movies_with_the_highest_rating AS
(SELECT M.title, SP.streaming_platform_name, R.name_movie_rating
FROM movie M
INNER JOIN streaming_platform SP
ON M.id_movie_rating > 4
INNER JOIN movie_rating R
ON M.id_movie_rating = R.id_movie_rating);

SELECT * FROM view_list_of_movies_with_the_highest_rating;

-- 4 view
CREATE OR REPLACE VIEW view_list_of_customer_nationalities AS
SELECT CUS.first_name, CUS.last_name, COU.country_name, PRO.province_name
FROM customer CUS
LEFT JOIN country COU
ON CUS.id_country = COU.id_country
LEFT JOIN province PRO
ON CUS.id_province = PRO.id_province;

SELECT * FROM view_list_of_customer_nationalities;

-- 5 view
-- Muestra la lista de los clientes que poseen un plan gratis.
CREATE OR REPLACE VIEW view_list_of_customer_with_free_plan AS
SELECT id_customer, first_name, last_name FROM customer WHERE id_subscription = 1;

SELECT * FROM view_list_of_customer_with_free_plan;


-- 6 view
-- Muestra la lista de los clientes que poseen un plan Essencial.
CREATE OR REPLACE VIEW view_list_of_customer_with_essential_plan AS
SELECT id_customer, first_name, last_name FROM customer WHERE id_subscription = 2;

SELECT * FROM view_list_of_customer_with_essential_plan;


-- 7 view
-- Muestra la lista de los clientes que poseen un plan Standard.
CREATE OR REPLACE VIEW view_list_of_customer_with_standard_plan AS
SELECT id_customer, first_name, last_name FROM customer WHERE id_subscription = 3;

SELECT * FROM view_list_of_customer_with_standard_plan;


-- 8 view
-- Muestra la lista de los clientes que poseen un plan Premium.
CREATE OR REPLACE VIEW view_list_of_customer_with_premium_plan AS
SELECT id_customer, first_name, last_name FROM customer WHERE id_subscription = 4;

SELECT * FROM view_list_of_customer_with_premium_plan;


-- 9 view
-- Muestra la cantidad final de clientes que poseen un plan Gratis.
CREATE OR REPLACE VIEW view_number_of_customer_with_free_plan AS
SELECT COUNT(*) AS free_total_plan FROM view_list_of_customer_with_free_plan;

SELECT * FROM view_number_of_customer_with_free_plan;


-- 10 view
-- Muestra la cantidad final de clientes que poseen un plan Essencial.
CREATE OR REPLACE VIEW view_number_of_customer_with_essential_plan AS
SELECT COUNT(*) AS essential_total_plan FROM view_list_of_customer_with_essential_plan;

SELECT * FROM view_number_of_customer_with_essential_plan;


-- 11 view
-- Muestra la cantidad final de clientes que poseen un plan standard.
CREATE OR REPLACE VIEW view_number_of_customer_with_standard_plan AS
SELECT COUNT(*) AS standard_total_plan FROM view_list_of_customer_with_standard_plan;

SELECT * FROM view_number_of_customer_with_standard_plan;


-- 12 view
-- Muestra la cantidad final de clientes que poseen un plan Premium.
CREATE OR REPLACE VIEW view_number_of_customer_with_premium_plan AS
SELECT COUNT(*) AS premium_total_plan FROM view_list_of_customer_with_premium_plan;

SELECT * FROM view_number_of_customer_with_premium_plan;