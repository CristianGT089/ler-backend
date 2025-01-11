# Proyecto: Microservicio Node.js + PostgreSQL + Frontend Angular - PARTE DEL BACKEND

Este proyecto es una aplicación web que consiste en un backend desarrollado con Node.js y Express, conectado a una base de datos PostgreSQL, y un frontend desarrollado con Angular.

---

## **Requisitos previos**
1. **Node.js** (v18 o superior) y **npm**.
2. **Docker** y **Docker Compose** (opcional para usar contenedores).
3. **PostgreSQL** instalado localmente si no usas Docker.

---

## **Pasos para ejecutar el backend localmente**

### **1. Backend (Node.js + Express)**
#### Clonar el repositorio:
```bash
git clone <url-del-repositorio>
cd backend
```

#### Instalar dependencias:
```bash
npm install
```

#### Configurar variables de entorno:
Crea un archivo `.env` en la carpeta `backend` con las siguientes variables:
```
DB_HOST=localhost
DB_PORT=5432
DB_USER=postgres
DB_PASSWORD=postgres
DB_NAME=ler_database
PORT=3000
```

#### Iniciar el servidor backend:
```bash
npm start
```
El backend estará disponible en: `http://localhost:3000/api/data`.

---



## **Comandos para crear la tabla `usuarios` en PostgreSQL**

Si usas PostgreSQL localmente, conecta a tu base de datos y ejecuta el script `sql/init-db.sql` para crear la tabla:

---

## **Probar el microservicio**
Puedes probar el microservicio de dos maneras:

### **1. Usando Postman**
- Instala [Postman](https://www.postman.com/downloads/).
- Crea una nueva petición `GET` con la URL: `http://localhost:3000/api/data`.
- Haz clic en "Send" y verifica que recibes los datos en formato JSON como:
```json
[
  {
    "id": 1,
    "nombre": "Juan Pérez",
    "correo": "juan.perez@example.com",
    "edad": 30
  },
  {
    "id": 2,
    "nombre": "Ana Gómez",
    "correo": "ana.gomez@example.com",
    "edad": 25
  }
]
```

### **2. Usando la Terminal**
Si prefieres hacer la solicitud directamente desde la terminal, puedes usar curl. Ejecuta el siguiente comando:

```bash
curl http://localhost:3000/api/data
```

### **2. Desde el frontend**
- Asegúrate de que el frontend esté corriendo en `http://localhost:4200`.
- Configura un servicio Angular que consuma el backend. Ejemplo de método en un servicio Angular:

---

## **Docker (Opcional)**
Si prefieres ejecutar el backend y PostgreSQL en contenedores Docker, consulta el archivo `docker-compose.yml` incluido en este repositorio.

---

## **Notas**
- Verifica que los puertos configurados no estén ocupados.
- Asegúrate de que PostgreSQL esté corriendo localmente si no usas Docker.
- Si necesitas ayuda adicional, consulta la documentación de [Node.js](https://nodejs.org), [PostgreSQL](https://www.postgresql.org), y [Angular](https://angular.io).

## **Datos de Contacto**

Si tienes alguna pregunta o necesitas asistencia adicional, no dudes en contactarme.

- **Nombre**: Cristian Stiven Guzman Tovar
- **Correo electrónico**: cristiansgt089@gmail.com
- **GitHub**: [https://github.com/CristianGT089](https://github.com/CristianGT089)
- **LinkedIn**: [https://www.linkedin.com/in/cristian-stiven-guzman-tovar-668655217/](https://www.linkedin.com/in/cristian-stiven-guzman-tovar-668655217/)

¡Estoy disponible para cualquier consulta relacionada con el proyecto o cualquier otra ayuda que necesites!
