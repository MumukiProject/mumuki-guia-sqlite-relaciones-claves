CREATE TABLE artistas (id_artista INTEGER PRIMARY KEY, nombre TEXT, integrantes TEXT, genero TEXT);

INSERT INTO artistas VALUES
(1, "Queen", "Freddie Mercury, Brian May, Roger Taylor, John Deacon", "rock"), 
(2, "The Beatles", "John Lennon, Paul McCartney, Ringo Starr, George Harrison", "rock, pop"),
(3, "Los Borbotones", "Homero Simpson, Apu de Beumarche, Seymour Skinner, Barney Gómez", "folklore");

CREATE TABLE canciones (id_cancion INTEGER PRIMARY KEY, titulo TEXT, album TEXT, artista TEXT);

INSERT INTO canciones VALUES 
(1, "Bohemian rhapsody", "A night at the Opera", 1),
(2, "I want to break bree", "The works", 1),
(3, "Can`t buy me love", "A hard day`s night", 2),
(4, "Blackbird", "The Beatles", 2),
(5, "A hard day`s night", "A hard day`s night", 2),
(6, "Baby on board", "Más grandes que Jesús", 3);

