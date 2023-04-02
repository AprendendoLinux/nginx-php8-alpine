# Nginx for Alpine Linux

<h3>Preparando o ambiente para usar a imagem: </h3>

~~~bash
docker volume create nginx-php8-alpine
~~~

<h3>Subindo o contêiner: </h3>

~~~bash
docker run -d --name='nginx-php8-alpine' \
     --hostname='nginx-php8-alpine' \
     -p 80:80 \
     -v nginx-php8-alpine:/var/www/html \
--restart=always aprendendolinux/nginx-php8-alpine:latest
~~~

Use também o [docker-compose.yml](https://github.com/AprendendoLinux/nginx-php8-alpine/blob/main/docker-compose.yml).
