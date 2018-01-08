Te dejamos la consulta del ejercicio 2 que te puede servir de guía: 

``` sql
SELECT id_cancion, nombre, album, canciones.artista, genero, anio 
FROM canciones, artistas
WHERE canciones.artista = artistas.nombre
AND genero LIKE "folklore";

```