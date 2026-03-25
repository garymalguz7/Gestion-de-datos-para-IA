# Gestion-de-datos-para-IA

# Preparación del Entorno Técnico para Soluciones de Datos e IA

Este repositorio contiene la configuración base para el entorno técnico del proyecto de la asignatura **Gestión de Datos para IA**. El objetivo principal es establecer una arquitectura sólida, escalable y reproducible mediante el uso de contenedores, automatización y despliegue en la nube.

## 🛠️ Herramientas y Tecnologías Utilizadas

Para este proyecto, se tomaron las siguientes decisiones tecnológicas:

* **Visual Studio Code (VS Code):** Seleccionado como el Entorno de Desarrollo Integrado (IDE) local por su versatilidad y excelente integración con Git y Docker.
* **Git y GitHub:** Utilizados para el control de versiones, permitiendo un historial claro de los cambios y un repositorio centralizado en la nube.
* **Docker:** Herramienta de contenerización. Permite empaquetar la aplicación con todas sus dependencias en un entorno aislado (reflejado en el `Dockerfile`), garantizando que funcione igual en desarrollo y en producción.
* **GitHub Actions:** Implementado para la Integración Continua (CI). Automatiza la verificación del entorno cada vez que se realiza un *push* a la rama principal.
* **Render:** Plataforma en la nube elegida para el despliegue (CD) del contenedor Docker por su facilidad de uso y soporte nativo para `Dockerfile`.
* **Python:** Lenguaje base utilizado para levantar un servidor web ligero (`main.py`) que sirva como prueba de vida (Health Check) del entorno.

## 📂 Estructura del Repositorio

La estructura del proyecto está organizada de la siguiente manera:

/
 ┣ .github/
 ┃ ┗ workflows/
 ┃   ┗ ci.yml           # Pipeline de GitHub Actions para CI/CD
 ┣ .env.example         # Plantilla de variables de entorno seguras
 ┣ .gitignore           # Exclusiones de archivos para Git
 ┣ Dockerfile           # Instrucciones para la construcción de la imagen Docker
 ┣ main.py              # Aplicación web base de prueba (Python)
 ┣ requirements.txt     # Dependencias del proyecto
 ┗ README.md            # Documentación del proyecto

Variables de Entorno
El manejo de secretos y configuraciones específicas del entorno se gestiona a través de variables de entorno. En el archivo .env.example se encuentra la plantilla base.

Durante el despliegue en la nube (Render), se configuraron las siguientes variables de prueba:

ENTORNO=NUBE

PORT=8000 (Asignado dinámicamente o por defecto para el contenedor).

🚀 Despliegue en la Nube
La aplicación ha sido contenerizada y desplegada exitosamente de manera automática desde la rama main de este repositorio.

🔗 URL de la aplicación operativa:
https://gestion-de-datos-para-ia-app.onrender.com
