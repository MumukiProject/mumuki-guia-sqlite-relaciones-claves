Esto se está poniendo interesante… :smirk:

Ahora probalo vos.

> Consultá todas las películas en las que actúa Sam Claflin. 

<div
  class='mu-erd'
  data-entities='{
    "series_peliculas": {
      "id_contenido": {
        "type": "Integer",
        "pk": true
      },
      "titulo": {
        "type": "Text"
      }
    },
    "personaje_por_contenido": {
      "id_contenido": {
        "type": "Integer",
        "pk": true,
        "fk": {
          "to": { "entity": "series_peliculas", "column": "id_contenido" },
          "type": "many_to_one"
        }
      },
      "id_personaje": {
        "type": "Integer",
        "pk": true,
        "fk": {
          "to": { "entity": "personajes", "column": "id_personaje" },
          "type": "many_to_one"
        }
      }
    },
    "personajes":{
      "id_personaje":{
        "type": "Integer",
        "pk": true
      },
      "actriz_actor":{
        "type": "Text"
      }
    }
  }'>
</div>