catatan docker

- stop dan hapus container

```
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
```

- masalah mysql dengan docker

menghubungkan client mysql dengan docker, ganti "localhost" dengan "127.0.0.1"

- MySQL Dockerfile

```
FROM mysql:8.0.18
ENV MYSQL_DATABASE strobo
```

- Python Dockerfile

```
FROM python:3.7-buster
ADD ./src $HOME/src
RUN chmod +x /src/*
RUN pip instal -r /src/requirements.txt
```

build

```
 docker build -t python -f Dockerfile.python .
```

run 


```
docker run -it python bash
```

- hubungkan satu docker container dengan docker container lain menggunakan links 

https://docs.docker.com/compose/networking/#links

- hapus semua image & volume

```
docker system prune -a --volumes
```
