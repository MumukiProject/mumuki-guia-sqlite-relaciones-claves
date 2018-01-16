¡Genial! Ya vimos todas las relaciones posibles. Ahora podemos volver a nuestra abandonada aplicación NetFix, que durante nuestra ausencia siguió teniendo mucho éxito. :smile: :tada:

Queremos agregar la posibilidad de buscar por actor, y devolver todas las películas que hizo. Obviamente, un actor podrá aparecer en una o varias películas. Pero a la vez una película suele tener más de un actor. 

Lo bueno de todo esto es que ya sabemos cómo se resuelve ese tipo de relación (muchos a muchos):

<div
  class='mu-sql-table'
  data-name='series_peliculas'
  data-columns='[{"name": "id_contenido", "pk": true}, "titulo"]'
  data-rows='[
    [1, "Los juegos del hambre"],
    [2, "X-men"],
    [3, "Yo antes de tí"]
  ]'>
</div>

<div
  class='mu-sql-table'
  data-name='personaje_por_contenido'
  data-columns='[{"name": "id_contenido", "pk": true, "fk": true}, {"name": "id_personaje", "pk": true, "fk": true}]'
  data-rows='[
    [1, 1],
    [1, 2],
    [2, 1],
    [3, 2]
  ]'>
</div>

<div
  class='mu-sql-table'
  data-name='personajes'
  data-columns='[{"name": "id_personaje", "pk": true}, "actriz_actor"]'
  data-rows='[
    [1, "Jennifer Lawrence"],
    [2, "Sam Claflin"]
  ]'>
</div>

> Consultemos todas las películas en las que actuó Jennifer Lawrence.

> ``` sql
SELECT titulo 
FROM series_peliculas s, personaje_por_contenido pc, personajes p
WHERE s.id_contenido = pc.id_contenido 
AND pc.id_personaje = p.id_personaje 
AND p.actriz_actor LIKE “%Jennifer%Lawrence%”;
```


