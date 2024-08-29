USE goMovieStreaming;

/* CREATE TABLE movie_genre (
	id_movie_genre INT NOT NULL AUTO_INCREMENT,
	genres_name VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_movie_genre)
); */

INSERT INTO movie_genre (id_movie_genre, genres_name ) VALUES
(1,"Action"),
(2,"Adventure"),
(3,"Animation"),
(4,"Comedy"),
(5,"Crime"),
(6,"Documentary"),
(7,"Drama"),
(8,"Family"),
(9,"Fantasy"),
(10,"History"),
(11,"Horror"),
(12,"Music"),
(13,"Mystery"),
(14,"Romance"),
(15,"Science Fiction"),
(16,"TV Movie"),
(17,"Thriller"),
(18,"War"),
(19,"Western");


/* CREATE TABLE id_classification_information(
    id_classification_information INT NOT NULL AUTO_INCREMENT,
    id_classification_information_description VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_classification_information)
); */
INSERT INTO id_classification_information (id_classification_information, mda_classification_information, id_classification_information_description ) VALUES
(1,"G", "Para todos los públicos."),
(2,"PG", "Con supervisión de los padres."),
(3,"PG13", "Con supervisión de los padres para menores de 13 años."),
(4,"NC16", "Para mayores de 16 años."),
(5,"M18", "Para mayores de 18 años.");

/* CREATE TABLE language (
	id_language INT NOT NULL AUTO_INCREMENT,
	language_name VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_language)
); */

INSERT INTO language (id_language, language_name) VALUES
(1, "Chinese"),
(2, "Portuguese"),
(3, "Thai"),
(4, "Belarusian"),
(5, "Gagauz"),
(6, "Montenegrin"),
(7, "Kyrgyz"),
(8, "Czech"),
(9, "Persian"),
(10, "Tok Pisin"),
(11, "Guaraní"),
(12, "Gujarati"),
(13, "Zulu"),
(14, "Irish Gaelic"),
(15, "Korean"),
(16, "Kazakh"),
(17, "Haitian Creole"),
(18, "Tajik"),
(19, "Norwegian"),
(20, "Persian"),
(21, "Burmese"),
(22, "Georgian"),
(23, "Tajik"),
(24, "Indonesian"),
(25, "Nepali"),
(26, "Polish"),
(27, "Latvian"),
(28, "Estonian"),
(29, "Estonian"),
(30, "Marathi"),
(31, "Moldovan"),
(32, "Azeri"),
(33, "Fijian"),
(34, "Polish"),
(35, "Japanese"),
(36, "Swahili"),
(37, "Polish"),
(38, "Filipino"),
(39, "German"),
(40, "Papiamento"),
(41, "Māori"),
(42, "Hiri Motu"),
(43, "Catalan"),
(44, "Punjabi"),
(45, "Swedish"),
(46, "Bislama"),
(47, "Greek"),
(48, "Ndebele"),
(49, "Italian"),
(50, "Norwegian"),
(51, "Malay"),
(52, "Aymara"),
(53, "Moldovan"),
(54, "Chinese"),
(55, "Danish"),
(56, "Catalan"),
(57, "Azeri"),
(58, "Guaraní"),
(59, "Zulu"),
(60, "Aymara"),
(61, "Malay"),
(62, "Mongolian"),
(63, "Bislama"),
(64, "Moldovan"),
(65, "Malayalam"),
(66, "Tamil"),
(67, "Greek"),
(68, "Arabic"),
(69, "Dutch"),
(70, "Catalan"),
(71, "English"),
(72, "Icelandic"),
(73, "Belarusian"),
(74, "Papiamento"),
(75, "Polish"),
(76, "Portuguese"),
(77, "Swati"),
(78, "Malay"),
(79, "Hebrew"),
(80, "Swedish"),
(81, "Belarusian"),
(82, "Irish Gaelic"),
(83, "Czech"),
(84, "Korean"),
(85, "Nepali"),
(86, "Nepali"),
(87, "Persian"),
(88, "Assamese"),
(89, "Papiamento"),
(90, "Burmese"),
(91, "Marathi"),
(92, "Latvian"),
(93, "Moldovan"),
(94, "Fijian"),
(95, "Estonian"),
(96, "Tamil"),
(97, "Tok Pisin"),
(98, "Bosnian"),
(99, "Oriya"),
(100, "Spanish");

/* CREATE TABLE movie_favorite_list (
	id_favorite_list INT NOT NULL AUTO_INCREMENT,
	name_favorite_list VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_favorite_list)
); */

INSERT INTO movie_favorite_list (id_favorite_list, name_favorite_list) VALUES
(1, "");

/* CREATE TABLE restriction_profile(
    id_restriction_profile INT NOT NULL AUTO_INCREMENT,
     iso_restriction_profile VARCHAR(2) NOT NULL,
    restriction_profile_description VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_restriction_profile)
); */

INSERT INTO restriction_profile (id_restriction_profile, iso_restriction_profile, restriction_profile_description) VALUES
(1,"AL","El contenido está diseñado para los espectadores más jóvenes.");
(2,"6","El contenido puede incluir fantasía leve o violencia cómica. Contiene poco o nada de lenguaje fuerte o contenido sexual.");
(3,"9","El contenido puede incluir lenguaje suave, diálogos sugerentes, situaciones sexuales y/o violencia moderada.");
(4,"12","El contenido puede incluir lenguaje grosero, diálogos sugerentes, situaciones sexuales y/o violencia intensa.");

/* CREATE TABLE streaming_platform (
    id_streaming_platform INT NOT NULL AUTO_INCREMENT,
    streaming_platform_name VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_streaming_platform)
); */

INSERT INTO streaming_platform (id_streaming_platform, streaming_platform_name) VALUES
(1, "Netflix"),
(2, "HBO"),
(3, "Disney+"),
(4, "Prime"),
(5, "Paramount+"),
(6, "Apple");

/* CREATE TABLE movie_rating (
    id_movie_rating INT NOT NULL AUTO_INCREMENT,
    name_movie_rating VARCHAR(15) NOT NULL,
    PRIMARY KEY(id_movie_rating)
); */

INSERT INTO movie_rating (id_movie_rating, name_movie_rating) VALUES
(1, "1 estrella"),
(2, "2 estrella"),
(3, "3 estrella"),
(4, "4 estrella"),
(5, "5 estrella");

/* CREATE TABLE format_type(
    id_format_type INT NOT NULL AUTO_INCREMENT,
    name_format_type VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_format_type)
); */

INSERT INTO format_type (id_format_type, name_format_type) VALUES
(1, "Pelicula"),
(2, "Serie"),
(3, "Cortometraje"),
(4, "Largometraje"),
(5, "Miniserie");

/* CREATE TABLE media_universe(
    id_media_universe INT NOT NULL AUTO_INCREMENT,
    name_media_universe VARCHAR(50),
    PRIMARY KEY(id_media_universe)
); */

INSERT INTO media_universe (id_media_universe, name_media_universe) VALUES
(1, "Disney"),
(2, "Pixar"),
(3, "Marvel"),
(4, "Star wars"),
(5, "National Geographic"),
(6, "Espn"),
(7, "HBO"),
(8, "Max Original"),
(9, "Warner Bross"),
(10, "h&h Discovery"),
(11, "Discovery"),
(12, "CN Cartoon Network"),
(13, "DC"),
(14, "Discovery Kids"),
(15, "Adult Swim");


/* CREATE TABLE country (
	id_country INT NOT NULL AUTO_INCREMENT,
    iso_country_name VARCHAR(2) NOT NULL,
	country_name INT NOT NULL,
    PRIMARY KEY(id_country)
);*/

INSERT INTO country (id_country, iso_country_name, country_name) VALUES
(1, "AF", "Afganistán"),
(2, "AX", "Islas Gland"),
(3, "AL", "Albania"),
(4, "DE", "Alemania"),
(5, "AD", "Andorra"),
(6, "AO", "Angola"),
(7, "AI", "Anguilla"),
(8, "AQ", "Antártida"),
(9, "AG", "Antigua y Barbuda"),
(10, "AN", "Antillas Holandesas"),
(11, "SA", "Arabia Saudí"),
(12, "DZ", "Argelia"),
(13, "AR", "Argentina"),
(14, "AM", "Armenia"),
(15, "AW", "Aruba"),
(16, "AU", "Australia"),
(17, "AT", "Austria"),
(18, "AZ", "Azerbaiyán"),
(19, "BS", "Bahamas"),
(20, "BH", "Bahréin"),
(21, "BD", "Bangladesh"),
(22, "BB", "Barbados"),
(23, "BY", "Bielorrusia"),
(24, "BE", "Bélgica"),
(25, "BZ", "Belice"),
(26, "BJ", "Benin"),
(27, "BM", "Bermudas"),
(28, "BT", "Bhután"),
(29, "BO", "Bolivia"),
(30, "BA", "Bosnia y Herzegovina"),
(31, "BW", "Botsuana"),
(32, "BV", "Isla Bouvet"),
(33, "BR", "Brasil"),
(34, "BN", "Brunéi"),
(35, "BG", "Bulgaria"),
(36, "BF", "Burkina Faso"),
(37, "BI", "Burundi"),
(38, "CV", "Cabo Verde"),
(39, "KY", "Islas Caimán"),
(40, "KH", "Camboya"),
(41, "CM", "Camerún"),
(42, "CA", "Canadá"),
(43, "CF", "República Centroafricana"),
(44, "TD", "Chad"),
(45, "CZ", "República Checa"),
(46, "CL", "Chile"),
(47, "CN", "China"),
(48, "CY", "Chipre"),
(49, "CX", "Isla de Navidad"),
(50, "VA", "Ciudad del Vaticano"),
(51, "CC", "Islas Cocos"),
(52, "CO", "Colombia"),
(53, "KM", "Comoras"),
(54, "CD", "República Democrática del Congo"),
(55, "CG", "Congo"),
(56, "CK", "Islas Cook"),
(57, "KP", "Corea del Norte"),
(58, "KR", "Corea del Sur"),
(59, "CI", "Costa de Marfil"),
(60, "CR", "Costa Rica"),
(61, "HR", "Croacia"),
(62, "CU", "Cuba"),
(63, "DK", "Dinamarca"),
(64, "DM", "Dominica"),
(65, "DO", "República Dominicana"),
(66, "EC", "Ecuador"),
(67, "EG", "Egipto"),
(68, "SV", "El Salvador"),
(69, "AE", "Emiratos Árabes Unidos"),
(70, "ER", "Eritrea"),
(71, "SK", "Eslovaquia"),
(72, "SI", "Eslovenia"),
(73, "ES", "España"),
(74, "UM", "Islas ultramarinas de Estados Unidos"),
(75, "US", "Estados Unidos"),
(76, "EE", "Estonia"),
(77, "ET", "Etiopía"),
(78, "FO", "Islas Feroe"),
(79, "PH", "Filipinas"),
(80, "FI", "Finlandia"),
(81, "FJ", "Fiyi"),
(82, "FR", "Francia"),
(83, "GA", "Gabón"),
(84, "GM", "Gambia"),
(85, "GE", "Georgia"),
(86, "GS", "Islas Georgias del Sur y Sandwich del Sur"),
(87, "GH", "Ghana"),
(88, "GI", "Gibraltar"),
(89, "GD", "Granada"),
(90, "GR", "Grecia"),
(91, "GL", "Groenlandia"),
(92, "GP", "Guadalupe"),
(93, "GU", "Guam"),
(94, "GT", "Guatemala"),
(95, "GF", "Guayana Francesa"),
(96, "GN", "Guinea"),
(97, "GQ", "Guinea Ecuatorial"),
(98, "GW", "Guinea-Bissau"),
(99, "GY", "Guyana"),
(100, "HT", "Haití"),
(101, "HM", "Islas Heard y McDonald"),
(102, "HN", "Honduras"),
(103, "HK", "Hong Kong"),
(104, "HU", "Hungría"),
(105, "IN", "India"),
(106, "ID", "Indonesia"),
(107, "IR", "Irán"),
(108, "IQ", "Iraq"),
(109, "IE", "Irlanda"),
(110, "IS", "Islandia"),
(111, "IL", "Israel"),
(112, "IT", "Italia"),
(113, "JM", "Jamaica"),
(114, "JP", "Japón"),
(115, "JO", "Jordania"),
(116, "KZ", "Kazajstán"),
(117, "KE", "Kenia"),
(118, "KG", "Kirguistán"),
(119, "KI", "Kiribati"),
(120, "KW", "Kuwait"),
(121, "LA", "Laos"),
(122, "LS", "Lesotho"),
(123, "LV", "Letonia"),
(124, "LB", "Líbano"),
(125, "LR", "Liberia"),
(126, "LY", "Libia"),
(127, "LI", "Liechtenstein"),
(128, "LT", "Lituania"),
(129, "LU", "Luxemburgo"),
(130, "MO", "Macao"),
(131, "MK", "ARY Macedonia"),
(132, "MG", "Madagascar"),
(133, "MY", "Malasia"),
(134, "MW", "Malawi"),
(135, "MV", "Maldivas"),
(136, "ML", "Malí"),
(137, "MT", "Malta"),
(138, "FK", "Islas Malvinas"),
(139, "MP", "Islas Marianas del Norte"),
(140, "MA", "Marruecos"),
(141, "MH", "Islas Marshall"),
(142, "MQ", "Martinica"),
(143, "MU", "Mauricio"),
(144, "MR", "Mauritania"),
(145, "YT", "Mayotte"),
(146, "MX", "México"),
(147, "FM", "Micronesia"),
(148, "MD", "Moldavia"),
(149, "MC", "Mónaco"),
(150, "MN", "Mongolia"),
(151, "MS", "Montserrat"),
(152, "MZ", "Mozambique"),
(153, "MM", "Myanmar"),
(154, "NA", "Namibia"),
(155, "NR", "Nauru"),
(156, "NP", "Nepal"),
(157, "NI", "Nicaragua"),
(158, "NE", "Níger"),
(159, "NG", "Nigeria"),
(160, "NU", "Niue"),
(161, "NF", "Isla Norfolk"),
(162, "NO", "Noruega"),
(163, "NC", "Nueva Caledonia"),
(164, "NZ", "Nueva Zelanda"),
(165, "OM", "Omán"),
(166, "NL", "Países Bajos"),
(167, "PK", "Pakistán"),
(168, "PW", "Palau"),
(169, "PS", "Palestina"),
(170, "PA", "Panamá"),
(171, "PG", "Papúa Nueva Guinea"),
(172, "PY", "Paraguay"),
(173, "PE", "Perú"),
(174, "PN", "Islas Pitcairn"),
(175, "PF", "Polinesia Francesa"),
(176, "PL", "Polonia"),
(177, "PT", "Portugal"),
(178, "PR", "Puerto Rico"),
(179, "QA", "Qatar"),
(180, "GB", "Reino Unido"),
(181, "RE", "Reunión"),
(182, "RW", "Ruanda"),
(183, "RO", "Rumania"),
(184, "RU", "Rusia"),
(185, "EH", "Sahara Occidental"),
(186, "SB", "Islas Salomón"),
(187, "WS", "Samoa"),
(188, "AS", "Samoa Americana"),
(189, "KN", "San Cristóbal y Nevis"),
(190, "SM", "San Marino"),
(191, "PM", "San Pedro y Miquelón"),
(192, "VC", "San Vicente y las Granadinas"),
(193, "SH", "Santa Helena"),
(194, "LC", "Santa Lucía"),
(195, "ST", "Santo Tomé y Príncipe"),
(196, "SN", "Senegal"),
(197, "CS", "Serbia y Montenegro"),
(198, "SC", "Seychelles"),
(199, "SL", "Sierra Leona"),
(200, "SG", "Singapur"),
(201, "SY", "Siria"),
(202, "SO", "Somalia"),
(203, "LK", "Sri Lanka"),
(204, "SZ", "Suazilandia"),
(205, "ZA", "Sudáfrica"),
(206, "SD", "Sudán"),
(207, "SE", "Suecia"),
(208, "CH", "Suiza"),
(209, "SR", "Surinam"),
(210, "SJ", "Svalbard y Jan Mayen"),
(211, "TH", "Tailandia"),
(212, "TW", "Taiwán"),
(213, "TZ", "Tanzania"),
(214, "TJ", "Tayikistán"),
(215, "IO", "Territorio Británico del Océano Índico"),
(216, "TF", "Territorios Australes Franceses"),
(217, "TL", "Timor Oriental"),
(218, "TG", "Togo"),
(219, "TK", "Tokelau"),
(220, "TO", "Tonga"),
(221, "TT", "Trinidad y Tobago"),
(222, "TN", "Túnez"),
(223, "TC", "Islas Turcas y Caicos"),
(224, "TM", "Turkmenistán"),
(225, "TR", "Turquía"),
(226, "TV", "Tuvalu"),
(227, "UA", "Ucrania"),
(228, "UG", "Uganda"),
(229, "UY", "Uruguay"),
(230, "UZ", "Uzbekistán"),
(231, "VU", "Vanuatu"),
(232, "VE", "Venezuela"),
(233, "VN", "Vietnam"),
(234, "VG", "Islas Vírgenes Británicas"),
(235, "VI", "Islas Vírgenes de los Estados Unidos"),
(236, "WF", "Wallis y Futuna"),
(237, "YE", "Yemen"),
(238, "DJ", "Yibuti"),
(239, "ZM", "Zambia"),
(240, "ZW", "Zimbabue");


/* CREATE TABLE gender_user (
	id_gender_user INT NOT NULL AUTO_INCREMENT,
    gender_user_description VARCHAR(2) NOT NULL,
    PRIMARY KEY(id_gender_user)
); */
INSERT INTO gender_user (id_gender_user, gender_user_description) VALUES
(1, "Bigender"),
(2, "Female"),
(3, "Male"),
(4, "Non-binary");

/*
CREATE TABLE province (
	id_province INT NOT NULL AUTO_INCREMENT,
	province_name VARCHAR(50) NOT NULL,
	id_country INT NOT NULL,
    PRIMARY KEY(id_province),
    FOREIGN KEY (id_country) REFERENCES country(id_country)
);*/

INSERT INTO province (id_country, province_name, id_country) VALUES
(1, "Buenos Aires",13),
(2, "Buenos Aires-GBA",13),
(3, "Capital Federal",13),
(4, "Catamarca",13),
(5, "Chaco",13),
(6, "Chubut",13),
(7, "Córdoba",13),
(8, "Corrientes",13),
(9, "Entre Ríos",13),
(10, "Formosa",13),
(11, "Jujuy",13),
(12, "La Pampa",13),
(13, "La Rioja",13),
(14, "Mendoza",13),
(15, "Misiones",13),
(16, "Neuquén",13),
(17, "Río Negro",13),
(18, "Salta",13),
(19, "San Juan",13),
(20, "San Luis",13),
(21, "Santa Cruz",13),
(22, "Santa Fe",13),
(23, "Santiago del Estero",13),
(24, "Tierra del Fuego",13),
(25, "Tucumán",46),
(26,"Arica",46),
(27,"Parinacota",46),
(28,"Iquique",46),
(29,"El Tamarugal",46),
(30,"Tocopilla",46),
(31,"El Loa",46),
(32,"Antofagasta",46),
(33,"Chañaral",46),
(34,"Copiapó",46),
(35,"Montevideo",229),
(35,"Maldonado",229),
(35,"Salto",229),
(35,"Ciudad de la Costa",229);


/* CREATE TABLE type_of_plan (
	id_type_of_plan INT NOT NULL AUTO_INCREMENT,
	type_of_plan_name VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_type_of_plan)
); */
INSERT INTO type_of_plan (id_type_of_plan, type_of_plan_name) VALUES
(1, "Free"),
(2, "Essential"),
(3, "Standard"),
(4, "Premium");


/* CREATE TABLE subscription (
	id_subscription INT NOT NULL AUTO_INCREMENT,
	id_type_of_plan INT NOT NULL,
    PRIMARY KEY(id_subscription),
    FOREIGN KEY (id_type_of_plan) REFERENCES type_of_plan(id_type_of_plan)
); */

INSERT INTO subscription (id_subscription, id_type_of_plan) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);


/* CREATE TABLE profile (
	id_profile INT NOT NULL AUTO_INCREMENT,
	profile_name VARCHAR(50) NOT NULL,
    id_favorite_list INT NOT NULL,
    id_restriction_profile INT NOT NULL,
    PRIMARY KEY(id_profile),
    FOREIGN KEY(id_favorite_list) REFERENCES movie_favorite_list(id_favorite_list),
    FOREIGN KEY(id_restriction_profile) REFERENCES restriction_profile(id_restriction_profile)
); */
INSERT INTO profile (id_profile, profile_name, id_favorite_list, id_restriction_profile) VALUES
(1, "lhoulridge0", 1, 1);
(2, "sminster1", 2, 2);
(3, "ajezard2", 3, 3);
(4, "hhanning3", 4, 4);
(5, "tdupree4", 5, 1);
(6, "sdegg5", 6, 2);
(7, "aliffe6", 7, 3);
(8, "dshoesmith7", 8, 4);
(9, "vgillanders8", 9, 1);
(10, "fgodsell9", 10, 2);
(11, "awardsa", 11, 3);
(12, "ikorfb", 12, 4);
(13, "adoutchc", 13, 1);
(14, "lwittked", 14, 2);
(15, "cvescovinie", 15, 3);
(16, "mocoskerryf", 16, 4);
(17, "hdoubleg", 17, 1);
(18, "ecleeverh", 18, 2);
(19, "adinegesi", 19, 3);
(20, "nlauxj", 20, 4);


/* CREATE TABLE user (
    id_user INT NOT NULL AUTO_INCREMENT,
    user_name VARCHAR(50) NOT NULL,
    id_profile INT NOT NULL,
    PRIMARY KEY(id_user),
    FOREIGN KEY(id_profile) REFERENCES profile(id_profile)
); */
INSERT INTO user (id_user, user_name, id_profile) VALUES
(1, "wdelacote0", 1),
(2, "vheffron1", 2),
(3, "awadworth2", 3),
(4, "rtarzey3", 4),
(5, "mduffyn4", 5),
(6, "ccorden5", 6),
(7, "ztregian6", 7),
(8, "mjaray7", 8),
(9, "iclever8", 9),
(10, "mtissington9", 10),
(11, "bocorra", 11),
(12, "sjumontb", 12),
(13, "kwillcottc", 13),
(14, "ckollasd", 14),
(15, "zormondee", 15),
(16, "bmartellof", 16),
(17, "osulleyg", 17),
(18, "mgilardengoh", 18),
(19, "tstandelli", 19),
(20, "lbasterfieldj", 20);

/* CREATE TABLE customer (
    id_customer INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    dni INT NOT NULL,
    email VARCHAR(50) NOT NULL,
    id_gender_user VARCHAR(50) NOT NULL,
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
); */

INSERT INTO customer (id_customer, first_name, last_name, dni, email, id_gender_user, id_user, id_country, id_province, id_subscription) VALUES
(1, "Chadwick", "Brandacci", "82-4336045", "cbrandacci0@is.gd", 3, 1, 13, 1, 1);
(2, "Jamill", "Aleshintsev", "00-8680047", "jaleshintsev1@epa.gov", 3, 2, 13, 2, 2);
(3, "Rolando", "Cursons", "44-8986972", "rcursons2@harvard.edu", 3, 3, 13, 3, 3);
(4, "Kamila", "Manvell", "17-5678386", "kmanvell3@elpais.com", 2, 4, 13, 4, 4);
(5, "Edgar", "O""Farris", "44-6655474", "eofarris4@tiny.cc", 3, 5, 13, 5, 1);
(6, "Rochester", "Burkin", "69-6348627", "rburkin5@buzzfeed.com", 3, 6, 13, 6, 2);
(7, "Merell", "Abbie", "93-8711197", "mabbie6@unc.edu", 1, 7, 13, 7, 3);
(8, "Trace", "Bellord", "72-8726834", "tbellord7@meetup.com", 3, 8, 13, 8, 4);
(9, "Jozef", "Misken", "43-1690085", "jmisken8@home.pl", 1, 9, 13, 9, 1);
(10, "Leese", "Ferran", "78-3695322", "lferran9@weather.com", 4, 10, 13, 10, 2);
(11, "Egbert", "McKinnell", "88-7527178", "emckinnella@gizmodo.com", 3, 11, 13, 11, 3);
(12, "Morlee", "Ryce", "28-7687029", "mryceb@ucoz.com", 3, 12, 13, 12, 4);
(13, "Clementius", "O""Shavlan", "50-2043123", "coshavlanc@ucoz.com", 3, 13, 13, 1, 13, 1);
(14, "Karina", "Middiff", "41-5720525", "kmiddiffd@digg.com", 2, 14, 13, 14, 2);
(15, "Kelci", "Porritt", "71-7288888", "kporritte@indiegogo.com", 2, 15, 13, 15, 3);
(16, "Maris", "Chittim", "41-1441911", "mchittimf@cnn.com", 2, 16, 13, 16, 4);
(17, "Sandy", "Mattheeuw", "06-5137487", "smattheeuwg@dyndns.org", 3, 17, 13, 17, 1);
(18, "Bonnibelle", "Tremblot", "36-7663417", "btrembloth@state.tx.us", 2, 18, 13, 18, 2);
(19, "Bennie", "Phelan", "22-5223038", "bphelani@accuweather.com", 2, 19, 13, 19, 3);
(20, "Doe", "Menendez", "88-4917684", "dmenendezj@lulu.com", 2, 20, 13, 20, 4);


/* CREATE TABLE movie (
	id_movie INT NOT NULL AUTO_INCREMENT,
	title VARCHAR(50) NOT NULL,
	description VARCHAR(255) NOT NULL,
    popularity INT NOT NULL DEFAULT 0,
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
); */

INSERT INTO movie (id_movie, title, description, popularity, director, duration_time, release_date, vote_average, vote_count, id_classification_information, id_movie_rating, id_language, id_movie_genre, id_format_type, id_media_universe, id_streaming_platform) VALUES

(1, "Deadpool & Wolverine", "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine.", 4467.772, "Marietta Shirer", "02:30:00", "2024-07-24", 7.761, 2452, 1, 5, 71, 4, 1, 3, 3),
(2, "Inside Out 2", "Teenager Riley's mind headquarters is undergoing a sudden demolition to make room for something entirely unexpected: new Emotions! Joy, Sadness, Anger, Fear and Disgust, who’ve long been running a successful operation by all accounts, aren’t sure how to feel when Anxiety shows up. And it looks like she’s not alone.", 2203.934, "Arlen Glanz", "01:30:00", "2024-06-11", 7.7, 3086, 1, 5, 71, 2, 1, 6, 6),
(3, "Despicable Me 4", "Gru and Lucy and their girls—Margo, Edith and Agnes—welcome a new member to the Gru family, Gru Jr., who is intent on tormenting his dad. Gru also faces a new nemesis in Maxime Le Mal and his femme fatale girlfriend Valentina, forcing the family to go on the run.", 1687.022, "Chance Waeland", 02:00:00, "2024-06-20", 7.264, 1286, 1, 3, 71, 5, 2, 4, 6),
(4, "Twisters", "As storm season intensifies, the paths of former storm chaser Kate Carter and reckless social-media superstar Tyler Owens collide when terrifying phenomena never seen before are unleashed. The pair and their competing teams find themselves squarely in the paths of multiple storm systems converging over central Oklahoma in the fight of their lives.", 1594.068, "Marietta Shirer", "01:30:00", "2024-07-10", 7.023, 1115, 3, 2, 71, 4, 5, 6, 6),
(5, "Bad Boys: Ride or Die", "After their late former Captain is framed, Lowrey and Burnett try to clear his name, only to end up on the run themselves.", 1469.895, "Marietta Shirer", "02:40:00", "2024-06-05", 7.57, 1735, 1, 2, 71, 4, 1, 2, 6),
(6, "Gunner", "While on a camping trip in order to reconnect, war veteran Colonel Lee Gunner must save his two sons from a gang of violent bikers when they're kidnapped after accidentally stumbling upon to a massive drug operation.", 1401.788, "Marietta Shirer", "01:50:00", "2024-08-15", 6.311, 427, 2, 4, 71, 4, 3, 13, 6),
(7, "The Union", "A New Jersey construction worker goes from regular guy to aspiring spy when his long-lost high school sweetheart recruits him for an espionage mission.", 1305.738, "Marietta Shirer", "01:55:00", "2024-08-07", 6.431, 331, 1, 2, 71, 4, 5, 11, 6),
(8, "It Ends with Us", "When a woman's first love suddenly reenters her life, her relationship with a charming, but abusive neurosurgeon is upended, and she realizes she must learn to rely on her own strength to make an impossible choice for her future.", 1167.017, "Marietta Shirer", "03:30:00", "2024-08-13", 6.431, 331, 5, 5, 71, 4, 5, 10, 6),
(9, "Jackpot!", "In the near future, a 'Grand Lottery' has been established - the catch: kill the winner before sundown to legally claim their multi-billion dollar jackpot. When Katie Kim mistakenly finds herself with the winning ticket, she reluctantly joins forces with amateur lottery protection agent Noel Cassidy who must get her to sundown in exchange for a piece of her prize.", 1144.944, "Marietta Shirer", "01:50:00", "2024-05-07", 6.49, 102, 1, 4, 71, 8, 5, 15, 6),
(10, "Darkness of Man", "Russell Hatch, an Interpol operative who takes on the role of father figure to Jayden, the son of an informant killed in a routine raid gone wrong. Years later, Hatch finds himself protecting Jayden and his grandfather from a group of merciless gangs in an all-out turf war, stopping at nothing to protect Jayden and fight anyone getting in his way.", 1098.629, "Marietta Shirer", "01:30:00", "2024-07-10", 6.556, 462, 3, 3, 71, 4, 5, 14, 1),
(11, "Longlegs", "FBI Agent Lee Harker is assigned to an unsolved serial killer case that takes an unexpected turn, revealing evidence of the occult. Harker discovers a personal connection to the killer and must stop him before he strikes again.", 1024.117, "Marietta Shirer", "02:45:00", "2024-07-03", 6.8, 103, 1, 5, 3, 4, 5, 6, 6),
(12, "Kill", "When an army commando finds out his true love is engaged against her will, he boards a New Dehli-bound train in a daring quest to derail the arranged marriage. But when a gang of knife-wielding thieves begin to terrorize innocent passengers on his train, the commando takes them on himself in a death-defying kill-spree to save those around him — turning what should have been a typical commute into an adrenaline-fueled thrill ride.", 1002.352, "Marietta Shirer", "01:30:00", "2024-08-16", 6.19, 29, 1, 5, 71, 4, 5, 6, 3),
(13, "Crescent City", "When a ruthless serial killer terrorizes a small Southern town, everyone becomes a suspect -- including local authorities. As the body count rises and the dark mystery deepens, the chief detective becomes haunted by the horrors of his past.", 997.712, "Marietta Shirer", "02:30:00", "2024-08-13", 7.21, 678, 2, 4, 3, 4, 5, 1, 5),
(14, "Alien: Romulus", "While scavenging the deep ends of a derelict space station, a group of young space colonizers come face to face with the most terrifying life form in the universe.", 938.313, "Marietta Shirer", "02:20:00", "2024-06-26", 6.853, 1509, 1, 4, 3, 4, 5, 8, 6),
(15, "A Quiet Place: Day One", "As New York City is invaded by alien creatures who hunt by sound, a woman named Sam fights to survive with her cat.", 809.025, "Marietta Shirer", "02:00:00", "2006-02-14", 4.152, 99, 1, 3, 3, 4, 5, 6, 6),
(16, "Slaughtered Vomit Dolls", "The gruesome tapestry of psychological manifestations of a nineteen year old bulimic runaway stripper-turned prostitute as she descends into a hellish pit of satanic nightmares and hallucinations.", 776.295, "Marietta Shirer", "01:30:00", "2024-08-01", 6.382, 186, 4, 3, 3, 4, 3, 10, 2),
(17, "Saving Bikini Bottom: The Sandy Cheeks Movie", "When Bikini Bottom is scooped from the ocean, scientific squirrel Sandy Cheeks and her pal SpongeBob SquarePants saddle up for Texas to save their town.", 772.62, "Marietta Shirer", "02:00:00", "2024-03-15", 6.49, 199, 1, 2, 3, 4, 1, 9, 6),
(18, "Prey", "A young couple is compelled to leave their Christian missionary station in the Kalahari Desert after being threatened with death by an extremist militant gang. After crashing their aircraft they must battle man and beast for their lives.", 756.032, "Marietta Shirer", "02:30:00", "2024-04-30", 7.2, 841, 5, 1, 62, 4, 1, 10, 6),
(19, "The Garfield Movie", "Garfield, the world-famous, Monday-hating, lasagna-loving indoor cat, is about to have a wild outdoor adventure! After an unexpected reunion with his long-lost father – scruffy street cat Vic – Garfield and his canine friend Odie are forced from their perfectly pampered life into joining Vic in a hilarious, high-stakes heist.", 4467.772, "Marietta Shirer", "02:30:00", "2024-07-24", 7.761, 2452, 1, 5, 3, 6, 1, 6, 4),
(20, "Farang", "Sam is a professional boxer about to get released from prison. While on parole, his past catches up with him and he has no choice but to flee. Five years later, he has rebuilt a simple life on an exotic island in Thailand with his wife and her daughter, but when he gets blackmailed by a dangerous local godfather, he must embark on a dangerous drug smuggling mission which results in a tragedy. Now has only one purpose: to seek merciless vengeance.", 79.7, "Marietta Shirer", "02:10:00", "2022-06-28", 6.67, 12, 1, 71, 3, 4, 2, 6, 6);






















