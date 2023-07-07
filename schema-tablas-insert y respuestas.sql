create schema telovendosprint;
use telovendosprint;

CREATE USER 'usersprint'@'localhost' IDENTIFIED BY 'admin';
GRANT CREATE, ALTER, DROP, INSERT ON telovendosprint.* TO 'usersprint'@'localhost';
FLUSH PRIVILEGES;

create table categorias (
id_categoria int primary key not null auto_increment,
nombre_categoria varchar(50) not null
);

create table proveedores (
id_proveedor int primary key not null auto_increment,
nombre_representante varchar(50) not null,
nombre_corporativo varchar(50)not null,
correo varchar(50) not null,
id_categoria int not null,
FOREIGN KEY (id_categoria) references categorias(id_categoria)
);

create table contactos (
id_contacto int primary key not null auto_increment,
id_proveedor int not null,
telefono varchar(50) not null,
nombre_contacto varchar(50)not null,
FOREIGN KEY (id_proveedor) references proveedores(id_proveedor)
);

INSERT INTO `telovendosprint`.`categorias` (`id_categoria`,`nombre_categoria`) VALUES (9,'Celulares');
INSERT INTO `telovendosprint`.`categorias` (`id_categoria`,`nombre_categoria`) VALUES (10,'Computadoras');
INSERT INTO `telovendosprint`.`categorias` (`id_categoria`,`nombre_categoria`) VALUES (11,'Perifericos');
INSERT INTO `telovendosprint`.`categorias` (`id_categoria`,`nombre_categoria`) VALUES (12,'Accesorios');
INSERT INTO `telovendosprint`.`categorias` (`id_categoria`,`nombre_categoria`) VALUES (13,'Maquicas deportivas');
INSERT INTO `telovendosprint`.`categorias` (`id_categoria`,`nombre_categoria`) VALUES (14,'Maquinas de Pasteleria');
INSERT INTO `telovendosprint`.`categorias` (`id_categoria`,`nombre_categoria`) VALUES (15,'Maquinas de Panaderia');
INSERT INTO `telovendosprint`.`categorias` (`id_categoria`,`nombre_categoria`) VALUES (16,'Maquinas Arcade');


call crearproveedor("Juanito Perez", "Arcade Spa","arcadespa@gmail.com", 9,"8888888", "Maria Dolores",'9999999', 'Pedro Gómez');
call crearproveedor('Pedro Sanchez', 'Tech Solutions', 'pedrosanchez@gmail.com', 10,'1111111', 'Laura Martínez','2222222', 'Carlos Ramírez');
insert into contactos (id_proveedor ,telefono , nombre_contacto)
values(3, '3333333', 'Ana Sánchez');
call crearproveedor('María Rodriguez', 'Fashion Trends', 'mariarodriguez@gmail.com', 11,'4444444', 'Javier López','5555555', 'María Torres');
call crearproveedor('Luis Gomez', 'Food Delights', 'luisgomez@gmail.com', 12,'6666666', 'Sofía Gómez','7777777', 'Juan Martínez');
call crearproveedor('Ana López', 'Healthy Life', 'analorez@gmail.com', 13,'9999999', 'Pedro López','0000000', 'María Sánchez');
insert into contactos (id_proveedor ,telefono , nombre_contacto)
values(4, '8888888', 'Laura Torres');

create table productos (
id_producto int primary key not null auto_increment,
precio int ,
id_categoria int,
color varchar(50) not null,
stock int,
FOREIGN KEY (id_categoria) references categorias(id_categoria)
);

insert into productos (precio,id_categoria,color,stock) values (990, 12, "verde",10);
insert into productos (precio,id_categoria,color,stock) values (2990, 11, "azul",110);
insert into productos (precio,id_categoria,color,stock) values (2990, 9, "verde",101);
insert into productos (precio,id_categoria,color,stock) values (3990, 10, "naranjo",110);
insert into productos (precio,id_categoria,color,stock) values (4990, 11, "blanco",103);
insert into productos (precio,id_categoria,color,stock) values (5990, 12, "morado",120);
insert into productos (precio,id_categoria,color,stock) values (6990, 13, "violeta",30);
insert into productos (precio,id_categoria,color,stock) values (7990, 14, "amarillo",40);
insert into productos (precio,id_categoria,color,stock) values (8990, 15, "celeste",60);
insert into productos (precio,id_categoria,color,stock) values (9990, 16, "rosado",40);

create table prov_producto (
id_prov_producto int primary key not null auto_increment,
id_producto int ,
id_proveedor int,
FOREIGN KEY (id_producto) references productos (id_producto),
FOREIGN KEY (id_proveedor) references proveedores (id_proveedor)
);

insert into prov_producto (id_producto,id_proveedor) values(1,1);
insert into prov_producto (id_producto,id_proveedor) values(2,1);
insert into prov_producto (id_producto,id_proveedor) values(2,2);
insert into prov_producto (id_producto,id_proveedor) values(2,2);
insert into prov_producto (id_producto,id_proveedor) values(3,4);
insert into prov_producto (id_producto,id_proveedor) values(4,4);
insert into prov_producto (id_producto,id_proveedor) values(5,3);
insert into prov_producto (id_producto,id_proveedor) values(6,5);
insert into prov_producto (id_producto,id_proveedor) values(7,2);
insert into prov_producto (id_producto,id_proveedor) values(8,4);
insert into prov_producto (id_producto,id_proveedor) values(9,3);
insert into prov_producto (id_producto,id_proveedor) values(10,4);
insert into prov_producto (id_producto,id_proveedor) values(3,5);
insert into prov_producto (id_producto,id_proveedor) values(5,1);
insert into prov_producto (id_producto,id_proveedor) values(7,2);
insert into prov_producto (id_producto,id_proveedor) values(1,4);
insert into prov_producto (id_producto,id_proveedor) values(9,5);
insert into prov_producto (id_producto,id_proveedor) values(6,3);

create table clientes (
id_cliente int primary key not null auto_increment,
nombres varchar(50) ,
apellidos varchar(50),
direccion varchar(50)
);

insert into clientes (nombres,apellidos,direccion) values ("julio", "palma", "el roble 333");
insert into clientes (nombres,apellidos,direccion) values ("alexis", "sanchez", "el pino 222");
insert into clientes (nombres,apellidos,direccion) values ("María", "García", "La Calle 123");
insert into clientes (nombres,apellidos,direccion) values ("Pedro", "López", "Avenida Principal 456");
insert into clientes (nombres,apellidos,direccion) values ("Ana", "Martínez", "Calle Secundaria 789");


-- Cuál es la categoría de productos que más se repite.
SELECT p.id_categoria AS id, pr.nombre_corporativo, COUNT(p.id_categoria) AS total
FROM telovendosprint.productos p
JOIN telovendosprint.proveedores pr ON p.id_categoria = pr.id_categoria
GROUP BY p.id_categoria, pr.nombre_corporativo
ORDER BY total DESC
LIMIT 1;

-- Cuáles son los productos con mayor stock
select * from telovendosprint.productos order by stock desc limit 3;

-- Qué color de producto es más común en nuestra tienda.
select color , count(color) as contador from telovendosprint.productos group by color order by contador desc limit 1;
-- Cual o cuales son los proveedores con menor stock de productos.

select pr.nombre_corporativo, p.stock from telovendosprint.productos p 
JOIN telovendosprint.proveedores pr ON p.id_categoria = pr.id_categoria
order by stock asc limit 1;

-- Cambien la categoría de productos más popular por ‘Electrónica y computación’.
UPDATE telovendosprint.categorias
SET nombre_categoria = (
"Electrónica y computación"
)
WHERE id_categoria = (
    SELECT id_categoria
    FROM (
        SELECT id_categoria, COUNT(id_categoria) AS total, SUM(stock) AS stock
        FROM telovendosprint.productos
        GROUP BY id_categoria
        ORDER BY total DESC
        LIMIT 1
    ) AS subquery
);