CREATE DATABASE TiendaProductos;
GO

USE TiendaProductos;
GO

CREATE TABLE Categorias (
    IdCategoria INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(50) NOT NULL UNIQUE
);
GO

CREATE TABLE Productos (
    IdProducto INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    IdCategoria INT NOT NULL,
    Precio DECIMAL(10,2) NOT NULL CHECK (Precio >= 0),
    Stock INT NOT NULL DEFAULT 0 CHECK (Stock >= 0),
    FechaRegistro DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT FK_Productos_Categorias FOREIGN KEY (IdCategoria) REFERENCES Categorias(IdCategoria)
);
GO

INSERT INTO Categorias (Nombre) VALUES ('Tecnología'), ('Muebles');
GO

INSERT INTO Productos (Nombre, IdCategoria, Precio, Stock) VALUES
('Laptop', 1, 5500.00, 10),
('Mouse', 1, 80.00, 50),
('Silla', 2, 650.00, 15);
GO

SELECT p.IdProducto, p.Nombre, c.Nombre AS Categoria, p.Precio, p.Stock, p.FechaRegistro
FROM Productos p
INNER JOIN Categorias c ON p.IdCategoria = c.IdCategoria;
GO
