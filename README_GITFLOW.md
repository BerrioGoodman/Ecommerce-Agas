# 🚀 Git Flow - Guía de trabajo en equipo

Este documento explica cómo debemos trabajar en este repositorio para mantener el código ordenado y evitar errores en producción.

---

## 🌳 Ramas principales
- **main** → código en producción, nunca se toca directamente.
- **develop** → rama de integración, donde entran todas las nuevas funcionalidades.

---

## 🌿 Ramas secundarias
- **feature/** → para nuevas funcionalidades.  
  Ejemplo: `feature/login-usuario`
- **hotfix/** → para arreglos urgentes en producción.  
  Ejemplo: `hotfix/arreglo-bug-login`

---

## 🔄 Flujo de trabajo
1. Crear rama desde `develop`:
   ```bash
   git checkout develop
   git pull origin develop
   git checkout -b feature/nombre-funcionalidad

2. Trabajar en la rama y hacer commits

3. Subir la rama al `remoto`:
    ```bash
    git push origin feature/nombre-funcionalidad

4. Crear Pull Request (PR) hacia develop

5. Otro compañero revisa y aprueba el PR

6. Cuando **develop** este estable, se hace un PR hacia **main**

---

## 📦 Reglas importantes

- Nadie hace push directo a main ni a develop.

- Todo cambio debe pasar por Pull Request.

- Revisar y aprobar el código de los compañeros antes de hacer merge.

- Usar la carpeta .github:

    - Plantillas de PR obligatorias.
    - Acciones automáticas para verificar que el código funcione antes de mergear.

## Ejemplo de flujo

### Crear nueva feature :
**bash**
    git checkout develop
    git pull origin develop
    git checkout -b feature/formulario-contacto

### Trabajar, hacer commits:
**bash**
    git add .
    git commit -m "feat: formulario de contacto"

### Subir la rama
**bash**
    git push origin feature/formulario-contacto

### Abrir PR hacia develop

    
