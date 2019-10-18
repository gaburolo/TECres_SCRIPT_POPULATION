/*#######################################################*/
/*--------######&&&&&& POPULACION &&&&&&#######----------*/
/*#######################################################*/

GO
USE TECres
GO


/*DATOS DEFAULT*/
/*1OCUPACION*/
INSERT INTO OCUPACION(Nombre)
VALUES('Agente'),('Constructor'),('Doctor'),('Ingeniero')

/*2PERFIL_CLIENTE*/
INSERT INTO PERFIL_DE_CLIENTE(Nombre,Descripcion)
VALUES('Agente','Vendedor de productos'),
('Constructor','Encargado de construir propiedades'),
('Propietario','Dueño de las propiedades'),
('Anunciante','Encargado de promocionar propiedades')

/*3TIPO_ANUNCIO*/
INSERT INTO TIPO_ANUNCIO (Nombre,Descripcion,Costo)
VALUES('Normal','Su prioridad sera baja',1000),('Destacado','Tendra una prioridad media',2000),('Oro','Tendra una prioridad alta',3000),('Platino','Principal entre los anuncios',4000);

/*4UBICACION*/
INSERT INTO UBICACION (Provincia,Canton,Distrito)
VALUES('San Jose','Central','San Pedro'),
('San Jose','Central','Sabanilla'),
('San Jose','Central','Mercedes'),
('San Jose','Central','San Rafael'),
('San Jose','Escazú','Escazú'),
('San Jose','Escazú','San Antonio'),
('San Jose','Escazú','San Rafael'),
('San Jose','Desamparados','Desamparados'),
('San Jose','Desamparados','San Miguel'),
('San Jose','Desamparados','San Juan De Dios'),
('San Jose','Desamparados','San Rafael Arriba'),
('San Jose','Desamparados','San Rafael Abajo'),
('San Jose','Desamparados','San Antonio'),
('San Jose','Desamparados','Frailes'),
('San Jose','Desamparados','Patarra'),
('San Jose','Desamparados','San Cristobal'),
('San Jose','Desamparados','Rosario'),
('San Jose','Desamparados','Damas'),
('San Jose','Desamparados','Gravilias'),
('San Jose','Desamparados','Los Guido'),
('San Jose','Puriscal','Santiago'),
('San Jose','Puriscal','Mercedes Sur'),
('San Jose','Puriscal','Barbacoas'),
('San Jose','Puriscal','Grifo Alto'),
('San Jose','Puriscal','San Rafael'),
('San Jose','Puriscal','Candelarita'),
('San Jose','Puriscal','Desamparaditos'),
('San Jose','Puriscal','San Antonio'),
('San Jose','Puriscal','Chires'),
('San Jose','Tarrazú','San Marcos'),
('San Jose','Tarrazú','San Lorenzo'),
('San Jose','Tarrazú','San Carlos'),
('San Jose','Aserrí','Aserrí'),
('San Jose','Aserrí','Tarbaca'),
('San Jose','Aserrí','Vuelta De Jorco'),
('San Jose','Aserrí','San Gabriel'),
('San Jose','Aserrí','Legua'),
('San Jose','Aserrí','Monterrey'),
('San Jose','Aserrí','Salitrillos'),
('San Jose','Mora','Colón'),
('San Jose','Mora','Guayabo'),
('San Jose','Mora','Tabarcia'),
('San Jose','Mora','Piedras Negras'),
('San Jose','Mora','Picagres'),
('San Jose','Mora','Jaris'),
('San Jose','Goicoechea','Guadalupe'),
('San Jose','Goicoechea','San Francisco'),
('San Jose','Goicoechea','Calle Blancos'),
('San Jose','Goicoechea','Mata De Platano'),
('San Jose','Goicoechea','Ipís'),
('San Jose','Goicoechea','Rancho Redondo'),
('San Jose','Goicoechea','Purral'),
('San Jose','Santa Ana','Santa Ana'),
('San Jose','Santa Ana','Salitral'),
('San Jose','Santa Ana','Pozos'),
('San Jose','Santa Ana','Uruca'),
('San Jose','Santa Ana','Piedades'),
('San Jose','Santa Ana','Brasil'),
('San Jose','Alajuelita','Alajuelita'),
('San Jose','Alajuelita','San Josecito'),
('San Jose','Alajuelita','San Antonio'),
('San Jose','Alajuelita','Concepción'),
('San Jose','Alajuelita','San Felipe'),
('San Jose','Vázquez De Coronado','San Isidro'),
('San Jose','Vázquez De Coronado','San Rafael'),
('San Jose','Vázquez De Coronado','Dulce Nombre De Jesus'),
('San Jose','Vázquez De Coronado','Patalillo'),
('San Jose','Vázquez De Coronado','Cascajal'),
('San Jose','Acosta','San Ignacio'),
('San Jose','Acosta','Guaitil'),
('San Jose','Acosta','Palmichal'),
('San Jose','Acosta','Cangrejal'),
('San Jose','Acosta','Sabanillas'),
('San Jose','Tibás','San Juan'),
('San Jose','Tibás','Cinco Esquinas'),
('San Jose','Tibás','Anselmo Llorente'),
('San Jose','Tibás','Leon Xiii'),
('San Jose','Tibás','Colima'),
('San Jose','Moravia','San Vicente'),
('San Jose','Moravia','San Jeronimo'),
('San Jose','Moravia','La Trinidad'),
('San Jose','Montes De Oca','San Pedro'),
('San Jose','Montes De Oca','Sabanilla'),
('San Jose','Montes De Oca','Mercedes'),
('San Jose','Montes De Oca','San Rafael'),
('San Jose','Turrubares','San Pablo'),
('San Jose','Turrubares','San Pedro'),
('San Jose','Turrubares','San Juan De Mata'),
('San Jose','Turrubares','San Luis'),
('San Jose','Turrubares','Carara'),
('San Jose','Dota','Santa María'),
('San Jose','Dota','Jardin'),
('San Jose','Dota','Copey'),
('San Jose','Curridabat','Curridabat'),
('San Jose','Curridabat','Granadilla'),
('San Jose','Curridabat','Sanchez'),
('San Jose','Curridabat','Tirrases'),
('San Jose','Pérez Zeledón','San Isidro De El General'),
('San Jose','Pérez Zeledón','El General'),
('San Jose','Pérez Zeledón','Daniel Flores'),
('San Jose','Pérez Zeledón','Rivas'),
('San Jose','Pérez Zeledón','San Pedro'),
('San Jose','Pérez Zeledón','Platanares'),
('San Jose','Pérez Zeledón','Pejibaye'),
('San Jose','Pérez Zeledón','Cajon'),
('San Jose','Pérez Zeledón','Baru'),
('San Jose','Pérez Zeledón','Rio Nuevo'),
('San Jose','Pérez Zeledón','Páramo'),
('San Jose','León Cortés Castro','San Pablo'),
('San Jose','León Cortés Castro','San Andres'),
('San Jose','León Cortés Castro','Llano Bonito'),
('San Jose','León Cortés Castro','San Isidro'),
('San Jose','León Cortés Castro','Santa Cruz'),
('San Jose','León Cortés Castro','San Antonio')

INSERT INTO UBICACION (Provincia,Canton,Distrito)
VALUES('Alajuela','Central','Alajuela'),
('Alajuela','Central','San José'),
('Alajuela','Central','Carrizal'),
('Alajuela','Central','San Antonio'),
('Alajuela','Central','Guácima'),
('Alajuela','Central','San Isidro'),
('Alajuela','Central','Sabanilla'),
('Alajuela','Central','San Rafael'),
('Alajuela','Central','Rio Segundo'),
('Alajuela','Central','Desamparados'),
('Alajuela','Central','Turrucares'),
('Alajuela','Central','Tambor'),
('Alajuela','Central','Garita'),
('Alajuela','Central','Sarapiquí'),
('Alajuela','San Ramón','San Ramón'),
('Alajuela','San Ramón','Santiago'),
('Alajuela','San Ramón','San Juan'),
('Alajuela','San Ramón','Piedades Norte'),
('Alajuela','San Ramón','Piedades Sur'),
('Alajuela','San Ramón','San Rafael'),
('Alajuela','San Ramón','San Isidro'),
('Alajuela','San Ramón','Angeles'),
('Alajuela','San Ramón','Alfaro'),
('Alajuela','San Ramón','Volio'),
('Alajuela','San Ramón','Concepción'),
('Alajuela','San Ramón','Zapotal'),
('Alajuela','San Ramón','Peñas Blancas'),
('Alajuela','Grecia','Grecia'),
('Alajuela','Grecia','San Isidro'),
('Alajuela','Grecia','San José'),
('Alajuela','Grecia','San Roque'),
('Alajuela','Grecia','Tacares'),
('Alajuela','Grecia','Rio Cuarto'),
('Alajuela','Grecia','Puente De Piedra'),
('Alajuela','Grecia','Bolivar'),
('Alajuela','San Mateo','San Mateo'),
('Alajuela','San Mateo','Desmonte'),
('Alajuela','San Mateo','Jesús María'),
('Alajuela','San Mateo','Labrador'),
('Alajuela','Atenas','Atenas'),
('Alajuela','Atenas','Jesús'),
('Alajuela','Atenas','Mercedes'),
('Alajuela','Atenas','San Isidro'),
('Alajuela','Atenas','Concepción'),
('Alajuela','Atenas','San José'),
('Alajuela','Atenas','Santa Eulalia'),
('Alajuela','Atenas','Escobal'),
('Alajuela','Naranjo','Naranjo'),
('Alajuela','Naranjo','San Juan'),
('Alajuela','Naranjo','San Miguel'),
('Alajuela','Naranjo','Palmitos'),
('Alajuela','Naranjo','El Rosario'),
('Alajuela','Naranjo','San José'),
('Alajuela','Naranjo','Cirrí Sur'),
('Alajuela','Naranjo','San Jerónimo'),
('Alajuela','Palmares','Palmares'),
('Alajuela','Palmares','Zaragoza'),
('Alajuela','Palmares','Buenos Aires'),
('Alajuela','Palmares','Santiago'),
('Alajuela','Palmares','Candelaria'),
('Alajuela','Palmares','Esquipulas'),
('Alajuela','Palmares','La Granja'),
('Alajuela','Poás','San Pedro'),
('Alajuela','Poás','San Juan'),
('Alajuela','Poás','San Rafael'),
('Alajuela','Poás','Carrillos'),
('Alajuela','Poás','Sabana Redonda'),
('Alajuela','Orotina','Orotina'),
('Alajuela','Orotina','El Mastate'),
('Alajuela','Orotina','Hacienda Vieja'),
('Alajuela','Orotina','Coyolar'),
('Alajuela','Orotina','La Ceiba'),
('Alajuela','San Carlos','Quesada'),
('Alajuela','San Carlos','Florencia'),
('Alajuela','San Carlos','Buenavista'),
('Alajuela','San Carlos','Aguas Zarcas'),
('Alajuela','San Carlos','Venecia'),
('Alajuela','San Carlos','Pital'),
('Alajuela','San Carlos','La Fortuna'),
('Alajuela','San Carlos','La Tigra'),
('Alajuela','San Carlos','La Palmera'),
('Alajuela','San Carlos','1Venado'),
('Alajuela','San Carlos','Cutris'),
('Alajuela','San Carlos','Monterrey'),
('Alajuela','San Carlos','Pocosol'),
('Alajuela','Zarcero','Zarcero'),
('Alajuela','Zarcero','Laguna'),
('Alajuela','Zarcero','Tapesco'),
('Alajuela','Zarcero','Guadalupe'),
('Alajuela','Zarcero','Palmira'),
('Alajuela','Zarcero','Zapote'),
('Alajuela','Zarcero','Brisas'),
('Alajuela','Valverde Vega','Sarchí Norte'),
('Alajuela','Valverde Vega','Sarchí Sur'),
('Alajuela','Valverde Vega','Toro Amarillo'),
('Alajuela','Valverde Vega','San Pedro'),
('Alajuela','Valverde Vega','Rodriguez'),
('Alajuela','Upala','Upala'),
('Alajuela','Upala','Aguas Claras'),
('Alajuela','Upala','San José o Pizote'),
('Alajuela','Upala','Bijagua'),
('Alajuela','Upala','Delicias'),
('Alajuela','Upala','Dos Rios'),
('Alajuela','Upala','Yolillal'),
('Alajuela','Upala','Canalete'),
('Alajuela','Los Chiles','Los Chiles'),
('Alajuela','Los Chiles','Caño Negro'),
('Alajuela','Los Chiles','El Amparo'),
('Alajuela','Los Chiles','San Jorge'),
('Alajuela','Guatuso','San Rafael'),
('Alajuela','Guatuso','Buenavista'),
('Alajuela','Guatuso','Cote'),
('Alajuela','Guatuso','Katira'),
('Alajuela','Río Cuarto','Río Cuarto')


INSERT INTO UBICACION (Provincia,Canton,Distrito)
VALUES('Cartago','Central','Oriental'),
('Cartago','Central','Occidental'),
('Cartago','Central','Carmen'),
('Cartago','Central','San Nicolás'),
('Cartago','Central','Aguacaliente o San Francisco'),
('Cartago','Central','Guadalupe o Arenilla'),
('Cartago','Central','Corralillo'),
('Cartago','Central','Tierra Blanca'),
('Cartago','Central','Dulce Nombre'),
('Cartago','Central','Llano Grande'),
('Cartago','Central','Quebradilla'),
('Cartago','Paraíso','Paraiso'),
('Cartago','Paraíso','Santiago'),
('Cartago','Paraíso','Orosi'),
('Cartago','Paraíso','Cachí'),
('Cartago','Paraíso','Llanos de Santa Lucía'),
('Cartago','La Unión','Tres Rios'),
('Cartago','La Unión','San Diego'),
('Cartago','La Unión','San Juan'),
('Cartago','La Unión','San Rafael'),
('Cartago','La Unión','Concepción'),
('Cartago','La Unión','Dulce Nombre'),
('Cartago','La Unión','San Ramón'),
('Cartago','La Unión','Rio Azul'),
('Cartago','Jiménez','Juan Viñas'),
('Cartago','Jiménez','Tucurrique'),
('Cartago','Jiménez','Pejibaye'),
('Cartago','Turrialba','Turrialba'),
('Cartago','Turrialba','La Suiza'),
('Cartago','Turrialba','Peralta'),
('Cartago','Turrialba','Santa Cruz'),
('Cartago','Turrialba','Santa Teresita'),
('Cartago','Turrialba','Pavones'),
('Cartago','Turrialba','Tuis'),
('Cartago','Turrialba','Tayutic'),
('Cartago','Turrialba','Santa Rosa'),
('Cartago','Turrialba','Tres Equis'),
('Cartago','Turrialba','La Isabel'),
('Cartago','Turrialba','Chirripó'),
('Cartago','Alvarado','Pacayas'),
('Cartago','Alvarado','Cervantes'),
('Cartago','Alvarado','Capellades'),
('Cartago','Oreamuno','San Rafael'),
('Cartago','Oreamuno','Cot'),
('Cartago','Oreamuno','Potrero Cerrado'),
('Cartago','Oreamuno','Cipreses'),
('Cartago','Oreamuno','Santa Rosa'),
('Cartago','El Guarco','El Tejar'),
('Cartago','El Guarco','San Isidro'),
('Cartago','El Guarco','Tobosi'),
('Cartago','El Guarco','Patio De Agua')

INSERT INTO UBICACION (Provincia,Canton,Distrito)
VALUES('Heredia','Central','Heredia'),
('Heredia','Central','Mercedes'),
('Heredia','Central','San Francisco'),
('Heredia','Central','Ulloa'),
('Heredia','Central','Varablanca'),
('Heredia','Barva','Barva'),
('Heredia','Barva','San Pedro'),
('Heredia','Barva','San Pablo'),
('Heredia','Barva','San Roque'),
('Heredia','Barva','Santa Lucía'),
('Heredia','Barva','San José de la Montaña'),
('Heredia','Santo Domingo','Santo Domingo'),
('Heredia','Santo Domingo','San Vicente'),
('Heredia','Santo Domingo','San Miguel'),
('Heredia','Santo Domingo','Paracito'),
('Heredia','Santo Domingo','Santo Tomás'),
('Heredia','Santo Domingo','Santa Rosa'),
('Heredia','Santo Domingo','Tures'),
('Heredia','Santo Domingo','Para'),
('Heredia','Santa Barbara','Santa Bárbara'),
('Heredia','Santa Barbara','San Pedro'),
('Heredia','Santa Barbara','San Juan'),
('Heredia','Santa Barbara','Jesús'),
('Heredia','Santa Barbara','Santo Domingo'),
('Heredia','Santa Barbara','Puraba'),
('Heredia','San Rafael','San Rafael'),
('Heredia','San Rafael','San Josecito'),
('Heredia','San Rafael','Santiago'),
('Heredia','San Rafael','Los Ángeles'),
('Heredia','San Rafael','Concepción'),
('Heredia','San Isidro','San Isidro'),
('Heredia','San Isidro','San José'),
('Heredia','San Isidro','Concepción'),
('Heredia','San Isidro','San Francisco'),
('Heredia','Belén','San Antonio'),
('Heredia','Belén','La Ribera'),
('Heredia','Belén','La Asuncion'),
('Heredia','Flores','San Joaquín'),
('Heredia','Flores','Barrantes'),
('Heredia','Flores','Llorente'),
('Heredia','San Pablo','San Pablo'),
('Heredia','San Pablo','Rincon De Sabanilla'),
('Heredia','Sarapiquí','Puerto Viejo'),
('Heredia','Sarapiquí','La Virgen'),
('Heredia','Sarapiquí','Las Horquetas'),
('Heredia','Sarapiquí','Llanuras Del Gaspar'),
('Heredia','Sarapiquí','Cureña')

INSERT INTO UBICACION (Provincia,Canton,Distrito)
VALUES('Guanacaste','Liberia','Liberia'),
('Guanacaste','Liberia','Nacascolo'),
('Guanacaste','Liberia','Cañas Dulces'),
('Guanacaste','Liberia','Mayorga'),
('Guanacaste','Liberia','Curubande'),
('Guanacaste','Nicoya','Nicoya'),
('Guanacaste','Nicoya','Mansión'),
('Guanacaste','Nicoya','San Antonio'),
('Guanacaste','Nicoya','Quebrada Honda'),
('Guanacaste','Nicoya','Sámara'),
('Guanacaste','Nicoya','Nosara'),
('Guanacaste','Nicoya','Belén De Nosarita'),
('Guanacaste','Santa Cruz','Santa Cruz'),
('Guanacaste','Santa Cruz','Bolson'),
('Guanacaste','Santa Cruz','Veintisiete de Abril'),
('Guanacaste','Santa Cruz','Tempate'),
('Guanacaste','Santa Cruz','Cartagena'),
('Guanacaste','Santa Cruz','Cuajiniquil'),
('Guanacaste','Santa Cruz','Diria'),
('Guanacaste','Santa Cruz','Cabo Velas'),
('Guanacaste','Santa Cruz','Tamarindo'),
('Guanacaste','Bagaces','Bagaces'),
('Guanacaste','Bagaces','La Fortuna'),
('Guanacaste','Bagaces','Mogote'),
('Guanacaste','Bagaces','Rio Naranjo'),
('Guanacaste','Carrillo','Filadelfia'),
('Guanacaste','Carrillo','Palmira'),
('Guanacaste','Carrillo','Sardinal'),
('Guanacaste','Carrillo','Belen'),
('Guanacaste','Cañas','Cañas'),
('Guanacaste','Cañas','Palmira'),
('Guanacaste','Cañas','San Miguel'),
('Guanacaste','Cañas','Bebedero'),
('Guanacaste','Cañas','Porozal'),
('Guanacaste','Abangares','Las Juntas'),
('Guanacaste','Abangares','Sierra'),
('Guanacaste','Abangares','San Juan'),
('Guanacaste','Abangares','Colorado'),
('Guanacaste','Tilarán','Tilarán'),
('Guanacaste','Tilarán','Quebrada Grande'),
('Guanacaste','Tilarán','Tronadora'),
('Guanacaste','Tilarán','Santa Rosa'),
('Guanacaste','Tilarán','Líbano'),
('Guanacaste','Tilarán','Tierras Morenas'),
('Guanacaste','Tilarán','Arenal'),
('Guanacaste','Nandayure','Carmona'),
('Guanacaste','Nandayure','Santa Rita'),
('Guanacaste','Nandayure','Zapotal'),
('Guanacaste','Nandayure','San Pablo'),
('Guanacaste','Nandayure','Porvenir'),
('Guanacaste','Nandayure','Bejuco'),
('Guanacaste','La Cruz','La Cruz'),
('Guanacaste','La Cruz','Santa Cecilia'),
('Guanacaste','La Cruz','La Garita'),
('Guanacaste','La Cruz','Santa Elena'),
('Guanacaste','Hojancha','Hojancha'),
('Guanacaste','Hojancha','Monte Romo'),
('Guanacaste','Hojancha','Puerto Carrillo'),
('Guanacaste','Hojancha','Huacas')
INSERT INTO UBICACION (Provincia,Canton,Distrito)
VALUES('Puntarenas','Central','Puntarenas'),
('Puntarenas','Central','Pitahaya'),
('Puntarenas','Central','Chomes'),
('Puntarenas','Central','Lepanto'),
('Puntarenas','Central','Paquera'),
('Puntarenas','Central','Manzanillo'),
('Puntarenas','Central','Guacimal'),
('Puntarenas','Central','Barranca'),
('Puntarenas','Central','Monte Verde'),
('Puntarenas','Central','Isla Del Coco'),
('Puntarenas','Central','Cóbano'),
('Puntarenas','Central','Chacarita'),
('Puntarenas','Central','Chira'),
('Puntarenas','Central','Acapulco'),
('Puntarenas','Central','El Roble'),
('Puntarenas','Central','Arancibia'),
('Puntarenas','Esparza','Espíritu Santo'),
('Puntarenas','Esparza','San Juan Grande'),
('Puntarenas','Esparza','Macacona'),
('Puntarenas','Esparza','San Rafael'),
('Puntarenas','Esparza','San Jerónimo'),
('Puntarenas','Buenos Aires','Buenos Aires'),
('Puntarenas','Buenos Aires','Volcán'),
('Puntarenas','Buenos Aires','Potrero Grande'),
('Puntarenas','Buenos Aires','Boruca'),
('Puntarenas','Buenos Aires','Pilas'),
('Puntarenas','Buenos Aires','Colinas'),
('Puntarenas','Buenos Aires','Changuena'),
('Puntarenas','Buenos Aires','Biolley'),
('Puntarenas','Buenos Aires','Brunka'),
('Puntarenas','Montes De Oro','Miramar'),
('Puntarenas','Montes De Oro','La Unión'),
('Puntarenas','Montes De Oro','San Isidro'),
('Puntarenas','Osa','Puerto Cortés'),
('Puntarenas','Osa','Palmar'),
('Puntarenas','Osa','Sierpe'),
('Puntarenas','Osa','Bahía Ballena'),
('Puntarenas','Osa','Piedras Blancas'),
('Puntarenas','Osa','Bahía Drake'),
('Puntarenas','Quepos','Quepos'),
('Puntarenas','Quepos','Savegre'),
('Puntarenas','Quepos','Naranjito'),
('Puntarenas','Golfito','Golfito'),
('Puntarenas','Golfito','Puerto Jiménez'),
('Puntarenas','Golfito','Guaycara'),
('Puntarenas','Golfito','Pavón'),
('Puntarenas','Coto Brus','San Vito'),
('Puntarenas','Coto Brus','Sabalito'),
('Puntarenas','Coto Brus','Aguabuena'),
('Puntarenas','Coto Brus','Limoncito'),
('Puntarenas','Coto Brus','Pittier'),
('Puntarenas','Parrita','Parrita'),
('Puntarenas','Corredores','Corredor'),
('Puntarenas','Corredores','La Cuesta'),
('Puntarenas','Corredores','Canoas'),
('Puntarenas','Corredores','Laurel'),
('Puntarenas','Garabito','Jacó'),
('Puntarenas','Garabito','Tárcoles')

INSERT INTO UBICACION (Provincia,Canton,Distrito)
VALUES('Limon','Central','Limón'),
('Limon','Central','Valle La Estrella'),
('Limon','Central','Rio Blanco'),
('Limon','Central','Matama'),
('Limon','Pococí','Guapiles'),
('Limon','Pococí','Jiménez'),
('Limon','Pococí','Rita'),
('Limon','Pococí','Roxana'),
('Limon','Pococí','Cariari'),
('Limon','Pococí','Colorado'),
('Limon','Pococí','La Colonia'),
('Limon','Siquirres','Siquirres'),
('Limon','Siquirres','Pacuarito'),
('Limon','Siquirres','Florida'),
('Limon','Siquirres','Germania'),
('Limon','Siquirres','El Cairo'),
('Limon','Siquirres','Alegría'),
('Limon','Talamanca','Bratsi'),
('Limon','Talamanca','Sixaola'),
('Limon','Talamanca','Cahuita'),
('Limon','Talamanca','Telire'),
('Limon','Matina','Matina'),
('Limon','Matina','Batán'),
('Limon','Matina','Carrandi'),
('Limon','Guácimo','Guácimo'),
('Limon','Guácimo','Mercedes'),
('Limon','Guácimo','Pocora'),
('Limon','Guácimo','Rio Jiménez'),
('Limon','Guácimo','Duacari')

/*5TIPO_INMUEBLE*/
INSERT INTO TIPO_INMUEBLE(Nombre)
VALUES('Lote'),('Casa'),('Apartamento')

/*6TIPO_PISO*/
INSERT INTO TIPO_PISO(Nombre)
VALUES('Concreto lujado'), ('Ceramica'),('Porcelanato')


/*7ADMINISTRADOR*/
INSERT INTO ADMINISTRADOR(Cedula,Nombre,Apellido1,Apellido2,Fecha_Nacimiento,Fecha_Ingreso_TECres,Usuario,Contrasena)
VALUES(123456789,'Martin','Calderon','Blanco','1998-03-22','2019-10-05','martinrolo','martinadmin');

/*8FACTURA*/
INSERT FACTURA(Monto,Fecha)
VALUES(1000,'2019-05-10 20:55:14')


/*9CLIENTE*/
INSERT INTO CLIENTE (Cedula,Nombre,Apellido1,Apellido2,Nacionalidad,Correo,Usuario,Contrasena,Perfil_Cliente)
VALUES(122222223,'Marco','Madrigal','Mora','Costarricense','mMm@gmail.com','mMmTec','123456','Agente'),
(160903200,'Vernon','Heath','Cross','Bulgaria','elit.erat@necante.org','lobortis','Phasellus','Propietario'),
(169109175,'Chaim','England','Battle','Poland','tristique.nequ@mus.net','turpis','lacus','Anunciante')


/*10VENDEDOR*/
INSERT INTO VENDEDOR (Cedula,Nombre,Apellido1,Apellido2,Fecha_Ingreso,Cedula_Admin)
VALUES(987654321,'Gabriel','Brenes','Vega','2019-05-10',123456789),
(312321311,'Juan','Hong','Perez','2019-07-10 00:00:00.000',123456789)


/*11COMPRADOR*/
INSERT INTO COMPRADOR (Nombre,Apellido1,Apellido2,Genero,Fecha_Nacimiento,Ingresos_Mes,Usuario,Contrasena,ID_Ubicacion)
VALUES('Pedro','Sola','Reus','Hombre','1960-04-04',400000,'pedrosola2','1234sola',1),
('Sebastian','Torres','Frederick','Hombre','1976-04-30 00:00:00.000',700000,'consequat','Pellentesque',6),
('Whitney','Horton','Leblanc','Mujer','1989-11-21 00:00:00.000',1000000,'auctor','tempor',131)

/*12TIENE_OCUPACION*/
INSERT INTO TIENE_OCUPACION(ID_Comprador,Ocupacion)
VALUES(1,'Agente')

/*13Propiedad*/
INSERT INTO PROPIEDAD(Precio,Direccion_Exacta,Titulo,Parqueo_Visitas,Niveles,Piscina,Gimnasio,Tamano_Terreno,Tamano_Construccion,Cant_Habitaciones,Cant_Banos,Cant_Parqueos,Descripcion,Foto_Principal,ID_Ubicacion,Nombre_Inmueble,Cedula_Cliente)
VALUES(10000000,'Norte de la basilica','Casa Grande',2,2,2,2,350,500,8,4,2,'Casa de 2 plantas buen estado','C/Server_Image/propiedad_2.png',1,'Casa',122222223),
(10000000,'WALMART 100mts','Casa Azul',1,2,1,1,350,500,10,4,2,'Casa de 2 plantas buen estado','C/Server_Image/propiedad_1.png',200,'Casa',169109175),
(200000000,'Detras del estadio','MANSION',1,3,1,1,600,800,20,10,5,'Masion gigante con 3 plantas comoda','C/Server_Image/masion.png',421,'Casa',160903200),
(200000,'Centro del distrito','Lote grande',0,1,0,0,400,0,0,0,0,'Lote grande para construcion','C/Server_Image/lote.png',253,'Lote',169109175)

/*14TIENE_PISO*/
INSERT INTO TIENE_PISO(ID_Propiedad,Tipo_Piso)
VALUES(1,'Ceramica')

/*15FOTO*/
INSERT FOTO (Dir_URL,ID_Propiedad)
VALUES('C/Server_Image/propiedad_2.png',1),
('C/Server_Image/propiedad_3.png',1),
('C/Server_Image/propiedad_4.png',2)

/*16ANUNCIO*/
INSERT INTO ANUNCIO(Nombre,Clasificacion,Aprobado,Tarjeta_Credito,Visitas,Fecha_Inicio,Fecha_Fin,ID_Factura,ID_Propiedad,Cedula_Vendedor,Tipo_Anuncio,ID_Publico_Meta,Cedula_Admin)
VALUES('Casa de 2 plantas, grande y comoda','Venta',0,1232213332,NULL,'2019-10-05 13:4:42','2019-11-05 13:04:42',1,1,987654321,'Normal',1,123456789),
('Casa de 2 plantas, grande y comoda','Venta',1,1232213332,NULL,'2019-10-05 13:04:42.000','2019-11-05 13:04:42.000',1,2,312321311,'Normal',1,123456789),
('Casa de 4 plantas','Venta',1,1232213332,NULL,'2019-10-05 15:04:42.000','2019-11-05 15:04:42.000',1,2,987654321,'Platino',1,123456789),
('BICI','Venta',1,1232213332,NULL,'2019-10-05 15:04:42.000','2019-11-05 15:04:42.000',1,1,987654321,'Oro',1,123456789)

/*17Publico_META*/
INSERT INTO PUBLICO_META(Nombre,Genero,Ingresos,Edad_Min,Edad_Max,ID_Ubicacion)
VALUES('Todos','Todos',100000,18,100,1);

/*18MENSAJE*/
INSERT MENSAJE(Descripcion,ID_Comprador,Cedula_Cliente)
VALUES('Hola, me interesa la casa',1,122222223),
('Interesado',1,160903200),
('QUIERO ESTA CASA',2,122222223),
('Buenas tarde',1,169109175),
('Hi, Buy your house',1,169109175),
('::)',1,169109175)



/*EN ESTE ESPACIO SE AGREGA CUALQUIER TIPO DE CONSULTA O PROCEDIMIENTO SOBRE LA TABLA TIENE_OCUPACION (INSERTS, DELETES,FOREIGN KEY,ETC)*/

/*--------------------------------------*/

--#######################################################
--------######&&&&&& QUERYS SIMPLES DE VERIFICACION DE POPULACION &&&&&&#######----------
--#######################################################

Select *
FROM ADMINISTRADOR

Select *
FROM ANUNCIO

Select *
FROM CLIENTE

Select *
FROM COMPRADOR

Select *
FROM FACTURA

Select *
FROM FOTO

Select *
FROM MENSAJE

SELECT *
FROM OCUPACION

Select *
FROM PERFIL_DE_CLIENTE

Select *
FROM PROPIEDAD

Select *
FROM PUBLICO_META

Select *
FROM TIENE_OCUPACION

Select *
FROM TIENE_PISO

Select *
FROM TIPO_ANUNCIO

Select *
FROM TIPO_INMUEBLE

Select *
FROM TIPO_PISO

Select *
FROM UBICACION

Select *
FROM VENDEDOR