CREATE DATABASE peliculas; -- Crea la DB

CREATE TABLE peliculas (
  id_pelicula SERIAL PRIMARY KEY NOT NULL,
  pelicula VARCHAR NOT NULL,
  anho_estreno INT NOT NULL,
  director VARCHAR NOT NULL
); -- Crea la tabla Películas

CREATE TABLE reparto (
  id_reparto SERIAL PRIMARY KEY NOT NULL,
  actor VARCHAR NOT NULL,
  id_pelicula INT NOT NULL,
  FOREIGN KEY (id_pelicula) REFERENCES peliculas(id_pelicula)
); -- Crea la tabla Reparto

TRUNCATE peliculas, reparto; -- Limpia las tablas en caso de tener datos (reinicia el ID a 0)

COPY peliculas(id_pelicula, pelicula, anho_estreno, director) FROM 'C:\Users\Topher\Desktop\desafiosql\trabajo-1\peliculas.csv' DELIMITER ',' CSV HEADER; -- Copia la información del archivo csv
COPY reparto(id_pelicula, actor) FROM 'C:\Users\Topher\Desktop\desafiosql\trabajo-1\reparto.csv' DELIMITER ',' CSV HEADER; -- Copia la información del archivo csv

SELECT * FROM peliculas; -- Verificamos si la información que se encuentra en las tablas es correcta
SELECT * FROM reparto; -- Verificamos si la información que se encuentra en las tablas es correcta

SELECT id_pelicula FROM peliculas WHERE pelicula = 'Titanic'; -- Punto 3 Obtenemos el ID

SELECT actor FROM reparto WHERE id_pelicula = (SELECT id_pelicula FROM peliculas WHERE pelicula = 'Titanic'); -- Punto 4 Consultamos todos los actores de la película Titanic

SELECT COUNT(DISTINCT p.id_pelicula) AS cantidad_peliculas FROM peliculas p
INNER JOIN reparto r ON p.id_pelicula = r.id_pelicula
WHERE actor = 'Harrison Ford' AND p.id_pelicula <= 100; -- Punto 5 Revisamos el top 100 de películas de Harrison Ford

SELECT pelicula FROM peliculas WHERE anho_estreno BETWEEN 1990 AND 1999 ORDER BY pelicula ASC; -- Punto 6 Buscamos y ordenamos las películas que se encuentran dentro de esos años

SELECT pelicula, LENGTH(pelicula) AS longitud_titulo FROM peliculas; -- Punto 7 Muestra todos los títulos y la longitud de los títulos de las películas

SELECT MAX(LENGTH(pelicula)) AS longitud_maxima FROM peliculas; -- Punto 8 Busca la película con el título más largo

SELECT pelicula, LENGTH(pelicula) AS longitud_titulo FROM peliculas WHERE LENGTH(pelicula) = (
  SELECT MAX(LENGTH(pelicula))
  FROM peliculas
); -- Punto 8 con el título de la película que tiene el nombre más largo
