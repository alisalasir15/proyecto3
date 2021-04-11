for ($i = 0; $i -lt 3; $i++) {
    $puertos = (8080 + $i).ToString() + ':80'
    #write-host ($puertos)
    write-host("docker run --name wordpress$i -p $puertos -d wordpress")
    docker run --name wordpress$i -p $puertos -d wordpress
}

