# 1. Usar una imagen base oficial de Python (ligera)
FROM python:3.10-slim

# 2. Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiar el archivo de requerimientos primero (para optimizar la caché de Docker)
COPY requirements.txt .

# 4. Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copiar todo el código de tu proyecto al contenedor
COPY . .

# 6. Exponer el puerto que usará tu aplicación (cámbialo si usas otro, por ejemplo 8000 para FastAPI/Django o 5000 para Flask)
EXPOSE 8000

# 7. Comando para ejecutar tu aplicación (modifica 'main.py' por el nombre de tu archivo principal)
CMD ["python", "main.py"]