# Base de Datos
Este Repo es de Base de Datos en 4to 3ra


## Tutorial:
1) Iniciar el servidor MySQL:

-En el Xampp se ingresa y se activa el MySQL y se accede a la Shell del mismo, NO se accede a Apache

-En la Shell se escribe "Mysql -u root" Para ingresar a MariaDB como servidor de MySQL

Base de Datos a usar:
 https://github.com/santiagotrini/practica-1-queries

 2a) Entrar a la Base de Datos de provincias:

 -Ingresar a la Shell una vez activado MySQL (no ingresar a MariaDB aun)

 -escribir "git clone url" siendo url la url de github mencionada ( git clone https://github.com/santiagotrini/practica-1-queries)

 -Escribir "cd practica-1-queries"

 -Escribir "mysql -u root < db_schema.sql"

 -Escribir " mysql -u root < db_data.sql"

 -Escribir "mysql -u root practica_1"

 2b) Ingresar a la base de datos de escuela
 
 -Clonar este repo git clone https://github.com/santiagotrini/queries-2023.

 -Cambiar al directorio del repo cd queries-2023.

 -Crear la base de datos mysql -u root < db_schema.sql.

 -Poblar la base de datos mysql -u root < db_data.sql.

 -Logearse a la base de datos mysql -u root queries_2023.
