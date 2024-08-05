CREATE DATABASE goMovieStreaming;
USE goMovieStreaming;

-- tables
-- Table: movie_genre
CREATE TABLE movie_genre (
	id_movie_genre INT NOT NULL AUTO_INCREMENT,
	genres_name VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_movie_genre)
);

-- Table: language
CREATE TABLE language (
	id_language INT NOT NULL AUTO_INCREMENT,
	language_name VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_language)
);

-- Table: movie_favorite_list
CREATE TABLE movie_favorite_list (
	id_favorite_list INT NOT NULL AUTO_INCREMENT,
	name_favorite_list VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_favorite_list)
);

-- Table: country
CREATE TABLE country (
	id_country INT NOT NULL AUTO_INCREMENT,
	country_name INT NOT NULL,
    PRIMARY KEY(id_country)
);

-- Table: province
CREATE TABLE province (
	id_province INT NOT NULL AUTO_INCREMENT,
	province_name VARCHAR(50) NOT NULL,
	id_country INT NOT NULL,
    PRIMARY KEY(id_province),
    FOREIGN KEY (id_country) REFERENCES country(id_country)
);

-- Table: type_of_plan
CREATE TABLE type_of_plan (
	id_type_of_plan INT NOT NULL AUTO_INCREMENT,
	type_of_plan_name VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_type_of_plan)
);

-- Table: subscription
CREATE TABLE subscription (
	id_subscription INT NOT NULL AUTO_INCREMENT,
	id_type_of_plan INT NOT NULL,
    PRIMARY KEY(id_subscription),
    FOREIGN KEY (id_type_of_plan) REFERENCES type_of_plan(id_type_of_plan)
);

-- Table: profile
CREATE TABLE profile (
	id_profile INT NOT NULL AUTO_INCREMENT,
	profile_name VARCHAR(50) NOT NULL,
    id_favorite_list INT NOT NULL,
    PRIMARY KEY(id_profile),
    FOREIGN KEY(id_favorite_list) REFERENCES movie_favorite_list(id_favorite_list)
);

-- Table: user
CREATE TABLE user (
    id_user INT NOT NULL AUTO_INCREMENT,
    user_name VARCHAR(50) NOT NULL,
    id_profile INT NOT NULL,
    PRIMARY KEY(id_user),
    FOREIGN KEY(id_profile) REFERENCES profile(id_profile)
);

-- Table: customer
CREATE TABLE customer (
    id_customer INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    dni INT NOT NULL,
    email VARCHAR(50) NOT NULL,
    id_user INT NOT NULL,
    id_country INT NOT NULL,
    id_province INT NOT NULL,
    id_type_of_plan INT NOT NULL,
    PRIMARY KEY(id_customer),
    FOREIGN KEY(id_user) REFERENCES user(id_user),
    FOREIGN KEY(id_country) REFERENCES country(id_country),
    FOREIGN KEY(id_province) REFERENCES province(id_province),
    FOREIGN KEY(id_type_of_plan) REFERENCES type_of_plan(id_type_of_plan)
);

-- Table: movie
CREATE TABLE movie (
	id_movie INT NOT NULL AUTO_INCREMENT,
	title VARCHAR(50) NOT NULL,
	description VARCHAR(255) NOT NULL,
	classification_information VARCHAR(50) NOT NULL,
	director VARCHAR(50) NOT NULL,
	duration_time TIME NOT NULL,
	publication_date DATE NOT NULL,
	id_language INT NOT NULL,
	id_movie_genre INT NOT NULL,
    PRIMARY KEY(id_movie),
    FOREIGN KEY(id_language) REFERENCES language(id_language),
    FOREIGN KEY(id_movie_genre) REFERENCES movie_genre(id_movie_genre)
);



























