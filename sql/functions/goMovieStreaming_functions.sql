USE goMovieStreaming;

-- 1 Function
-- Esta es una función que imprime un saludo con el nombre y el apellido de los clientes registrados.
DELIMITER $$
CREATE FUNCTION function_greet_the_customer( first_name VARCHAR(50), last_name VARCHAR(50) )
RETURNS VARCHAR(150)
DETERMINISTIC
	BEGIN
		DECLARE full_name VARCHAR(100);
        RETURN CONCAT('Bienvenid@ ', first_name, ' ', last_name);
    END$$
    
SELECT id_customer, first_name, last_name, function_greet_the_customer(first_name, last_name) FROM customer;


-- 2 Function
-- Esta es una función que aplica visualmente asteriscos dependiendo de la catidad de estrellas que tengas una pelicula segun su clasificación por usuarios.
DELIMITER $$
CREATE FUNCTION function_rating_stars( amount TINYINT )
RETURNS VARCHAR(5)
NO SQL
	BEGIN
		DECLARE start VARCHAR(5) DEFAULT '';
        DECLARE x INT DEFAULT 0;
        DECLARE icon_start VARCHAR(5) DEFAULT '*';
        
        WHILE x < amount DO
			SET start = CONCAT(start, icon_start);
            SET x = x + 1;
		END WHILE;
        
        RETURN start;
    END$$

SELECT title, popularity, function_rating_stars(id_movie_rating) AS rating_start FROM movie ORDER BY id_movie_rating DESC;