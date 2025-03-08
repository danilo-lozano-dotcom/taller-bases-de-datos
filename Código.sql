CREATE TABLE Clientes (
	id_cliente INTEGER,
	nombre_cliente TEXT,
	email TEXT,
	teléfono INTEGER,
	PRIMARY KEY (id_cliente AUTOINCREMENT)
);


CREATE TABLE Pedidos (
	id_pedido INTEGER,
	nombre_cliente TEXT,
	fecha TEXT,
	total_compra NUMERIC,
	PRIMARY KEY (id_pedido AUTOINCREMENT)
	FOREIGN KEY("nombre_cliente") REFERENCES "Clientes"("nombre_cliente")
);


CREATE TABLE Productos (
	id_producto INTEGER,
	nombre_producto TEXT,
	precio NUMERIC,
	stock_disponible INTEGER,
	PRIMARY KEY (id_producto AUTOINCREMENT)
);


CREATE TABLE Detalles_Pedidos (
	id_pedido INTEGER,
	id_producto INTEGER,
	id_cliente INTEGER,
	cantidad INTEGER,
	subtotal NUMERIC,
	FOREIGN KEY("id_cliente") REFERENCES "Clientes"("id_cliente"),
	FOREIGN KEY("id_pedido") REFERENCES "Pedidos"("id_pedido"),
	FOREIGN KEY("id_producto") REFERENCES "Productos"("id_producto")	
);


INSERT INTO Clientes (nombre_cliente, email, teléfono)
VALUES ('Juan Pérez', 'juan.perez@gmail.com', 3218524478);

INSERT INTO Clientes (nombre_cliente, email, teléfono)
VALUES ('Victoria Gómez', 'victoria.gomez@outlook.com', 3008594488);

INSERT INTO Clientes (nombre_cliente, email, teléfono)
VALUES ('Lina Ruiz', 'lina.ruiz@yahoo.es', 3106785500);



INSERT INTO Productos (nombre_producto, precio, stock_disponible)
VALUES ('manzana', 1000, 100);

INSERT INTO Productos (nombre_producto, precio, stock_disponible)
VALUES ('pera', 900, 115);

INSERT INTO Productos (nombre_producto, precio, stock_disponible)
VALUES ('mango', 1200, 89);

INSERT INTO Productos (nombre_producto, precio, stock_disponible)
VALUES ('banano', 500, 201);



INSERT INTO Pedidos (nombre_cliente, fecha, total_compra)
VALUES ('Juan Pérez', '08/03/2025', 15000);


SELECT * FROM Clientes;


SELECT nombre_cliente FROM Clientes;


SELECT * FROM Pedidos;

-- INSERT INTO Detalles_Pedidos (id_pedido, id_producto, id_cliente, cantidad, subtotal)
-- VALUES (1, 1, 1, 15, 15*1000);


SELECT nombre_cliente, id_pedido FROM Pedidos;

SELECT nombre_producto FROM Productos;

SELECT id_producto, cantidad, subtotal FROM Detalles_Pedidos;




