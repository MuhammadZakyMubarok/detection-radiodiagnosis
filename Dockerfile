FROM python:3.9-slim

WORKDIR /app

COPY backend/new-requirement-linux.txt .

RUN pip install --no-cache-dir -r new-requirement-linux.txt

COPY . .

EXPOSE 5010

ENV FLASK_APP=app.py

CMD ["python", "app.py"]