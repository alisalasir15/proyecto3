for ($i = 0; $i -lt 3; $i++) {
    $puertos = (8080 + $i).ToString() + ':80'
    #write-host ($puertos)
    write-host("docker run --name wordpress$i -p $puertos -d wordpress")
    docker run --name wordpress$i -p $puertos -d wordpress
}


#docker run -i -t ubuntu:20.04   /bin/bash
#docker run --name wp8apache91 -p 8091:80 -d wordpress:php8.0-apache
#docker run --name wp8apache92 -p 8092:80 -d wordpress:php8.0-apache
#docker run --name mysql7 -e MYSQL_ROOT_PASSWORD=pass -d mysql:5.7
#docker run --name mysql8 -e MYSQL_ROOT_PASSWORD=pass -d mysql:8
#docker ps

