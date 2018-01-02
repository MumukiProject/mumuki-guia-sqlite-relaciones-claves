Ya ves que cada canción tiene una única partitura asociada, y a la vez cada partitura tiene una única canción. Esto es una típica relación de “uno a uno”, donde cada registro se relaciona con un solo registro de la otra tabla. 


<div
  class='mu-erd'
  data-entities='{
    "canciones": {
      "id_cancion": {
        "type": "Integer",
        "pk": true
      },
      "nombre_cancion": {
        "type": "Text"
      },
      "id_partitura": {
        "type": "Integer",
        "pk": false,
        "fk": {
          "to": { "entity": "partituras", "column": "id_partitura" },
          "type": "one_to_one"
        }
      }
    },
    "partituras": {
      "id_partitura": {
        "type": "Integer",
        "pk": true
      },
      "codigo_opus": {
        "type": "Text"
      },
      "titulo": {
        "type": "Text"
      },
      "compositor": {
        "type": "Text"
      }
    }
  }'>
</div>