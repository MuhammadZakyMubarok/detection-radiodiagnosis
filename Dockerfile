FROM python:3.11-slim

WORKDIR /app

COPY backend/new-requirement-linux.txt .

RUN pip install --no-cache-dir -r new-requirement-linux.txt

COPY . .

COPY .env-example .env
# Kalo mau local ganti aja .env.production ke .env.example
COPY backend/.env.production backend/.env

EXPOSE 5010

ENV FLASK_APP=app.py

CMD ["python", "backend/app.py"]