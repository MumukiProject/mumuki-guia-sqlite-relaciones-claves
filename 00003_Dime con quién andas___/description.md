Todo muy lindo, pero… ¿qué pasaría si hubieran dos artistas con el mismo nombre? :fearful:

O, peor aún, ¿si hubieran dos registros sobre el mismo artista escrito de distintas maneras? Por ejemplo: “The Beatles” y “the beatles”. Ya sabemos que los strings no son muy confiables… 

Entonces, recapitulemos… ¿cuál es el único campo que identifica unívocamente a cada registro y que no da lugar a confusión?

<div
  class='mu-erd'
  data-entities='{
    "canciones": {
      "id_cancion": {
        "type": "Integer",
        "pk": true
      },
      "titulo_cancion": {
        "type": "Text"
      },
      "fk_artistas": {
        "type": "?",
        "pk": false,
        "fk": {
          "to": { "entity": "artistas", "column": "nombre_artista" },
          "type": "many_to_one"
        }
      },
      "album":{
        "type": "Text"
      },
      "anio":{
        "type": "Integer"
      }
    },
    "artistas": {
      "id_artista": {
        "type": "Integer",
        "pk": true
      },
      "nombre_artista": {
        "type": "Text"
      },
      "integrantes": {
        "type": "Text"
      },
      "genero": {
        "type": "Text"
      },
      "nacionalidad": {
        "type": "Text"
      }
    }
  }'>
</div>