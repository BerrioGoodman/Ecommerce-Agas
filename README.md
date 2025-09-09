# 📚 Proyecto Blume

Este es un proyecto **fullstack** con:
- Backend: **Django + PostgreSQL**
- Frontend: **React**
- Orquestación: **Docker Compose**

---

## 📌 Documentación
[Guía del git flow](./README_GITFLOW.md) 
[Guía del backend](./backend/README.md)

## 🚀 Estructura del proyecto

### Backend/
        core/ (configuración principal de Django)
        requirements.txt
        Dockerfile
        entrypoint.sh

docker-compose.yml (contenedores)
.env.example    (variables de entorno de ejemplo)

---

## ⚙️ Instalación con Docker

### 1. Requisitos previos
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) instalado y corriendo.
- Clonar este repositorio:

  bash
  git clone <URL_DEL_REPO>
  cd Blume

---

### 2. Configurar variables de entorno
    Copiar el archivo .env.example y renombrarlo como .env:
     
**bash**
    cp .env.example .env
    Ajustar credenciales necesarias

---    

### 3. Construir y levantar proyecto
**bash**
    docker compose up -d --build

    -Esto levantará:
    db → PostgreSQL en localhost:5432
    web → Django en localhost:8000
    
---
### 4. Migraciones y crear superusuario
    Esto se hace automáticamente al iniciar, pero si se necesita manualmente:

**bash**

    docker compose exec web python manage.py migrate
    docker compose exec web python manage.py createsuperuser

---
### 5. Acceder a la aplicación

-[Sitio principal](http://localhost:8000)

-[Panel de administración](http://localhost:8000/admin)

