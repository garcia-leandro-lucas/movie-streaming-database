USE goMovieStreaming;

-- 1 Stored Procedures
-- Este stored procedures muestra en una tabla las primeras 3 peliculas más populares de forma descendente.
-- DROP PROCEDURE IF EXISTS stored_procedures_list_of_movies_according_to_popularity;
DELIMITER $$
CREATE PROCEDURE stored_procedures_list_of_movies_according_to_popularity()
	BEGIN
		SELECT id_movie, title, popularity
        FROM movie ORDER BY popularity DESC LIMIT 3;
	END
$$

CALL stored_procedures_list_of_movies_according_to_popularity();


-- 2 Stored Procedures
-- Este stored procedures muestra en una tabla las peliculas por del número de estrellas ingresados con un limite de MAX de 5 Estrellas 5 primeras que aparezcan.
-- DROP PROCEDURE IF EXISTS stored_procedures_list_of_movies_with_the_lowest_rating;
DELIMITER $$
CREATE PROCEDURE stored_procedures_list_of_movies_with_the_lowest_rating(IN valor_rating INT)
	BEGIN
		SELECT id_movie, title, id_movie_rating
        FROM movie WHERE id_movie_rating <= valor_rating ORDER BY id_movie_rating DESC LIMIT 5;
	END
$$

CALL stored_procedures_list_of_movies_with_the_lowest_rating(4);


-- 3 Stored Procedures
-- Este stored procedures muestra el total recaudado de cada plan.
-- DROP PROCEDURE IF EXISTS stored_procedures_total_raised_of_plan;
DELIMITER $$
CREATE PROCEDURE stored_procedures_total_raised_of_plan()
	BEGIN
		SELECT C.id_subscription, S.type_of_plan_description, S.type_of_plan_cost_value, SUM(type_of_plan_cost_value) AS total_raised
		FROM customer C
		INNER JOIN subscription S
		ON C.id_subscription = S.id_subscription GROUP BY S.id_subscription;
	END
$$

CALL stored_procedures_total_raised_of_plan();
