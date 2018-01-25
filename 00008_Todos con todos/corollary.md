<img src="https://raw.githubusercontent.com/MumukiProject/mumuki-guia-sqlite-relaciones-claves/master/images/tabla_mam_1516893131068.png" alt="tabla_mam_1516893131068.png" width="100%">

Como ya vimos la relación “uno a uno”, y también “uno a muchos”, no podía faltar “muchos a muchos”. 

Este es uno de tantos casos donde muchos elementos de una tabla se relacionan con muchos otros de otra tabla. Entonces no hay manera de poner la PK de uno como campo del otro. 

La solución más simple es armar una _tabla intermedia_, que represente cada combinación posible existente. Utiliza una PK compuesta por los dos campos: el id de la canción y el id del disco, siendo esta combinación única e irrepetible. 
