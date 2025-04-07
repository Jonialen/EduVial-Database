# Utiliza la imagen oficial de PostgreSQL 17.4
FROM postgres:17.4

# Copiar los scripts de inicialización (script.sql y data.sql) a la carpeta adecuada en el contenedor
COPY ./init/01_script.sql /docker-entrypoint-initdb.d/
COPY ./init/02_data.sql /docker-entrypoint-initdb.d/

# Asegurarse de que los permisos sean correctos para los scripts
RUN chmod a+r /docker-entrypoint-initdb.d/01_script.sql
RUN chmod a+r /docker-entrypoint-initdb.d/02_data.sql

# Exponer el puerto que usará PostgreSQL
EXPOSE 5432

