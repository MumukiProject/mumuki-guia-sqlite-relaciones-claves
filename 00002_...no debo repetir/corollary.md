:bulb: Como habrás visto, ahora el `FROM` recibe dos entidades, y las _relacionamos_ mediante el nombre del artista (que es lo que comparten ambas) aclarándolo en el `WHERE`. 

Esto mismo se puede reemplazar por la combinación `FROM`+`JOIN`+`ON`, donde el `FROM` recibe la primer tabla, el `JOIN` el resto de las tablas con las que queramos establecer la relación, y en el `ON` hacemos la aclaración de los campos compartidos que te contamos arriba; así, el `WHERE` sigue usándose para el resto de las condiciones a cumplir tal como ya viste. 
<br>
Por esto, cuando se consultan datos de más de una tabla, se habla de **hacer un `JOIN`** o simplemente **joinear**. :pray:

La consulta equivalente sería así:

``` sql
SELECT id_cancion, nombre, album, canciones.artista, genero, anio 
FROM canciones
JOIN artistas
ON canciones.artista = artistas.nombre
WHERE genero LIKE "folklore";
```

