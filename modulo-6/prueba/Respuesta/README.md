# MiFuturoTrabajo

Si bien la aplicación funciona tiene un peculiar detalle de la manera que ha sido abordada la problemática

Antes de echar a correr el programa, es necesario realizar la creación de base de datos, migraciones y carga de seed en PSQL
La seed contiene un usuario administrador por defecto

    email de login: admin@admin.cl
    password de la cuenta: password

Por lo que el orden de trabajo debería ser el siguiente:

rails db:create
rails db:migrate
rails db:seed

./app/models/user.rb descomentar linea 8

rails s para subir el servidor

##################################################################################################################

*Conceptos generales a tener en cuenta durante el desarrollo de MiFuturo*

Aplicando los conceptos y herramientas aprendidas hasta ahora debes dar resolución a las siguientes peticiones de nuestro cliente:

● Solo Esteban puede hacer publicaciones donde se ofrezca un puesto en su empresa.
● Los usuarios no pueden registrarse, el administrador, en este caso Esteban, será quien les cree las cuentas.
● Los usuarios podrán postular a las ofertas laborales internas y le debe llegar un mensaje a Esteban avisando de esta postulación.
● Los usuarios deben tener en su perfil su propia foto y datos relevantes sobre ellos para que Esteban pueda determinar internamente si les da el puesto o no.
● Un usuario debe tener una pequeña pestaña con sus postulaciones.
● Cuando una visita ingresa a la aplicación, solo debe haber una imagen a elección libre sin instrucciones y un link a ingresar a la página.

El nombre de la aplicación será determinado en un futuro, por lo que deben darle un nombre por ahora.

Requerimientos
1. Integrar imagen con Modelado de las entidades de la aplicación.(2 Puntos)
2. Integrar prueba unitaria sobre el proceso de postulación de un usuario.(2 Puntos)
3. Todas las imágenes deben estar alojadas en un bucket de S3.(2 Puntos)
4. Solo integrar crud de usuarios y ofertas laborales.(2 Puntos)
5. La aplicación debe ser subida a heroku y proveer de datos de prueba más una cuenta administrador y usuario normal al docente para su revisión. (2 Puntos)
