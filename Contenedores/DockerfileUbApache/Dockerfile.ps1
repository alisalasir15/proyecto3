
#Crea una imagen
docker build . -t proyecto03ubapache21
docker images

#Ejecuta imagen
docker run -ti  -d -p 8501:80 proyecto03ubapache21 /bin/bash

#docker exec -ti  .....  /bin/bash

#Crear un docker con almacenamiento compartido en el host que es servidor de docker
#Ruta Windows
#docker run -v C:/Users/javiteran/Documents/GitHub/proyecto3/Contenedores/DockerfileUbApache/html:/var/www/html  -t -i -p 8501:80 proyecto03ubapache21 /bin/bash

#Ruta Linux
docker run -v /home/javiteran/GitHub/proyecto3/Contenedores/DockerfileUbApache/html:/var/www/html -d -it  -p 8501:80 proyecto03ubapache21 /bin/bash
