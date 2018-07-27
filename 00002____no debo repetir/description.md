Para no tener el género (o cualquier otro campo) repetido y esparcido por varias tablas, podríamos dejar en la entidad _canciones_ solo el artista, y omitir el género y todo lo referente a la _banda_. 

Pero es importante entender que el nombre de la banda debe seguir correspondiéndose (siendo exactamente igual) para mantener la relación entre las dos entidades. 

Así, podemos mirar los datos de una canción en una tabla, y para conocer los detalles de la banda tenemos el campo "artista" con el que buscar en la otra tabla. 

Veamos cómo quedaría la consulta para conocer los temas con género "folklore".

<div
  class='mu-erd'
  data-entities='{
    "canciones": {
      "id_cancion": {
        "type": "Integer",
        "pk": true
      },
      "titulo": {
        "type": "Text"
      },
      "artista": {
        "type": "Text",
        "pk": false,
        "fk": {
          "to": { "entity": "artistas", "column": "nombre" },
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
      "nombre": {
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

``` sql
SELECT id_cancion, nombre, album, canciones.artista, genero, anio 
FROM canciones, artistas
WHERE canciones.artista = artistas.nombre
AND genero LIKE "folklore";

```

