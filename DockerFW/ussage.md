## Para construir la imagen
`docker build -t python-img .`
## Para correrla
`docker run -p 8000:8000 --name django -d  python-img python manage.py runserver 0.0.0.0:8000`