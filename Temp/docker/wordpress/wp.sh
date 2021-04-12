#Creacion de N instancias docker de wordpress con su puerto de publicacion
#!/bin/bash
for i in {1..5}
do
  echo "docker run --name wordpress$i -p 808$i:80 -d wordpress"
  docker run --name wordpress$i -p 808$i:80 -d wordpress
done