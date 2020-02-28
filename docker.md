catatan docker

- stop dan hapus container

```
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
```

- masalah mysql dengan docker

menghubungkan client mysql dengan docker, ganti "localhost" dengan "127.0.0.1"
