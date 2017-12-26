Para no tener el género (o cualquier otro campo) repetido y esparcido por varias tablas, podríamos dejar en la tabla de canciones solo el artista, y omitir el género y todo lo referente a la banda. 

Pero es importante entender que el nombre de la banda debe seguir correspondiéndose (siendo exactamente igual) para mantener la relación entre las dos tablas. 

Así, podemos mirar los datos de una canción en una tabla, y para conocer los detalles de la banda tenemos el campo “nombre_artista” con el que buscar en la otra tabla. 

Veamos cómo quedaría la consulta para conocer los temas con género “Folklore”.

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
          "name": "nombre_artista",
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

``` sql
SELECT id_cancion, nombre_cancion, album, canciones.nombre_artista, genero, anio 
FROM canciones, artistas
WHERE canciones.nombre_artista = artistas.nombre_artista
AND genero LIKE “folklore”;

```

