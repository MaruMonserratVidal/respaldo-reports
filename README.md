respaldo-reports

-----------------
COMANDOS:
-----------------
Para correr LUMEN
API


> composer update


> php artisan jwt:secret


> php -S localhost:8000 -t public


---------------------------------------------------------------

Para correr VUE
APP-REPORTS

> npm install --save


> npm run serve




Importante: Si el comando “npm install --save” arroja un error al tratar de actualizar las 
dependencias, se debe borrar el archivo “package-lock.json”, y volver a utilizar el comando.
Para que el proyecto funcione en su totalidad, la base de datos tiene que estar montada, 
el servidor de Lumen y el servidor de Vue funcionando.


--------------------------

SE NECESITA EL ARCHIVO .env con el siguiente contenido:

APP_ENV=local
APP_DEBUG=true
APP_KEY=
APP_TIMEZONE=UTC

LOG_CHANNEL=stack
LOG_SLACK_WEBHOOK_URL=

DB_CONNECTION=mysql
DB_HOST=localhost
DB_PORT=3306
DB_DATABASE=reports
DB_USERNAME=root
DB_PASSWORD=

CACHE_DRIVER=file
QUEUE_CONNECTION=sync


