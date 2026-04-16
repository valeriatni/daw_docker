# Laboratorio 01

En este laboratorio se desarrolló un entorno web completo usando Docker como herramienta principal. En la primera parte, se configuró un contenedor basado en Ubuntu 24.04, donde se instaló Apache y se automatizó el inicio del servidor para que el entorno pudiera funcionar de manera práctica y ordenada. En la segunda parte, se creó el sitio developers, usando HTML, CSS y JavaScript básico para presentar información del grupo, un estándar web y un formulario de contacto. En la tercera parte, se desplegó el sitio webapp, que corresponde a un proyecto anterior del curso y fue revisado antes de publicarlo. Todo el trabajo fue organizado con GitHub, validado con evidencias en terminal y navegador, y documentado en el informe para mostrar el funcionamiento completo.

# Grupo 3

- Brigitte Karolay Velasquez Puma
- Valeria Abigai Ticona Nina
- Jhonatan Javier Lerma Ccopa


#  Objetivos

- Automatizar la creación de un servidor web con Docker.
- Instalar Apache dentro de un contenedor Ubuntu 24.04.
- Configurar dos virtualhosts independientes.
- Desplegar el sitio developers.
- Desplegar el sitio webapp.
- Verificar el funcionamiento desde terminal y navegador.
- Documentar el proceso en LaTeX.
- Mantener el historial de trabajo en GitHub mediante commits.


#  Tecnologías utilizadas

- Docker
- Ubuntu 24.04
- Apache HTTP Server 2.x
- HTML
- CSS
- JavaScript 
- GitHub
- LaTeX
- Navegador web


# Estructura del proyecto

src/  
├── apache/  
│   ├── developers.conf  
│   └── webapp.conf  
├── site/  
│   ├── developers/  
│   │   ├── css/  
│   │   │   └── style.css  
│   │   ├── js/  
│   │   │   └── script.js  
│   │   ├── contact.html  
│   │   ├── index.html  
│   │   └── webstandards.html  
│   └── webapp/  
│       └── index.html  
├── Dockerfile  
└── README.md  
  
  
  
# Evidencias  
En el informe y en el video se muestra:  
el código del Dockerfile,  
la construcción de la imagen,  
la ejecución del contenedor,  
la verificación con docker ps,  
el acceso a los virtualhosts desde el navegador,  
el funcionamiento general del proyecto.  
docker build -t mi-apache-sitios .  
docker run -d -p 8080:80 --name mi-servidor-web mi-apache-sitios  
docker ps  
  
# Repositorio GitHub  
https://github.com/valeriatni/daw_docker.git    
  
# Video de demostración  
https://youtu.be/1lVElbEY3d8    
  
# Conclusión  
Este laboratorio permitió comprender cómo automatizar un servidor web con Docker y cómo organizar varios sitios mediante virtualhosts dentro de un mismo contenedor.  
También fortaleció el uso de GitHub como control de versiones, la documentación en LaTeX y la validación del funcionamiento del sistema.
