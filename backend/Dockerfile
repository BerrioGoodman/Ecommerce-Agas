# backend/Dockerfile
FROM python:3.11-slim

# evitar buffering en logs
ENV PYTHONUNBUFFERED=1

# instalar dependencias de sistema necesarias para psycopg2
RUN apt-get update && apt-get install -y \
    gcc \
    libpq-dev \
    build-essential \
    curl \
    netcat-traditional \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# copiar requirements primero para aprovechar cache
COPY backend/requirements.txt /app/requirements.txt

RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt

# copiar el código
COPY backend /app

# copiar el entrypoint y darle permisos
COPY backend/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh


ENV DJANGO_SETTINGS_MODULE=core.settings

ENTRYPOINT ["/entrypoint.sh"]
CMD ["gunicorn", "core.wsgi:application", "--bind", "0.0.0.0:8000"]
