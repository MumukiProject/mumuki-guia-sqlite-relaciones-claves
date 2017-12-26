Todo muy lindo, pero… ¿qué pasaría si hubieran dos artistas con el mismo nombre? :fearful:

O, peor aún, ¿si hubieran dos registros sobre el mismo artista escrito de distintas maneras? Por ejemplo: “The Beatles” y “the beatles”. Ya sabemos que los strings no son muy confiables… 

Entonces recapitulemos… ¿cuál es el único campo que identifica unívocamente a cada registro y que no da lugar a confusión?

<div
  class='mu-erd'
  data-entities='[
    {
      "name": "canciones",
      "columns": [
        {
          "name": "id_cancion",
          "type": "Integer",
          "pk": true
        },
        {
          "name": "titulo_cancion",
          "type": "Text"
        },
        {
          "name": "???",
          "type": "Text",
          "pk": false,
          "fk": {
            "to": { "entity": "artistas", "column": "nombre_artista" },
            "type": "many_to_one"
          }
        },
        {
          "name": "album",
          "type": "Text"
        },
        {
          "name": "anio",
          "type": "Integer"
        }
      ]
    },
    {
      "name": "artistas",
      "columns": [
        {
          "name": "id_artista",
          "type": "Integer",
          "pk": true
        },
        {
          "name": "nombre_artista",
          "type": "Text"
        },
        {
          "name": "integrantes",
          "type": "Text"
        },
        {
          "name": "genero",
          "type": "Text"
        },
        {
          "name": "nacionalidad",
          "type": "Text"
        }
      ]
    }
  ]'>
</div>


