#!/bin/bash
# Iniciar MySQL
service mysql start

# Crear base de datos si no existe
mysql -u root -e "CREATE DATABASE IF NOT EXISTS mydb"

# Importar datos iniciales
mysql -u root mydb < /docker-entrypoint-initdb.d/init.sql

# Iniciar Apache en primer plano
apache2-foreground