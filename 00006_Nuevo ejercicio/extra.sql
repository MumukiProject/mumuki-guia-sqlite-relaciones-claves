CREATE TABLE partituras (id_partitura INTEGER PRIMARY KEY, codigo_opus TEXT, titulo TEXT, compositor TEXT);
CREATE TABLE canciones (id_cancion INTEGER PRIMARY KEY, nombre_cancion TEXT, id_partitura INTEGER NOT NULL, FOREIGN KEY (id_partitura) references partituras(id_partitura));
