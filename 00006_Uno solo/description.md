Casi todas las canciones tienen una partitura asociada, que se escribió antes o después de su concepción. Y estas partituras tienen su propia información, como las notas, las figuras rítmicas, los distintos movimientos, además de un código único de identificación; algunas pertenecen a ciertas colecciones, libros, tomos, etc. 

<div
  class='mu-sql-table'
  data-name='canciones'
  data-columns='[{"name": "id_cancion", "pk": true}, "nombre_cancion", {"name": "id_partitura", "fk": true}]'
  data-rows='[
    [1, "La quinta sinfonía", 3], 
    [2, "Claro de luna", 2],
    [3, "Para Elisa", 1]
  ]'>
</div>

<div
  class='mu-sql-table'
  data-name='partituras'
  data-columns='[{"name": "id_partitura", "pk": true}, "codigo_opus", "titulo", "compositor"]'
  data-rows='[
    [1, "WoO 59", "Für Elise", "Ludwig van Beethoven"],
    [2, "Op. 27, No.2", "Piano Sonata No.14", "Ludwig van Beethoven"],
    [3, "Op.67", "Symphony No.5", "Ludwig van Beethoven"]
  ]'>
</div>

> Consultá los nombres de todas las canciones asociadas a la partitura de "Symphony No.5".
