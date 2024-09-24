# CRM Básico para Gestión de Clientes

Esta aplicación de CRM (Customer Relationship Management) está diseñada para facilitar la gestión de información de clientes, el seguimiento de oportunidades de ventas y la comunicación efectiva con ellos. Los empleados utilizarán este sistema para registrar y hacer seguimiento al estado de clientes y posibles oportunidades de negocio, mejorando la eficiencia y efectividad en las ventas.

## Funcionalidades

### 1. Gestión de Clientes
- **Crear, editar y eliminar** información de clientes.
- Registro de **datos de contacto** y detalles relevantes de cada cliente.

### 2. Seguimiento de Oportunidades
- **Crear oportunidades** de ventas vinculadas a un cliente.
- Campos para registrar el **estado** (en negociación, cerrado, perdido) y detalles de la venta.

### 3. Agenda y Notificaciones
- Posibilidad de añadir **recordatorios** para seguir a los clientes.
- **Notificaciones por correo** para tareas próximas o pendientes.

### 4. Reportes de Ventas
- Generación de reportes de oportunidades ganadas, perdidas y en negociación, **filtrados por fecha y responsable** de ventas.

### 5. Gestión de Actividades
- Registro de interacciones con clientes (reuniones, llamadas, correos) para tener un **historial completo**.

## Estructura Técnica

### Frontend (Flutter)
- **Dashboard**: Visualización de la lista de clientes y oportunidades de ventas con filtros por estado, fecha y responsable.
- **Formulario de Cliente**: Para crear o editar la información del cliente, con campos para nombre, contacto, dirección, etc.
- **Seguimiento de Oportunidades**: Formulario para registrar oportunidades de negocio vinculadas a un cliente.
- **Historial de Actividades**: Visualización de las interacciones registradas con cada cliente.

### Backend (API REST en .NET)
- **Clientes**: Implementación de CRUD para gestionar clientes.
- **Oportunidades**: CRUD de oportunidades de ventas vinculadas a clientes.
- **Actividades**: CRUD para registrar interacciones con los clientes (reuniones, llamadas, correos, etc.).
- **Notificaciones**: Endpoint para enviar correos recordatorios utilizando un servidor SMTP.
- **Reportes**: Generación de reportes de oportunidades por responsable de ventas o cliente.

### Base de Datos (SQL Server)
- **Clientes**: Almacena información del cliente (nombre, contacto, dirección, etc.).
- **Oportunidades**: Tabla con detalles de cada oportunidad de negocio (estado, fecha, responsable).
- **Actividades**: Tabla para registrar el historial de actividades con cada cliente.
- **Usuarios**: Tabla de usuarios del sistema con roles de permisos (ejemplo: administrador, vendedor).

## Requisitos Previos

- Flutter SDK (para el frontend)
- .NET Core (para el backend)
- SQL Server (para la base de datos)
