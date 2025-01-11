-- Conectarse a la base de datos creada
\c ler_database;

-- Crear la tabla usuarios si no existe
CREATE TABLE IF NOT EXISTS usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100) UNIQUE,
    edad INT
);

-- Si necesitas eliminar tuplas para volver a ejecutar este script descomenta la siguiente linea
-- TRUNCATE TABLE usuarios RESTART IDENTITY;

-- Insertar 30 usuarios adicionales
INSERT INTO usuarios (nombre, correo, edad)
VALUES
    ('María Gómez', 'maria.gomez@gmail.com', 22),
    ('Luis Torres', 'luis.torres@gmail.com', 27),
    ('Sofía Rodríguez', 'sofia.rodriguez@gmail.com', 35),
    ('David Fernández', 'david.fernandez@gmail.com', 29),
    ('Laura Méndez', 'laura.mendez@gmail.com', 26),
    ('Pedro Ramírez', 'pedro.ramirez@gmail.com', 31),
    ('Daniela Ruiz', 'daniela.ruiz@gmail.com', 24),
    ('Andrés Jiménez', 'andres.jimenez@gmail.com', 33),
    ('Claudia Castillo', 'claudia.castillo@gmail.com', 28),
    ('Javier Morales', 'javier.morales@gmail.com', 34),
    ('Mónica Vega', 'monica.vega@gmail.com', 23),
    ('Felipe Ortega', 'felipe.ortega@gmail.com', 25),
    ('Patricia Navarro', 'patricia.navarro@gmail.com', 32),
    ('Carmen Rojas', 'carmen.rojas@gmail.com', 27),
    ('Raúl Guzmán', 'raul.guzman@gmail.com', 30),
    ('Liliana Herrera', 'liliana.herrera@gmail.com', 28),
    ('Héctor Paredes', 'hector.paredes@gmail.com', 36),
    ('Isabel Blanco', 'isabel.blanco@gmail.com', 21),
    ('Ricardo Peña', 'ricardo.pena@gmail.com', 29),
    ('Verónica Salas', 'veronica.salas@gmail.com', 33),
    ('Diego Álvarez', 'diego.alvarez@gmail.com', 22),
    ('Carolina León', 'carolina.leon@gmail.com', 31),
    ('Esteban Soto', 'esteban.soto@gmail.com', 25),
    ('Lucía Rivera', 'lucia.rivera@gmail.com', 27),
    ('Gustavo Flores', 'gustavo.flores@gmail.com', 30),
    ('Paola Campos', 'paola.campos@gmail.com', 24),
    ('Manuel Reyes', 'manuel.reyes@gmail.com', 34),
    ('Rocío Lozano', 'rocio.lozano@gmail.com', 26),
    ('Ángel Silva', 'angel.silva@gmail.com', 35),
    ('Natalia Cortés', 'natalia.cortes@gmail.com', 23)
ON CONFLICT (correo) DO NOTHING;
