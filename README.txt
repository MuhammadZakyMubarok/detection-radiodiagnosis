# Cara Pertama menjalankan project (Windows)

Untuk menjalankanya harus dari folder "backend" 
1. cd backend
2. python3 venv venv
3. venv\Scripts\activate
4. pip install -r new-requirement.txt
5. flask run app.py
====== Mulai dari root project lagi (cd ../)
6. download ngrok dan extract di root project
7. Jalankan
Klao ngrok
```bash
ngrok.exe http 5010 --host-header="radiodiagnosis.id"

```
kalo piggy
```bash
pinggy.exe -p 443 -R0:127.0.0.1:5010 -L4300:127.0.0.1:4300 -o StrictHostKeyChecking=no -o ServerAliveInterval=30 -t T2nRyM3PPvs@ap.pro.pinggy.io \"w:35.209.64.113/32\"
```

# Cara kedua pakai docker (preferred)

```bash
docker network create  detection-radiodiagnosis-network
```

```bash
docker compose -f docker-compose.yml up --build -d
```