CREATE DATABASE TiendaProductos;
GO

USE TiendaProductos;
GO

CREATE TABLE Productos (
    IdProducto INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    Categoria NVARCHAR(50) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL
);
GO

INSERT INTO Productos (Nombre, Categoria, Precio, Stock) VALUES
('Laptop', 'Tecnología', 5500.00, 10),
('Mouse', 'Tecnología', 80.00, 50),
('Silla', 'Muebles', 650.00, 15);
GO

SELECT * FROM Productos;
GO
