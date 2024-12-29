# JupyterDock

Docker Configurations for Python

## Start

Open Terminal:

- docker-compose build
- docker-compose up -d 

Go to http://localhost:8888/  
Input Token: du2-ErtNJIXvjUq8couo5A  
You can change this token in the docker-compose.yml file

## End

Open Terminal:

- docker-compose down

## Files
The files that are in the navigator of Jupyter Lab should show up in the __files__ directory. This is one of the shared directory's that the python container has access to.

## Certificates
Self signed certificates are created and will be stored in the __certs__ directory. This is one of the shared directory's that the python container has access to. If __certs/jupyter.key__ and __/certs/jupyter.crt__ do not exist when ran, they will be created so the web server can run in https mode. You can place your own certificates here if needed.

## Configuration
The Jupyter Lab configuration gets stored in the __jupyter_config__ directory. This is one of the shared directory's that the python container has access to.
