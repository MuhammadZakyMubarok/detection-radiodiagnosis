FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    ffmpeg \
    libgl1 \
    libglib2.0-0 \
    libsm6 \
    libxrender1 \
    libxext6 \
    wget \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*
    
COPY backend/new-requirement-linux.txt .

RUN pip install --no-cache-dir -r new-requirement-linux.txt

COPY . .

# Kalo mau local ganti aja .env.production ke .env.example
COPY backend/.env.production backend/.env

EXPOSE 5010

ENV FLASK_APP=app.py

CMD ["python", "backend/app.py"]