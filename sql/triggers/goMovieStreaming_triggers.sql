
-- 1 Triggers
-- Este triggers chequea el valor insertado del rating de una pelicula.
DROP TRIGGER IF EXISTS trigger_check_rating_insert_value;
DELIMITER $$
CREATE TRIGGER trigger_check_rating_insert_value
BEFORE INSERT ON movie
	FOR EACH ROW
		BEGIN
			IF NEW.id_movie_rating < 0 THEN
				SET NEW.id_movie_rating = 0;
			ELSEIF NEW.id_movie_rating > 5 THEN
				SET NEW.id_movie_rating = 5;
			END IF;
		END $$


-- 2 Triggers
-- Este triggers chequea el valor actualizado del voto promedio de una pelicula.
DROP TRIGGER IF EXISTS trigger_check_vote_average_update_value;
DELIMITER $$
CREATE TRIGGER trigger_check_vote_average_update_value
BEFORE UPDATE ON movie
	FOR EACH ROW
		BEGIN
			IF NEW.vote_average < 0 THEN
				SET NEW.vote_average = 0;
			ELSEIF NEW.vote_average > 10 THEN
				SET NEW.vote_average = 10;
			END IF;
		END $$


/* INSERT INTO movie (id_movie, title, description, popularity, director, duration_time, release_date, vote_average, vote_count, id_classification_information, id_movie_rating, id_language, id_movie_genre, id_format_type, id_media_universe, id_streaming_platform ) VALUES
(32, "Farang", "Merciless vengeance.", 79.7, "Marietta Shirer", "02:10:00", "2022-06-28", 6.67, 12, 1, 10, 3, 4, 2, 6, 6); */
        
/* UPDATE movie SET vote_average = 11 WHERE id_movie = 1; */