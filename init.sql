CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (username, email) VALUES 
('usuario1', 'usuario1@example.com'),
('usuario2', 'usuario2@example.com'),
('admin', 'admin@example.com');

CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO products (name, price, description) VALUES 
('Producto 1', 19.99, 'Descripción del producto 1'),
('Producto 2', 29.99, 'Descripción del producto 2'),
('Producto 3', 39.99, 'Descripción del producto 3');
SELECT 'Inicialización de la base de datos completada' AS mensaje;