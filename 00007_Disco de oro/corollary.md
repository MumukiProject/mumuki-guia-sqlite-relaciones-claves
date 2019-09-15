Al igual que un par de ejercicios atrás, estamos ante una relación “muchos a uno”, ya que muchas canciones están en un mismo disco, o “uno a muchos" porque un disco tiene muchas canciones. 

<div
  class='mu-sql-table'
  data-name='canciones'
  data-columns='[{"name": "id_cancion", "pk": true}, "nombre_cancion", {"name": "id_album", "fk": true}]'
  data-rows='[
    [1, "En la ciudad de la furia", 7],
    [2, "Cuando pase el temblor", 7],
    [3, "Ella usó mi cabeza como un revólver", 6]
  ]'>
</div>

<div
  class='mu-sql-table'
  data-name='discos'
  data-columns='[{"name": "id_album", "pk": true}, "album", "anio"]'
  data-rows='[
    [6, "El último concierto", 1997],
    [7, "Cuando pase el temblor", 1985],
    [3, "Me verás volver", 2008]
  ]'>
</div>