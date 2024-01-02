# opnform-docker

Cambiar zona horaria:
docker exec -it opnform_app bash
apt install nano
nano config/app.php
cambiar --> 'timezone' => 'UTC',

Bloquear Url /register y otras cosas mas:
path --> /app/public/build/assets
QuickRegister-879802a9.js.bk
create-guest-61ca9c83.js.bk
register-0d2841fb.js.bk
terms-conditions-018479e8.js.bk
welcome-e4ef6b3e.js.bk

Cambiar Logos e imagen para compartir en redes sociales:
path --> /app/public/img

Archivos a reemplazar:
logo.png
logo.svg
social-preview.png


Buscar cadenas de texto y reemplazarlas
find $PWD/ -type f -exec sed -i 's|https://opnform.com|https://example.com|g' {} +

Titulo Seo
find $PWD/ -type f -exec sed -i 's@Create beautiful forms for free@Optimiza Tu Currículum con IA | Desde €9.99@g' {} +

Descripcion Seo
find $PWD/ -type f -exec sed -i 's|Create beautiful forms for free. Unlimited fields, unlimited submissions. It'\''s free and it takes less than 1 minute to create your first form.|Destaca rápidamente en tu búsqueda de empleo optimizando tu currículum con elegancia y tecnología de IA. ¡Impulsa tu carrera con nosotros!|g' {} +

