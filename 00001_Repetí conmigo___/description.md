Dejemos de lado por un rato las series y películas. Pensemos en las aplicaciones que guardan nuestras listas de reproducción de canciones. :headphones:

Tenemos dos tablas: 

* una que guarda toda la lista de canciones, con el detalle de cada una,
* y otra que contiene a los autores también con información relevante de ellos:

<div
  class='mu-sql-table'
  data-name='canciones'
  data-columns='[{"name": "id_cancion", "pk": true}, "titulo", "album", "artista", "genero", "anio"]'
  data-rows='[
    [1, "Bohemian rhapsody", "A night at the Opera", "Queen", "rock", 1975], 
    [2, "Can`t buy me love", "A hard day`s night", "The Beatles", "rock, pop", 1964],
    [3, "Baby on board", "Más grandes que Jesús", "Los Borbotones", "rock, pop", 1985]
  ]'>
</div>

<div
  class='mu-sql-table'
  data-name='artistas'
  data-columns='[{"name": "id_artista", "pk": true}, "nombre", "integrantes", "genero", "nacionalidad"]'
  data-rows='[
    [1, "Queen", "Freddie Mercury, Brian May, Roger Taylor, John Deacon", "rock", "británica"], 
    [2, "The Beatles", "John Lennon, Paul McCartney, Ringo Starr, George Harrison", "rock, pop", "inglesa"],
    [3, "Los Borbotones", "Homero Simpson, Apu de Beumarche, Seymour Skinner, Barney Gómez", "rock, pop", "estadounidense"]
  ]'>
</div>

Como verás, algunos campos de la tabla de canciones se repiten en la de los artistas. ¿Qué sucedería si cambiáramos, por ejemplo, el **género** de una de las bandas?

``` sql
UPDATE artistas
SET genero = "folklore"
WHERE nombre_artista LIKE "los borbotones";
```

¡Comprobá cómo quedaría! 
