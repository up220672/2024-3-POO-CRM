@echo off

:: Crear el directorio principal del proyecto
echo Creando el directorio principal 2024-3-POO-CRM...
mkdir 2024-3-POO-CRM
cd 2024-3-POO-CRM

:: Crear el subdirectorio frontend para la aplicación Flutter
echo Creando el subdirectorio frontend y creando el proyecto en Flutter...
mkdir frontend
cd frontend
:: Creamos el proyecto en una nueva ventana de la consola para evitar que se cierre
start /wait cmd /c "flutter create ."
echo Proyecto Flutter creado correctamente.
cd ..

:: Crear el subdirectorio backend para la aplicación .NET Core
echo Creando el subdirectorio backend y generando la API en .NET Core...
mkdir backend
cd backend
dotnet new webapi
echo Proyecto .NET Core creado correctamente.
cd ..

:: Crear el subdirectorio para los scripts de base de datos
echo Creando el subdirectorio database y generando scripts SQL...
mkdir database
cd database

:: Crear init.sql con la creación de la base de datos y tabla clientes
echo CREATE DATABASE CRM;>init.sql
echo.>>init.sql
echo USE CRM;>>init.sql
echo.>>init.sql
echo CREATE TABLE clientes (>>init.sql
echo     id INT PRIMARY KEY IDENTITY(1,1),>>init.sql
echo     nombre VARCHAR(100),>>init.sql
echo     email VARCHAR(100),>>init.sql
echo     telefono VARCHAR(20),>>init.sql
echo     direccion VARCHAR(150)>>init.sql
echo );>>init.sql

:: Crear data.sql con datos de ejemplo
echo INSERT INTO clientes (nombre, email, telefono, direccion) VALUES>>data.sql
echo ('Kevin Medina', 'kevin@example.com', '555-1234', 'Calle A 123'),>>data.sql
echo ('Mariel Medina', 'mariel@example.com', '555-5678', 'Calle B 456'),>>data.sql
echo ('Carlos Macías', 'carlos@example.com', '555-8765', 'Calle C 789'),>>data.sql
echo ('Luis Barrios', 'luis@example.com', '555-4321', 'Calle D 101'),>>data.sql
echo ('Jorge Alcaraz', 'jorge@example.com', '555-6789', 'Calle E 202');>>data.sql
cd ..

:: Crear el subdirectorio para los scripts de configuración
echo Creando el subdirectorio scripts para los scripts de configuracion...
mkdir scripts
cd scripts

:: Crear un script PowerShell para obtener solo una IP válida (excluyendo 127.0.0.1)
echo # Obtener la primera IP IPv4 válida > obtener_ip.ps1
echo $ip = (Get-NetIPAddress ^| Where-Object { ^$_.AddressFamily -eq 'IPv4' -and ^$_.IPAddress -notlike '127.*' -and ^$_.IPAddress -notlike '169.*' } ^| Select-Object -First 1 -ExpandProperty IPAddress) >> obtener_ip.ps1
echo # Imprimir la IP en consola >> obtener_ip.ps1
echo Write-Output "La IP de este equipo es: $ip" >> obtener_ip.ps1

:: Ejecutar el script de PowerShell para obtener la IP
echo Ejecutando script de PowerShell para obtener la IP...
powershell -ExecutionPolicy Bypass -File ".\obtener_ip.ps1"

:: Finalizar
echo Proyecto creado con exito!

:end
pause
