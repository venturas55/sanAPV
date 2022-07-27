27/7/2022
Se añade src\Ifsnop\Mysqldump\Mysqldump.php
Se añaden dos opciones en menu para cambiar en hot la base de datos, la contraseñá encriptada en SHA

10/3/2022
Se añade phpmyadmin del dominio deharoortega.com
Se completa el encriptado de contraseñas con SHA
Se añade en modificarBBDD:
	Añadir una columna para el email.
	Ampliar la longitud del usuario a varchar50
	Ampliar la longitud de la contraseña a varchar250


28/07/2021
Se modifican los archivos de modBBDDcaracteristicas modBBDDlamtapa modBBDDlocalizacion para que permita el actualizado de nif que sean string añadiendo entrecomillado en el comando sql.

20/07/2021
Se añade la funcion parpadeo a las balizas en plantilla.php con parpadeo.js

7/4/2021
Se modifica footer, para incluir licencia CC BY.
Se modifica la parte visual del proceso de login y registro.

24/02/2021
Se añade pulsacion de ENTER en busqueda por nif y busqueda por localizacion
Se añade la posibilidad de modificar el NIF de una baliza
En caso de no exisitir detalles de la lampara, se crean a valores 0.
Se reubica el boton de eliminar balizamiento. Y se le cambia el color a Danger.
Se corrige posible error al no encontrar carpeta con el nombre del propio NIF del balizamiento.
Al poder ser string el NIF, se envuelve con '' en cada consulta

