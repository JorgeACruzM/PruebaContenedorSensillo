# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /main

# Instala las dependencias del sistema y curl
RUN apt-get update && apt-get install -y curl

# Copia el archivo requirements.txt al contenedor
COPY requirements.txt .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia todo el contenido de la carpeta actual al contenedor
COPY . .

# Expone el puerto 5000 para acceder a la aplicación Flask
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "main.py"]
