
# Prueba Contenedor Sensillo

Este proyecto es una aplicación web simple desarrollada con Flask, que muestra una página "Coming Soon" con una imagen de fondo y un contador de días para el fin de mes. La aplicación está containerizada utilizando Docker para facilitar su despliegue y ejecución.

## Características

- **Imagen de fondo:** La página muestra una imagen de fondo personalizada.
- **Mensaje "In Process":** Indica que algo nuevo está por llegar.
- **Contador de días:** Calcula y muestra los días restantes para el fin de mes.

## Requisitos

- Docker
- Docker Compose (opcional)
- Python
- Flask

## Comandos para Contenedor

### Construir la Imagen Docker

Para construir la imagen Docker de la aplicación, ejecuta:

```bash
docker build -t pruebacontenedorsensillo .
```

### Ejecutar la Aplicación

Para ejecutar la aplicación en un contenedor Docker, usa:

```bash
docker run -d -p 5000:5000 --name pruebacontenedorsensillo_container pruebacontenedorsensillo
```

Para verificar que la aplicación está funcionando correctamente, puedes ejecutar:

```bash
docker exec -it pruebacontenedorsensillo_container curl http://127.0.0.1:5000
```

La aplicación estará disponible en [http://localhost:5000](http://localhost:5000).

## Notas

- **main.py:** Contiene la lógica principal de la aplicación Flask.
- **Dockerfile:** Define cómo se construye la imagen de la aplicación.





