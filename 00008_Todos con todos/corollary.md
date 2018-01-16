
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
      }
    },
    "cancion_por_album": {
      "id_cancion": {
        "type": "Integer",
        "pk": true,
        "fk": {
          "to": { "entity": "canciones", "column": "id_cancion" },
          "type": "many_to_one"
        }
      },
      "id_album": {
        "type": "Integer",
        "pk": true,
        "fk": {
          "to": { "entity": "discos", "column": "id_album" },
          "type": "many_to_one"
        }
      }
    },
    "discos": {
      "id_album": {
        "type": "Integer",
        "pk": true
      },
      "nombre_artista": {
        "type": "Text"
      },
      "anio": {
        "type": "Integer"
      }
    }
  }'>
</div>

<div
  class='mu-sql-table'
  data-name='canciones'
  data-columns='[{"name": "id_cancion", "pk": true}, "nombre_cancion"]'
  data-rows='[
    [1, "En la ciudad de la furia"],
    [2, "Cuando pase el temblor"],
    [3, "Ella usó mi cabeza como un revólver"]
  ]'>
</div>

<div
  class='mu-sql-table'
  data-name='cancion_por_album'
  data-columns='[{"name": "id_cancion", "pk": true, "fk": true}, {"name": "id_album", "pk": true, "fk": true}]'
  data-rows='[
    [1, 2],
    [1, 3],
    [1, 5],
    [1, 6],
    [1, 7],
    [2, 1],
    [2, 3],
    [2, 5],
    [2, 7],
    [3, 4],
    [3, 5],
    [3, 6]
  ]'>
</div>

<div
  class='mu-sql-table'
  data-name='discos'
  data-columns='[{"name": "id_album", "pk": true}, "album", "anio"]'
  data-rows='[
    [1, "Nada personal", 1985],
    [2, "Doble vida", 1988],
    [3, "Zona de promesas", 1993],
    [4, "Sueño stereo", 1995],
    [5, "Comfort y música para volar", 1996],
    [6, "El último concierto", 1997],
    [7, "Me verás volver", 2008]
  ]'>
</div>

Como ya vimos la relación “uno a uno”, y también “uno a muchos”, no podía faltar “muchos a muchos”. 

Este es uno de tantos casos donde muchos elementos de una tabla se relacionan con muchos otros de otra tabla. Entonces no hay manera de poner la PK de uno como campo del otro. 

La solución más simple es armar una _tabla intermedia_, que represente cada combinación posible existente. Utiliza una PK compuesta por los dos campos: el id de la canción y el id del disco, siendo esta combinación única e irrepetible (quizás los colores te ayuden a verlo). 
