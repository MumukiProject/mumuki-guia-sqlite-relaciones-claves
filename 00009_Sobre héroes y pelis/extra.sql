CREATE TABLE series_peliculas (id_contenido INTEGER PRIMARY KEY, titulo TEXT);

CREATE TABLE personaje_por_contenido (id_contenido INTEGER PRIMARY KEY, id_personaje INTEGER PRIMARY KEY, FOREIGN KEY (id_contenido) REFERENCES series_peliculas(id_contenido), FOREIGN KEY (id_personaje) REFERENCES personajes(id_personaje));

CREATE TABLE personajes (id_personaje INTEGER PRIMARY KEY, actriz_actor TEXT);

INSERT INTO series_peliculas 
VALUES (1, "Los juegos del hambre"),
  (2, "X-men"),
  (3, "Yo antes de tí");

INSERT INTO personajes 
VALUES (1, "Jennifer Lawrence"),
  (2, "Sam Claflin");

INSERT INTO personaje_por_contenido
VALUES (1, 1),
  (1, 2),
  (2, 1),
  (3, 2);