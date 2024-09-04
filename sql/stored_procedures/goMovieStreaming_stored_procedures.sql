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
-- Este stored procedures muestra en una tabla las peores peliculas por debajo de 3 estrellas con un limite de las 5 primeras que aparezcan.
-- DROP PROCEDURE IF EXISTS stored_procedures_list_of_movies_with_the_lowest_rating;
DELIMITER $$
CREATE PROCEDURE stored_procedures_list_of_movies_with_the_lowest_rating()
	BEGIN
		SELECT id_movie, title, id_movie_rating
        FROM movie WHERE id_movie_rating < 3 ORDER BY id_movie_rating DESC LIMIT 5;
	END
$$

CALL stored_procedures_list_of_movies_with_the_lowest_rating();