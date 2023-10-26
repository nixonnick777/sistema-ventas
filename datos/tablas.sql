CREATE DATABASE miapp
    DEFAULT CHARACTER SET = 'utf8mb4';

USE miapp;


CREATE TABLE Clientes (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    Direccion VARCHAR(255),
    Telefono VARCHAR(15),
    Email VARCHAR(100),
    FechaRegistro DATE
);

CREATE TABLE Productos (
    ProductoID INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(40) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    serie VARCHAR(50) NOT NULL,
    Descripcion TEXT,
    Fecha_compra DATE NOT NULL,
    Fecha_ingreso DATE NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL,
    Stock INT NOT NULL
);

CREATE TABLE Ventas (
    VentaID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    FechaVenta DATE,
    TotalVenta DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

CREATE TABLE DetallesVenta (
    DetalleVentaID INT AUTO_INCREMENT PRIMARY KEY,
    VentaID INT,
    ProductoID INT,
    Cantidad INT,
    PrecioUnitario DECIMAL(10, 2),
    Subtotal DECIMAL(10, 2),
    FOREIGN KEY (VentaID) REFERENCES Ventas(VentaID),
    FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
);

CREATE TABLE Compras (
    ComprasID INT AUTO_INCREMENT PRIMARY KEY,
    ProductoID INT,
    ProveedorID INT,
    Cantidad INT,
    FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID),
    FOREIGN KEY (ProveedorID) REFERENCES Proveedores(Proveedores)
);

CREATE TABLE Proveedores (
    ProveedorID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Contacto VARCHAR(100),
    Telefono VARCHAR(15),
    Email VARCHAR(100)
);

CREATE TABLE usuarios (
    UsuarioID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

CREATE TABLE registros(
    registrosID INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR (50),
    Email VARCHAR(40),
    contrasena VARBINARY(50)
)