Vimos que hay distintas entidades que se relacionan entre sí. Y esa relación la podemos ver porque aparece la _PK_ de una entidad como _FK_ en otra. 

Así, sabemos que: 

* algún registro de la segunda entidad se relaciona con un registro de la primera (_uno a uno_);
* pero si varios registros de la segunda entidad tienen la misma _FK_, significa que todos ellos se relacionan con el mismo registro de la primera (_muchos a uno_);
* y cuando un registro de la primera entidad se relaciona con muchos de la segunda, pero uno de la segunda también se puede relacionar con muchos de la primera (_muchos a muchos_), estamos en serios problemas porque no podemos vincularlos directamente poniendo una _FK_ en alguno de ellos :worried:. Solucionamos esto haciendo una entidad intermedia con una _PK_ compuesta, representando cada combinación de _FKs_ (una _PK_ de la primera entidad con otra de la segunda). :grinning:

¿Pero por qué nos interesa tanto esto de las relaciones? Porque nos permite trabajar con más información, tenemos más variables para manipular y hacer una unión de todo eso filtrando por todo lo que nos interese. Y todo esto teniendo quizás un solo dato. :wink:
