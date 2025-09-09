# Backend - Django

Este es el backend del proyecto, construido con **Django** y configurado para funcionar tanto con **SQLite (local)** como con **PostgreSQL (Docker)**.

---

## 📦 Instalación local (sin Docker)

## 1. Clona el repositorio y entra a la carpeta del backend:

### bash
   cd backend
   
Crea y activa un entorno virtual:

### bash
python -m venv venv
source venv/bin/activate   # En Linux/Mac
venv\Scripts\activate      # En Windows

## Instala las dependencias desde requirements.txt:

### bash
    pip install -r requirements.txt

Configura la base de datos en settings.py:
Por defecto se usa SQLite en desarrollo local.

En producción (con Docker) se usa PostgreSQL.

## ⚙️ Migraciones y base de datos

Ejecuta las migraciones para crear las tablas:
### bash
    python manage.py migrate

## Si quieres crear un superusuario para acceder al admin de Django:

### bash
    python manage.py createsuperuser

## ▶️ Levantar el servidor

Inicia el servidor de desarrollo:

### bash
    python manage.py runserver
Por defecto se abre en:
http://127.0.0.1:8000/

## 🛠️ Comandos útiles de Django
## Crear nuevas migraciones tras modificar modelos:

### bash
    python manage.py makemigrations

## Aplicar migraciones:
### bash
    python manage.py migrate

## Crear una nueva app:

### bash
    python manage.py startapp nombre_app

---
## Recopilar archivos estáticos:

### bash
    python manage.py collectstatic --noinput

## 📌 Notas para desarrollo
El archivo db.sqlite3 puede eliminarse si trabajas únicamente con Docker/PostgreSQL.

En entornos locales sin Docker, SQLite es suficiente para pruebas rápidas.

Recuerda que en producción siempre se usará PostgreSQL (contenedor db).