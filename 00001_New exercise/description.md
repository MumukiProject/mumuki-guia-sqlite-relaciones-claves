Dejemos de lado por un rato las series y películas. Pensemos en las aplicaciones que guardan nuestras listas de reproducción de canciones. :headphones:

Tenemos dos tablas: 

* una que guarda toda la lista de canciones, con el detalle de cada una,
* y otra que contiene a los autores también con información relevante de ellos:

METER TABLAS ACÁ....

Como verás, algunos campos de la tabla de canciones se repiten en la de los artistas. ¿Qué sucedería si cambiáramos, por ejemplo, el **género** de una de las bandas?

``` sql
UPDATE artistas
SET genero = "Folklore"
WHERE nombre_artista LIKE "los borbotones";
```

¡Comprobá cómo quedaría! ;)

