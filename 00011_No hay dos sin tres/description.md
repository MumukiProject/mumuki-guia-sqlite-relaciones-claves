¡Espectacular! Ya estamos listos para ponerle el pecho a lo que se venga.

> Consultá los actores y actrices que participen en películas con puntaje mayor a 9. Procurá que no se repitan los resultados.

<div
  class='mu-sql-table'
  data-name='series_peliculas'
  data-columns='[{"name": "id_contenido", "pk": true}, "titulo", "puntaje"]'
  data-rows='[
    [1, "Los juegos del hambre", 9.7],
    [2, "X-men", 9.5],
    [3, "Yo antes de tí", 8]
  ]'>
</div>

<div
  class='mu-sql-table'
  data-name='personaje_por_contenido'
  data-columns='[{"name": "id_contenido", "pk": true, "fk": true}, {"name": "id_personaje", "pk": true, "fk": true}]'
  data-rows='[
    [1, 1],
    [1, 2],
    [2, 1],
    [3, 2],
    [3, 3]
  ]'>
</div>

<div
  class='mu-sql-table'
  data-name='personajes'
  data-columns='[{"name": "id_personaje", "pk": true}, "actriz_actor"]'
  data-rows='[
    [1, "Jennifer Lawrence"],
    [2, "Sam Claflin"],
    [3, "Emilia Clarke"]
  ]'>
</div>