# opnform-docker

Cambiar zona horaria:
docker exec -it opnform_app bash
apt install nano
nano config/app.php
cambiar --> 'timezone' => 'UTC',
