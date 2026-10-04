CREATE DATABASE AgroUraba;
GO

USE AgroUraba;
GO

CREATE TABLE Inventario (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(200) NOT NULL,
    price DECIMAL(18,2) NOT NULL,
    stock INT NOT NULL,
    minStock INT NOT NULL,
    lot NVARCHAR(100) NULL,
    exp DATE NULL,
    branch NVARCHAR(100) NOT NULL
);
GO

CREATE TABLE Ventas (
    id NVARCHAR(50) PRIMARY KEY,
    detalle NVARCHAR(500) NOT NULL,
    total DECIMAL(18,2) NOT NULL,
    fecha DATETIME NOT NULL DEFAULT GETDATE()
);
GO

INSERT INTO Inventario (name, price, stock, minStock, lot, exp, branch)
VALUES
('Fertilizante Úrea 46%', 120000, 15, 10, 'UT-9921', '2027-05-12', 'Apartadó'),
('Agroquímico BananoProtect', 85000, 4, 8, 'BP-8812', '2026-11-30', 'Chigorodó'),
('Abono Complejo NPK', 140000, 2, 5, 'NPK-001', '2028-01-15', 'Apartadó'),
('Fungicida Agrícola Premium', 95000, 0, 5, 'FG-4401', '2026-12-01', 'Chigorodó');
GO
