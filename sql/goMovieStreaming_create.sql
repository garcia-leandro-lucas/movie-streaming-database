CREATE DATABASE goMovieStreaming;
USE goMovieStreaming;

-- tables
-- Table: movie_genre
CREATE TABLE movie_genre (
	id_movie_genre INT NOT NULL AUTO_INCREMENT,
	genres_name VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_movie_genre)
);

-- Table: id_classification_information
CREATE TABLE classification_information(
    id_classification_information INT NOT NULL AUTO_INCREMENT,
    mda_classification_information VARCHAR(15) NOT NULL ,
    id_classification_information_description VARCHAR(255) NOT NULL,
    PRIMARY KEY(id_classification_information)
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
    id_restriction_profile INT DEFAULT 0,
    id_user INT NOT NULL,
	name_favorite_list VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_favorite_list)
);

-- Table: restriction_profile
CREATE TABLE restriction_profile(
    id_restriction_profile INT NOT NULL AUTO_INCREMENT,
    iso_restriction_profile VARCHAR(2) NOT NULL,
    restriction_profile_description VARCHAR(255) NOT NULL,
    PRIMARY KEY(id_restriction_profile)
);

-- Table: streaming_platform
CREATE TABLE streaming_platform (
    id_streaming_platform INT NOT NULL AUTO_INCREMENT,
    streaming_platform_name VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_streaming_platform)
);

-- Table: movie_rating
CREATE TABLE movie_rating (
    id_movie_rating INT NOT NULL AUTO_INCREMENT,
    name_movie_rating VARCHAR(15) NOT NULL,
    PRIMARY KEY(id_movie_rating)
);

-- Table: format_type
CREATE TABLE format_type(
    id_format_type INT NOT NULL AUTO_INCREMENT,
    name_format_type VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_format_type)
);

-- Table: media_universe
CREATE TABLE media_universe(
    id_media_universe INT NOT NULL AUTO_INCREMENT,
    name_media_universe VARCHAR(50),
    PRIMARY KEY(id_media_universe)
);

-- Table: country
CREATE TABLE country (
	id_country INT NOT NULL AUTO_INCREMENT,
    iso_country_name VARCHAR(15) NOT NULL,
	country_name VARCHAR(255) NOT NULL,
    PRIMARY KEY(id_country)
);

-- Table: gender_user
CREATE TABLE gender_user (
	id_gender_user INT NOT NULL AUTO_INCREMENT,
    gender_user_description VARCHAR(30) NOT NULL,
    PRIMARY KEY(id_gender_user)
);

-- Table: province
CREATE TABLE province (
	id_province INT NOT NULL AUTO_INCREMENT,
	province_name VARCHAR(50) NOT NULL,
	id_country INT NOT NULL,
    PRIMARY KEY(id_province),
    FOREIGN KEY (id_country) REFERENCES country(id_country)
);

-- Table: subscription
CREATE TABLE subscription (
	id_subscription INT NOT NULL AUTO_INCREMENT,
	type_of_plan_description VARCHAR(255) NOT NULL,
    ISO_of_plan_description VARCHAR(10) NOT NULL,
    type_of_plan_cost_value FLOAT NOT NULL,
    PRIMARY KEY(id_subscription)
);

-- Table: profile
CREATE TABLE profile (
	id_profile INT NOT NULL AUTO_INCREMENT,
	profile_name VARCHAR(50) NOT NULL,
    id_favorite_list INT NOT NULL,
    id_restriction_profile INT NOT NULL,
    PRIMARY KEY(id_profile),
    FOREIGN KEY(id_favorite_list) REFERENCES movie_favorite_list(id_favorite_list),
    FOREIGN KEY(id_restriction_profile) REFERENCES restriction_profile(id_restriction_profile)
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
    dni VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    id_gender_user INT NOT NULL,
    id_user INT NOT NULL,
    id_country INT NOT NULL,
    id_province INT NOT NULL,
    id_subscription INT NOT NULL,
    PRIMARY KEY(id_customer),
    FOREIGN KEY(id_gender_user) REFERENCES gender_user(id_gender_user),
    FOREIGN KEY(id_user) REFERENCES user(id_user),
    FOREIGN KEY(id_country) REFERENCES country(id_country),
    FOREIGN KEY(id_province) REFERENCES province(id_province),
    FOREIGN KEY(id_subscription) REFERENCES subscription(id_subscription)
);

-- Table: movie
CREATE TABLE movie (
	id_movie INT NOT NULL AUTO_INCREMENT,
	title VARCHAR(50) NOT NULL,
	description VARCHAR(1000) NOT NULL,
    popularity FLOAT NOT NULL DEFAULT 0,
	director VARCHAR(50) NOT NULL,
	duration_time TIME NOT NULL,
    release_date DATE NOT NULL,
    vote_average INT NOT NULL DEFAULT 0,
    vote_count INT NOT NULL DEFAULT 0,
    id_classification_information INT NOT NULL,
    id_movie_rating INT NOT NULL,
	id_language INT NOT NULL,
	id_movie_genre INT NOT NULL,
    id_format_type INT NOT NULL,
    id_media_universe INT NOT NULL,
    id_streaming_platform INT NOT NULL,
    PRIMARY KEY(id_movie),
    FOREIGN KEY(id_classification_information) REFERENCES classification_information(id_classification_information),
    FOREIGN KEY(id_movie_rating) REFERENCES movie_rating(id_movie_rating),
    FOREIGN KEY(id_language) REFERENCES language(id_language),
    FOREIGN KEY(id_movie_genre) REFERENCES movie_genre(id_movie_genre),
    FOREIGN KEY(id_format_type) REFERENCES format_type(id_format_type),
    FOREIGN KEY(id_media_universe) REFERENCES media_universe(id_media_universe),
    FOREIGN KEY(id_streaming_platform) REFERENCES streaming_platform(id_streaming_platform)
);

-- Table: commentary
CREATE TABLE commentary (
	id_commentary INT NOT NULL AUTO_INCREMENT,
	id_movie INT NOT NULL,
    id_user INT NOT NULL,
    commentary VARCHAR(255),
    commentary_date DATE NOT NULL,
    PRIMARY KEY(id_commentary),
    FOREIGN KEY(id_movie) REFERENCES movie(id_movie),
    FOREIGN KEY(id_user) REFERENCES user(id_user)
);
