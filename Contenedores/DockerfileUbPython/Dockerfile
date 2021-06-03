#docker build -t prueba .
FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev
WORKDIR /app
ENV DEBUG=true
EXPOSE 80
VOLUME /data
COPY . /app
RUN pip install -r requirements.txt
ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]