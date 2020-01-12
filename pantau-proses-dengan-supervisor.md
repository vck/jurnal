# latar belakang

supervisor bisa jadi alternatif selain systemd service. 

# kasus 

disini kita punya sebuah service, yang bakalan berjalan di
belakang layar. service disini adalah gunicorn yang bakalan 
ngejalanin script flask sederhana, gunicorn bakalan nge bind port
8000, nginx dipakai sebagai reverse proxy.

# metode 

- install flask, nginx, supervisor

- rubah isi file nginx di `/etc/nginx/sites-enabled/default` ganti semuanya jadi:

```
server {
    # listen on port 443 (https)
    listen 80;
    server_name myawesomeproject.org;

    location / {
        # forward application requests to the gunicorn server
        proxy_pass http://localhost:8000;
        proxy_redirect off;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    }
}
```

- restart nginx 

- tambahin config program baru di` /etc/supervisor/conf.d/program`. isi dengan:

```
[program:program]
command=/home/vck/app/env/bin/gunicorn -b localhost:8000 -w 3 server:app
directory=/home/vck/app
user=vck
autostart=true
autorestart=true
stopasgroup=true
killasgroup=true
```

- kasih tau si supervisor kalau ada config terbaru -> `supervisorctl reread`

- update program yang available -> `supervisorctl update`

- cek status program -> `supervisorctl status program`

- cek localhost -> `curl localhost`
