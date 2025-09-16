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
```bash
ngrok.exe http http://localhost:5010
```

# Cara kedua pakai docker (preferred)
    
```bash
docker compose -f docker-compose.yml up --build -d
```