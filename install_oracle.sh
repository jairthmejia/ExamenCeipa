#!/bin/bash

# Crear directorio para Oracle
sudo mkdir -p /opt/oracle
cd /opt/oracle

# Descargar Oracle Instant Client ZIP (Versión 21.x para Linux x64)
sudo wget https://oracle.com

# Descomprimir y renombrar la carpeta
sudo unzip instantclient-basiclight-linux.x64-21.12.0.0.0dbru.zip
sudo mv instantclient_21_12 instantclient

# Limpiar el archivo ZIP descargado
sudo rm instantclient-basiclight-linux.x64-21.12.0.0.0dbru.zip

# Configurar enlaces simbólicos requeridos por algunas librerías antiguas
cd instantclient
sudo ln -sf libclntsh.so.21.1 libclntsh.so

echo "Oracle Instant Client instalado con éxito en /opt/oracle/instantclient"