¡Genial! Ya vimos todas las relaciones posibles. Ahora podemos volver a nuestra abandonada aplicación NetFix, que durante nuestra ausencia siguió teniendo mucho éxito. :smile: :tada:

Queremos agregar la posibilidad de buscar por actor, y devolver todas las películas que hizo. Obviamente, un actor podrá aparecer en una o varias películas. Pero a la vez una película suele tener más de un actor. 

Lo bueno de todo esto es que ya sabemos cómo se resuelve ese tipo de relación (muchos a muchos):


**series_peliculas**

|_PK_  **id_contenido**|titulo|
|:---:|---|
|**1**|Los juegos del hambre|
|**2**|X-men|
|**3**|Yo antes de tí|

**personaje_por_contenido**

|_PK, FK_ **id_contenido**|_PK, FK_ **id_personaje**|
|:---:|:---:|
|**1**|_1_|
|**1**|_2_|
|**2**|_1_|
|**3**|_2_|

**personajes**

|_PK_  **id_personaje**|actriz_actor|
|:---:|---|
|_1_|Jennifer Lawrence|
|_2_|Sam Claflin|

> Consultemos todas las películas en las que actuó Jennifer Lawrence.
``` sql
SELECT titulo 
FROM series_peliculas s, personaje_por_serie ps, personajes p
WHERE s.id_contenido = ps.id_contenido 
AND ps.id_personaje = p.id_personaje 
AND p.actriz_actor LIKE “%Jennifer%Lawrence%”;
```


