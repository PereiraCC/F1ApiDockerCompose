# F1 Console Docker compose

## Pasos para ejecutar el app

1. Instalar docker [Docker Desktop](https://docs.docker.com/desktop/)
2. Clonar este repositorio localmente.
3. Navegar a la carpeta local de este proyecto en la terminal
4. Crear el archivo **.env** con base al archivo **.env.template**. 
    - Nota: Solamente indicar el valor del Password.
5. Ejecutar el comando ```docker compose up -d```
6. Connectarse a la BD mediante un gestor con las siguientes credenciales
    - SERVER => localhost | El container levanta en puerto 1433
    - USERBD => sa
    - PASSWORD => yourPassword
    - Algunos Gestores que se pueden usar
        - [TablePlus](https://tableplus.com/)
        - [Azure Data Studio](https://azure.microsoft.com/en-us/products/data-studio)
        - [SSMS](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16)
7. Ejecutar el script de Data inicial archivo **initData.sql**
8. Probar el F1 API en el puerto 3000.

### Notas

1. Para limpiar los container, volume y network ejecutar el comando ```docker compose down --volumes```
2. Para eliminar las imagenes ejecutar los comando
    - ```docker image rm -f IDImages```

### Imagen de docker
[F1 Api Image](https://hub.docker.com/repository/docker/pereira00/formula1api/general)

### Codigo fuente
[F1 Api source](https://github.com/PereiraCC/F1Api)

##### Carlos Pereira, 2024