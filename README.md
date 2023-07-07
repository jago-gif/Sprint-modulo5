# Sprint-modulo5
CONTEXTO
Durante los últimos meses, las compras en línea han tenido un aumento significativo debido al avance
tecnológico, las restricciones sanitarias impuestas y a los cambios en las formas de vida. Esto aplica
para muchos sectores productivos, usando diversos tipos de medios para efectuar una transacción,
como el teléfono, a través de un sitio web e incluso por medio de aplicaciones móviles.
Es importante considerar que todo este cambio en la forma de hacer las cosas no es algo temporal o
que haya sido implementado debido a la contingencia, sino que es un tema que llegó para quedarse, y
que marcará la manera en la cual se adquieren bienes y servicios, en especial para negocios que están
en etapas iniciales de desarrollo.

PROBLEMA
La empresa “Te lo Vendo” es un emprendimiento de un grupo de jóvenes, quienes necesitan vender sus
productos en línea. Actualmente toman sus pedidos vía telefónica y a través del correo electrónico. Al
no existir un sistema centralizado para los pedidos, es complejo tener control oportuno de las entregas,
lo que genera que en algunos casos no se concreten algunos pedidos.
Una opción propuesta es manejar una planilla de cálculo para el registro de los pedidos y realización de
seguimiento. Si bien es factible su uso, a medida que se agreguen nuevos clientes el archivo irá
creciendo, y será complejo mantener la integridad entre los datos, impidiendo relacionarlos
adecuadamente.

SOLUCIÓN
Dados los antecedentes anteriores, es necesario desarrollar una solución tecnológica que cubra los
procesos de negocio descritos y que proponga una mejora en la gestión, el control, la seguridad, y
disponibilidad de información para el negocio y sus clientes. El sistema debe permitir presentar

productos, tomar pedidos y hacer seguimiento de estos y la gestión de clientes. Además, se requiere
que el sistema genere reportes y estadísticas que ayuden a tomar de decisiones y mejorar el
rendimiento de la empresa, considerando la cantidad de clientes, y la demanda de éstos. Es
imprescindible mantener comunicación con los encargados de entregar los pedidos, y darles la
posibilidad de realizar todas sus actividades teniendo conectividad a través de dispositivos móviles.
SPRINT DE ENTREGA:
Se solicita como entregable de este Sprint la implementación final de todos los conceptos vistos
durante el Módulo 2: Bases de datos. Por tanto, se debe poner foco en lo siguiente:
Comentar debidamente el código para que sea comprensible por un tercero.
El script SQL debe utilizarse para crear la estructura de la base de datos, realizar operaciones en la base
de datos (p. ej. rellenarla con datos) y cambiar o eliminar la estructura de la base de datos.
Deben crear un usuario con privilegios para crear, eliminar y modificar tablas, insertar registros.
Nuestra tienda virtual ha crecido mucho estas últimas semanas. No solo aumentó significativamente el
número de colaboradores y usuarios, sino que también los productos disponibles. En este sentido, nos
pidieron que diseñemos una base de datos capaz de satisfacer la creciente demanda de información y
datos.
TeLoVendo recibe productos de diferentes proveedores para comercializarlos. Cada proveedor debe
informarnos el nombre del representante legal, su nombre corporativo, al menos dos teléfonos de
contacto (y el nombre de quien recibe las llamadas), la categoría de sus productos (solo nos pueden
indicar una categoría) y un correo electrónico para enviar la factura. Sabemos que la mayoría de los
proveedores son de productos electrónicos. Agregue 5 proveedores a la base de datos. En general, los
proveedores venden muchos productos.
TeLoVendo tiene actualmente muchos clientes, pero nos piden que ingresemos solo 5 para probar la
nueva base de datos. Cada cliente tiene un nombre, apellido, dirección (solo pueden ingresar una).
TeLoVendo tiene diferentes productos. Ingrese 10 productos y su respectivo stock. Cada producto tiene
información sobre su precio, su categoría, proveedor y color. Los productos pueden tener muchos
proveedores.
Como un entregable, nos piden que diseñemos un diagrama entidad relación sólo con la información
que tenemos. En caso de tener nuevas ideas respecto a futura información requerida y nuevas
entidades, solo nos piden que la indiquemos en un archivo .docx.
A partir del diagrama, debemos construir un script que cree tablas de acuerdo a las entidades e ingrese
datos.
Luego debemos realizar consultas SQL que indiquen:

- Cuál es la categoría de productos que más se repite.
- Cuáles son los productos con mayor stock
- Qué color de producto es más común en nuestra tienda.
- Cual o cuales son los proveedores con menor stock de productos.
Por último:
- Cambien la categoría de productos más popular por ‘Electrónica y computación’.
![Image text](https://github.com/jago-gif/Sprint-modulo5/blob/main/Capture.PNG)


