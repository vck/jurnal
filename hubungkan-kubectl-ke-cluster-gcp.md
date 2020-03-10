gimana caranya menghubungkan kubectl ke cluster di gcp

- install gcloud 

- install kubectl

- set project id `gcloud config set project <project id>`

- set compute zone `gcloud config set compute/zone asia-east1-c`

- lihat cluster yang berjalan `gcloud container clusters`

- dapatkan credential dari cluster `gcloud container clusters get-credentials "CLUSTER NAME"`

- dapatkan daftar pods dari cluster `kubectl get pods`

