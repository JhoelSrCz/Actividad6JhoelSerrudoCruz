CREATE DATABASE GESTIONTD

CREATE TABLE VENTA (
    IDVENTA INT IDENTITY(1,1) NOT NULL,
    FECHAVENTA DATE NOT NULL,
    TOTALVENTA DECIMAL(10, 2)NOT NULL,
	PRIMARY KEY (IDVENTA)
);

CREATE TABLE PRODUCTO (
    IDPRODUCTO INT IDENTITY(1,1) NOT NULL,
    NOMBREPRODUCTO NVARCHAR(100) NOT NULL,
    PRECIOUNITARIO DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (IDPRODUCTO)
);

CREATE TABLE DETALLEVENTA (
    IDDETALLEVENTA INT IDENTITY(1,1) NOT NULL,
    IDVENTA INT NOT NULL,
    IDPRODUCTO INT NOT NULL,
    CANTIDAD INT NOT NULL,
    PRECIOUNITARIO DECIMAL(10, 2) NOT NULL,
    TOTALDETALLE DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (IDDETALLEVENTA),
    FOREIGN KEY (IDVENTA) REFERENCES VENTA(IDVENTA),
    FOREIGN KEY (IDPRODUCTO) REFERENCES PRODUCTO(IDPRODUCTO)
);

INSERT INTO VENTA VALUES 
    ('2024-04-01', 254.00),
    ('2024-04-02', 500.50),
    ('2024-04-03', 785.25),
    ('2024-04-04', 550.75),
    ('2024-04-05', 400.00),
    ('2024-04-06', 280.50),
    ('2024-04-07', 600.75),
    ('2024-04-08', 852.00),
    ('2024-04-09', 410.25),
    ('2024-04-10', 900.50);

INSERT INTO PRODUCTO VALUES 
    ('KARPIL', 1.00),
    ('YOGURT', 1.00),
    ('PAN', 2.00),
    ('GALLETAS', 3.00),
    ('HELADOS', 4.00),
    ('DULCES', 5.00),
    ('CERVEZA', 12.00),
    ('SODA', 10.00);



INSERT INTO DetalleVenta VALUES 
    (1, 1, 2, 1.00, 2.00),
    (1, 2, 1, 1.00, 2.00),
    (2, 3, 1, 2.00, 4.00),
    (2, 4, 3, 3.00, 6.00),
    (3, 5, 2, 4.00, 8.00),
    (3, 6, 1, 5.00, 10.00),
    (4, 7, 2, 12.00, 24.00),
    (4, 8, 4, 10.00, 20.00);
