catatan docker

- stop dan hapus container

```
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
```
