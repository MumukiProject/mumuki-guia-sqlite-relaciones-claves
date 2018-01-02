¡Genial! Ya vimos todas las relaciones posibles. Ahora podemos volver a nuestra abandonada aplicación NetFix, que durante nuestra ausencia siguió teniendo mucho éxito. :smile: :tada:

Queremos agregar la posibilidad de buscar por actor, y devolver todas las películas que hizo. Obviamente, un actor podrá aparecer en una o varias películas. Pero a la vez una película suele tener más de un actor. 

Lo bueno de todo esto es que ya sabemos cómo se resuelve ese tipo de relación (muchos a muchos):


**serie_pelicula**

|_PK_  **id_contenido**|titulo|
|:---:|---|
|1|Los juegos del hambre|
|2|X-men|
|3|Yo antes de tí|

**personaje_por_contenido**

|_PK, FK_ **id_contenido**|_PK, FK_ **id_personaje**|
|:---:|:---:|
|1|1|
|1|2|
|2|1|
|3|2|

**personajes**

|_PK_  **id_personaje**|actor_actriz|
|:---:|---|
|1|Jennifer Lawrence|
|2|Sam Claflin|


