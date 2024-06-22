## build from source

```
sudo apt -y install libssl-dev zlib1g-dev build-essential libffi-dev

wget https://www.python.org/ftp/python/3.8.0/Python-3.8.0.tgz
tar -xf Python-3.8.0.tgz
cd Python-3.8.0/

./configure --enable-optimizations
make
sudo make altinstall
```
