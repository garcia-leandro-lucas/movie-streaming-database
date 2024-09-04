<img src="/sql/image/noche-peliculas-streaming.jpg" alt="Pochoclos" style="width: 100%"/>
<h1 style="text-align:center;">Movie streaming database</h1>

<br />

#### <ins>Descripción de la propuesta:</ins>

La intensión de la propuesta es realizar la creación de una base de datos para una plataforma de streaming de películas. La misma se llamara **goMovieStreaming**.

<br />

#### <ins>Links:</ins>


<img src="/sql/image/excel.svg" alt="Pochoclos" style="width: 25px;"/>

[**Tablas de base de datos:** goMovieStreaming](https://docs.google.com/spreadsheets/d/1lKco6SCUG9RAxh2DJNoWn8p9QbiRPyHySRws7j2Fcno/edit?usp=sharing)

<br />
<img src="/sql/image/draw-io.svg" alt="Pochoclos" style="width: 30px;"/>

[**Diagrama Entidad relación:** goMovieStreaming](https://drive.google.com/file/d/1dyH2eZ4jLdbfl1EI9wHiCd_GPoketLBF/view?usp=sharing)

<br />
<hr />

### Descripción de los diferentes objetos:

#### 1.  View
    view_list_of_movies
- **Descripción:** Esta vista muestra la información principal de una lista de peliculas.
- **Objetivo:** Mostrar la información rápida de las principales columnas.
- **Tablas/Datos:**

| Tabla  | Columnas |
| ------------- | ------------- |
| movie  | title |
| movie  | description |
| movie  | popularity |
| movie  | release_date |

<br />

    view_top_10_most_popular_movies
- **Descripción:** Esta vista muestra un top 10 de las peliculas mas populares y en que plataforma se visualiza.
- **Objetivo:** Mostrar la información rápida de las principales columnas con información de popularidad según plataforma de streaming.
- **Tablas/Datos:**

| Tabla  | Columnas |
| ------------- | ------------- |
| movie  | title |
| movie  | popularity |
| streaming_platform  | streaming_platform_name |

<br />

    view_list_of_movies_with_the_highest_rating
- **Descripción:** Esta vista muestra las peliculas con mas altas clasificaciones de raiting.
- **Objetivo:** Mostrar la información rápida del mejor raiting de las peliculas.
- **Tablas/Datos:**

| Tabla  | Columnas |
| ------------- | ------------- |
| movie  | title |
| streaming_platform  | streaming_platform_name |
| movie_rating  | name_movie_rating |

<br />

    view_list_of_customer_nationalities
- **Descripción:** Esta vista muestra las nacionalidades de los clientes registrados.
- **Objetivo:** Mostrar la información rápida la procedencia de los usuarios registrados.
- **Tablas/Datos:**

| Tabla  | Columnas |
| ------------- | ------------- |
| customer  | first_name |
| customer  | last_name |
| country  | country_name |
| province  | province_name |

<br />

    view_list_of_customer_with_free_plan
- **Descripción:** Esta vista muestra la lista de los clientes que poseen un plan Gratis.
- **Objetivo:** Mostrar la información rápida de los clientes registrados en un plan Gratis.
- **Tablas/Datos:**

| Tabla  | Columnas |
| ------------- | ------------- |
| customer  | id_customer |
| customer  | first_name |
| customer  | last_name |
| customer  | id_subscription |

<br />

    view_list_of_customer_with_essential_plan
- **Descripción:** Esta vista muestra la lista de los clientes que poseen un plan Essential.
- **Objetivo:** Mostrar la información rápida de los clientes registrados en un plan Essential.
- **Tablas/Datos:**

| Tabla  | Columnas |
| ------------- | ------------- |
| customer  | id_customer |
| customer  | first_name |
| customer  | last_name |
| customer  | id_subscription |

<br />

    view_list_of_customer_with_standard_plan
- **Descripción:** Esta vista muestra la lista de los clientes que poseen un plan Standard.
- **Objetivo:** Mostrar la información rápida de los clientes registrados en un plan Standard.
- **Tablas/Datos:**

| Tabla  | Columnas |
| ------------- | ------------- |
| customer  | id_customer |
| customer  | first_name |
| customer  | last_name |
| customer  | id_subscription |

<br />

    view_list_of_customer_with_premium_plan
- **Descripción:** Esta vista muestra la lista de los clientes que poseen un plan Premium.
- **Objetivo:** Mostrar la información rápida de los clientes registrados en un plan Premium.
- **Tablas/Datos:**

| Tabla  | Columnas |
| ------------- | ------------- |
| customer  | id_customer |
| customer  | first_name |
| customer  | last_name |
| customer  | id_subscription |

<br />

    view_number_of_customer_with_free_plan
- **Descripción:** Esta vista muestra la cantidad de clientes que poseen el plan Gratis.
- **Objetivo:** Mostrar la información rápida de la cantidad de clientes con el Plan Gratis.
- **Tablas/Datos:**

| Tabla  | Columnas |
| ------------- | ------------- |
| view_number_of_customer_with_free_plan  | COUNT(*) |

<br />

    view_number_of_customer_with_essential_plan
- **Descripción:** Esta vista muestra la cantidad de clientes que poseen el plan Essential.
- **Objetivo:** Mostrar la información rápida de la cantidad de clientes con el Plan Essential.
- **Tablas/Datos:**

| Tabla  | Columnas |
| ------------- | ------------- |
| view_number_of_customer_with_essential_plan  | COUNT(*) |

<br />

    view_number_of_customer_with_standard_plan
- **Descripción:** Esta vista muestra la cantidad de clientes que poseen el plan Standard.
- **Objetivo:** Mostrar la información rápida de la cantidad de clientes con el Plan Standard.
- **Tablas/Datos:**

| Tabla  | Columnas |
| ------------- | ------------- |
| view_number_of_customer_with_standard_plan  | COUNT(*) |

<br />

    view_number_of_customer_with_premium_plan
- **Descripción:** Esta vista muestra la cantidad de clientes que poseen el plan Premium.
- **Objetivo:** Mostrar la información rápida de la cantidad de clientes con el Plan Premium.
- **Tablas/Datos:**

| Tabla  | Columnas |
| ------------- | ------------- |
| view_number_of_customer_with_premium_plan  | COUNT(*) |

<br />

#### 2.  Function
    function_greet_the_customer
- **Descripción:** Esta es una función que imprime el saludo con el nombre y el apellido de los clientes registrados.
- **Objetivo:** Mostrar la información rápida del saludo y poder utilizarla para futuras aplicaciones.
- **Tablas/Datos:**

| Tabla  | Columnas |
| ------------- | ------------- |
| customer  | id_customer |
| customer  | first_name |
| customer  | last_name |
| customer  | greet_the_customer(first_name, last_name) |

<br />

    rating_stars
- **Descripción:** Esta es una función que aplica visualmente asteriscos dependiendo de la cantidad de estrellas que tengas una pelicula según su clasificación por usuarios.
- **Objetivo:** Mostrar la información rápida, visual del raiting y poder utilizarla para futuras aplicaciones.
- **Tablas/Datos:**

| Tabla  | Columnas |
| ------------- | ------------- |
| movie  | title |
| movie  | popularity |
| movie  | rating_start |

<br />

#### 3.  Stored Procedures
    stored_procedures_list_of_movies_according_to_popularity
- **Descripción:** Este stored procedures muestra en una tabla con las primeras 3 peliculas más populares de forma descendente.
- **Objetivo:** Mostrar la información rápida para poder utilizarla en futuras aplicaciones.
- **Tablas/Datos:**

| Tabla  | Columnas |
| ------------- | ------------- |
| movie  | id_movie |
| movie  | title |
| movie  | popularity |

<br />

    stored_procedures_rating_stars
- **Descripción:** Este stored procedures muestra en una tabla las peores peliculas por debajo de 3 estrellas con un limite mostrando las 5 principales.
- **Objetivo:** Mostrar la información rápida para poder utilizarla en futuras aplicaciones.
- **Tablas/Datos:**

| Tabla  | Columnas |
| ------------- | ------------- |
| movie  | id_movie |
| movie  | title |
| movie  | id_movie_rating |

<br />

#### 4.  Triggers
    trigger_check_rating_insert_value
- **Descripción:** Este triggers chequea el valor insertado del rating de una pelicula.
- **Objetivo:** Validar la información de inserción.
- **Tablas/Datos:**

| Tabla  | Columnas |
| ------------- | ------------- |
| movie  | id_movie_rating |

<br />

    trigger_check_vote_average_update_value
- **Descripción:** Este stored procedures muestra en una tabla las peores peliculas por debajo de 3 estrellas con un limite mostrando las 5 principales.
- **Objetivo:** Validar la información de actualización.
- **Tablas/Datos:**

| Tabla  | Columnas |
| ------------- | ------------- |
| movie  | vote_average |

<br />