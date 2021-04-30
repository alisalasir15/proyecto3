
#Dockerfile ubuntu con apache
FROM ubuntu:21.04
RUN apt-get update && apt-get install -y apache2 && cd /var/www/html
WORKDIR /var/www/html
EXPOSE 80
ENTRYPOINT service apache2 start && /bin/bash