
# contenedor: Entorno AISLADO, donde existen todas las dependencias para ejecutar una aplicación
# imagen: Plantilla de un contenedor, que contiene el sistema operativo y las dependencias necesarias para ejecutar una aplicación
# docker: Herramienta para crear, desplegar y ejecutar aplicaciones en contenedores
# imagen ---> class
# contenedor ---> Objeto

docker container run hello-world

# Listar contenedores
docker container ls -a

# crear contenedor que persista en el tiempo y que se exponga un puerto
docker container run -d -p 8081:80 docker/getting-started

# eliminar contenedor
docker conttainer rm <ID del contenedor>

# detener un contenedor
docker container stop <ID del contenedor> o <el nombre del contenedor>

# iniciar un contenedor que ya existe
docker container start <ID del contenedor> o <el nombre del contenedor>

# eliminar contenedor forzando
docker container rm -fv <ID del contenedor> o 

# corren un comando para mantenerse prendidos
docker container MaquinaVirtualUbuntu -d sleep 3600

# como ingresar  a un contenedor
docker container exec -it <ID del contenedor> <comando de inicio>

# NGINX
docker container run -d -p 8088:80 nginx

# construir una imagen
docker build -t node-api:1.0 .

# correr el proyecto en un contenedor
docker container run --name MyApi -d -p 3001:3000 node-api:1.0

#  MySQL
docker container run --name Mysql -d -p 3307:3306 mysql:8

# mysql
docker container run -d -p 3307:3306 --name mysql -e MYSQL_ROOT_PASSWORD=12345 -e MYSQL_DATABASE=prueba mysql:8
docker container run --name MySQL2 -e MYSQL_ROOT_PASSWORD=12345 -dp 3308:3306 mysql:8

# logs
docker logs <ID del contenedor>

# volume Bind volume / Volumenes Admiistracion
docker volume ls

# crear
docker volume create 411_mysqldb

docker container run --name MySQL3 -e MYSQL_ROOT_PASSWORD=12345 -v 411_mysqldb:/var/lib/mysql -dp 3308:3306 mysql:8

# Network
docker network create <nombre de network>
docker network connect <nombre de network> <nombre de contenedor>

# log in
docker login -u <usuario> -p <contraseña>

# 1. se rea la aplicación
# 2. se crea dockerfile
# 3. construir la imagen
docker build -t josaplus/docker-fundamentals:v1 .
# 4. subir la imagen a docker hub
docker push josaplus/docker-fundamentals:v1
