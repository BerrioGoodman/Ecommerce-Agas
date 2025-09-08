# 📚 Proyecto Blume

Este es un proyecto **fullstack** con:
- Backend: **Django + PostgreSQL**
- Frontend: **React**
- Orquestación: **Docker Compose**

---

## 🚀 Estructura del proyecto

Blume/
│── backend/ # Código del backend (Django)
│ ├── core/ # Configuración principal de Django
│ ├── requirements.txt
│ ├── Dockerfile
│ └── entrypoint.sh
│
│── frontend/ # Código del frontend (React)
│
│── docker-compose.yml # Orquestación de contenedores (web + db)
│── .env.example # Variables de entorno de ejemplo
│── README.md

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

[Sitio principal]: http://localhost:8000

[Panel de administración]: http://localhost:8000/admin

