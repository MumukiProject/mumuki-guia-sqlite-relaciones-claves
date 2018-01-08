CREATE TABLE canciones (id_cancion INTEGER PRIMARY KEY, titulo TEXT, album TEXT, artista TEXT, genero TEXT, anio INTEGER);

  
INSERT INTO canciones VALUES 
(1, "Bohemian rhapsody", "A night at the Opera", "Queen", "rock", 1975), 
(2, "Can`t buy me love", "A hard day`s night", "The Beatles", "rock, pop", 1964),
(3, "Baby on board", "Más grandes que Jesús", "Los Borbotones", "rock, pop", 1985);

CREATE TABLE artistas (id_artista INTEGER PRIMARY KEY, nombre TEXT, integrantes TEXT, genero TEXT, nacionalidad TEXT);

INSERT INTO artistas VALUES
(1, "Queen", "Freddie Mercury, Brian May, Roger Taylor, John Deacon", "rock", "británica"), 
(2, "The Beatles", "John Lennon, Paul McCartney, Ringo Starr, George Harrison", "rock, pop", "inglesa"),
(3, "Los Borbotones", "Homero Simpson, Apu de Beumarche, Seymour Skinner, Barney Gómez", "rock, pop", "estadounidense");