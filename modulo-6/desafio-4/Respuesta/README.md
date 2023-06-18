# KariPics

Si bien la aplicación funciona tiene un peculiar detalle de la manera que ha sido abordada la problemática

Antes de echar a correr el programa, es necesario realizar la creación de base de datos, migraciones y carga de seed en PSQL
La seed contiene un usuario administrador con datos ficticios pero recordables para la prueba.

El detalle es el siguiente:

Es necesario validar que la imagen de avatar sea subida al momento de crear cualquier cuenta mediante el boton de registro, sin embargo,
no encontré manera de subirla a través de la seed para el usuario administrador.

Es debido a esto que dentro de ./app/models/user.rb se encuentra comentada la línea 8 que es la que valida que Avatar no sea nulo/nil al momento
de creación de un usuario.

Por lo que el orden de trabajo debería ser el siguiente:

rails db:create
rails db:migrate
rails db:seed

./app/models/user.rb descomentar linea 8

rails s

crear usuario dentro del sitio (127.0.0.1:3000) etc