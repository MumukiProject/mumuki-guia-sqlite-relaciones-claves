|titulo|
|---|
|Los juegos del hambre|
|X-men|

Según el tipo de consulta, los resultados pueden aparecer repetidos (sobre todo cuando cumplen varias condiciones a la vez). En esos casos conviene agregar un `DISTINCT` en el `SELECT` para mostrar solo los resultados _distintos_.

``` sql
SELECT DISTINCT título FROM series_peliculas s, series_personajes sp, personajes p
WHERE s.id_serie = sp.id_serie 
AND sp.id_personaje = p.id_personaje
AND p.actriz_actor LIKE “%Jennifer%Lawrence%”;
```
