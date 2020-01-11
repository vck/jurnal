# tentang

https diwajibkan di browser modern dan platform sosial media. 
masalahnya ngga semua orang punya uang buat bayar sertifikat ssl.

# solusi

pake let's encrypt dari Electronic Frontier Foundation.

# kasus

- web server (http) di serve oleh gunicorn
- nginx bekerja sebagai reverse proxy

pertama install certbot untuk nginx

`sudo apt install python-certbot-nginx`

terus tambahin nama domain di setelah `server_name` di config nginx 

`server_name example.com www.example.com;`

cek config terbaru, sudah benar atau belum

`sudo nginx -t`

reload nginx 

`sudo systemctl reload nginx`

[update firewall rule di skip, asumsi server yang dipakai adalah instance dari GCP]

dapatkan sertifikat ssl pakai perintah 

`sudo certbot --nginx -d example.com -d www.example.com`

masukin email, masukkan yes di bagian redirect all http ke https. 
buka example.com, harusnya bakalan redirect ke https.

