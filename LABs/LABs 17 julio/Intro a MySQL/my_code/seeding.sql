
USE concesionario;

insert into coches(coche_id, fabricante, modelo, anyo, color)
values ('0', 'Volkswagen','Tiguan', '2019','Blue'),
('1', 'Peugeot','Rifter', '2019', 'Red'),
('2', 'Ford','Fusion', '2018', 'White'),
('3', 'Toyota','RAV4', '2018', 'Silver'),
('4', 'Volvo', 'V60', '2019', 'Gray'),
('5', 'Volvo','V60 Cross Country', '2019', 'Gray');


insert into clientes(cliente_id, nombre, apellido, telefono, email, direccion, ciudad, provincia, pais, codigo_postal)
values ('10001', 'Pablo',' Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chope', 'Madrid', 'Madrid', 'Spain', '28045'),
('20001', 'Abraham',' Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('30001', 'Napoleon',' Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');


insert into vendedores (vendedor_id, nombre, apellido,nombre_tienda)
values ('00001', 'Petey ', 'Cruiser', 'T1'),
('10002', 'Anna', ' Sthesia', 'T1'),
('10003', 'Paul', ' Molive', 'T2'),
('10004', 'Gail', ' Forcewind', 'T1'),
('10005', 'Paige', ' Turner', 'T2'),
('10006', 'Bob ', 'Frapples', 'T1'),
('10007', 'Walter', ' Melon', 'T1'),
('10008', 'Shonda ', 'Leer', 'T2');

insert into facturas (factura_id, fecha, coche_id, cliente_id, vendedor_id)
values ('852399038', '2018-08-22',	'4','10001','10003'),
('731166526', '2018-12-31', '1', '20001', '10004'),
('271135104', '2019-01-22', '2','30001','10007');



