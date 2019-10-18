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
('Propietario','Due�o de las propiedades'),
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
('San Jose','Escaz�','Escaz�'),
('San Jose','Escaz�','San Antonio'),
('San Jose','Escaz�','San Rafael'),
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
('San Jose','Tarraz�','San Marcos'),
('San Jose','Tarraz�','San Lorenzo'),
('San Jose','Tarraz�','San Carlos'),
('San Jose','Aserr�','Aserr�'),
('San Jose','Aserr�','Tarbaca'),
('San Jose','Aserr�','Vuelta De Jorco'),
('San Jose','Aserr�','San Gabriel'),
('San Jose','Aserr�','Legua'),
('San Jose','Aserr�','Monterrey'),
('San Jose','Aserr�','Salitrillos'),
('San Jose','Mora','Col�n'),
('San Jose','Mora','Guayabo'),
('San Jose','Mora','Tabarcia'),
('San Jose','Mora','Piedras Negras'),
('San Jose','Mora','Picagres'),
('San Jose','Mora','Jaris'),
('San Jose','Goicoechea','Guadalupe'),
('San Jose','Goicoechea','San Francisco'),
('San Jose','Goicoechea','Calle Blancos'),
('San Jose','Goicoechea','Mata De Platano'),
('San Jose','Goicoechea','Ip�s'),
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
('San Jose','Alajuelita','Concepci�n'),
('San Jose','Alajuelita','San Felipe'),
('San Jose','V�zquez De Coronado','San Isidro'),
('San Jose','V�zquez De Coronado','San Rafael'),
('San Jose','V�zquez De Coronado','Dulce Nombre De Jesus'),
('San Jose','V�zquez De Coronado','Patalillo'),
('San Jose','V�zquez De Coronado','Cascajal'),
('San Jose','Acosta','San Ignacio'),
('San Jose','Acosta','Guaitil'),
('San Jose','Acosta','Palmichal'),
('San Jose','Acosta','Cangrejal'),
('San Jose','Acosta','Sabanillas'),
('San Jose','Tib�s','San Juan'),
('San Jose','Tib�s','Cinco Esquinas'),
('San Jose','Tib�s','Anselmo Llorente'),
('San Jose','Tib�s','Leon Xiii'),
('San Jose','Tib�s','Colima'),
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
('San Jose','Dota','Santa Mar�a'),
('San Jose','Dota','Jardin'),
('San Jose','Dota','Copey'),
('San Jose','Curridabat','Curridabat'),
('San Jose','Curridabat','Granadilla'),
('San Jose','Curridabat','Sanchez'),
('San Jose','Curridabat','Tirrases'),
('San Jose','P�rez Zeled�n','San Isidro De El General'),
('San Jose','P�rez Zeled�n','El General'),
('San Jose','P�rez Zeled�n','Daniel Flores'),
('San Jose','P�rez Zeled�n','Rivas'),
('San Jose','P�rez Zeled�n','San Pedro'),
('San Jose','P�rez Zeled�n','Platanares'),
('San Jose','P�rez Zeled�n','Pejibaye'),
('San Jose','P�rez Zeled�n','Cajon'),
('San Jose','P�rez Zeled�n','Baru'),
('San Jose','P�rez Zeled�n','Rio Nuevo'),
('San Jose','P�rez Zeled�n','P�ramo'),
('San Jose','Le�n Cort�s Castro','San Pablo'),
('San Jose','Le�n Cort�s Castro','San Andres'),
('San Jose','Le�n Cort�s Castro','Llano Bonito'),
('San Jose','Le�n Cort�s Castro','San Isidro'),
('San Jose','Le�n Cort�s Castro','Santa Cruz'),
('San Jose','Le�n Cort�s Castro','San Antonio')

INSERT INTO UBICACION (Provincia,Canton,Distrito)
VALUES('Alajuela','Central','Alajuela'),
('Alajuela','Central','San Jos�'),
('Alajuela','Central','Carrizal'),
('Alajuela','Central','San Antonio'),
('Alajuela','Central','Gu�cima'),
('Alajuela','Central','San Isidro'),
('Alajuela','Central','Sabanilla'),
('Alajuela','Central','San Rafael'),
('Alajuela','Central','Rio Segundo'),
('Alajuela','Central','Desamparados'),
('Alajuela','Central','Turrucares'),
('Alajuela','Central','Tambor'),
('Alajuela','Central','Garita'),
('Alajuela','Central','Sarapiqu�'),
('Alajuela','San Ram�n','San Ram�n'),
('Alajuela','San Ram�n','Santiago'),
('Alajuela','San Ram�n','San Juan'),
('Alajuela','San Ram�n','Piedades Norte'),
('Alajuela','San Ram�n','Piedades Sur'),
('Alajuela','San Ram�n','San Rafael'),
('Alajuela','San Ram�n','San Isidro'),
('Alajuela','San Ram�n','Angeles'),
('Alajuela','San Ram�n','Alfaro'),
('Alajuela','San Ram�n','Volio'),
('Alajuela','San Ram�n','Concepci�n'),
('Alajuela','San Ram�n','Zapotal'),
('Alajuela','San Ram�n','Pe�as Blancas'),
('Alajuela','Grecia','Grecia'),
('Alajuela','Grecia','San Isidro'),
('Alajuela','Grecia','San Jos�'),
('Alajuela','Grecia','San Roque'),
('Alajuela','Grecia','Tacares'),
('Alajuela','Grecia','Rio Cuarto'),
('Alajuela','Grecia','Puente De Piedra'),
('Alajuela','Grecia','Bolivar'),
('Alajuela','San Mateo','San Mateo'),
('Alajuela','San Mateo','Desmonte'),
('Alajuela','San Mateo','Jes�s Mar�a'),
('Alajuela','San Mateo','Labrador'),
('Alajuela','Atenas','Atenas'),
('Alajuela','Atenas','Jes�s'),
('Alajuela','Atenas','Mercedes'),
('Alajuela','Atenas','San Isidro'),
('Alajuela','Atenas','Concepci�n'),
('Alajuela','Atenas','San Jos�'),
('Alajuela','Atenas','Santa Eulalia'),
('Alajuela','Atenas','Escobal'),
('Alajuela','Naranjo','Naranjo'),
('Alajuela','Naranjo','San Juan'),
('Alajuela','Naranjo','San Miguel'),
('Alajuela','Naranjo','Palmitos'),
('Alajuela','Naranjo','El Rosario'),
('Alajuela','Naranjo','San Jos�'),
('Alajuela','Naranjo','Cirr� Sur'),
('Alajuela','Naranjo','San Jer�nimo'),
('Alajuela','Palmares','Palmares'),
('Alajuela','Palmares','Zaragoza'),
('Alajuela','Palmares','Buenos Aires'),
('Alajuela','Palmares','Santiago'),
('Alajuela','Palmares','Candelaria'),
('Alajuela','Palmares','Esquipulas'),
('Alajuela','Palmares','La Granja'),
('Alajuela','Po�s','San Pedro'),
('Alajuela','Po�s','San Juan'),
('Alajuela','Po�s','San Rafael'),
('Alajuela','Po�s','Carrillos'),
('Alajuela','Po�s','Sabana Redonda'),
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
('Alajuela','Valverde Vega','Sarch� Norte'),
('Alajuela','Valverde Vega','Sarch� Sur'),
('Alajuela','Valverde Vega','Toro Amarillo'),
('Alajuela','Valverde Vega','San Pedro'),
('Alajuela','Valverde Vega','Rodriguez'),
('Alajuela','Upala','Upala'),
('Alajuela','Upala','Aguas Claras'),
('Alajuela','Upala','San Jos� o Pizote'),
('Alajuela','Upala','Bijagua'),
('Alajuela','Upala','Delicias'),
('Alajuela','Upala','Dos Rios'),
('Alajuela','Upala','Yolillal'),
('Alajuela','Upala','Canalete'),
('Alajuela','Los Chiles','Los Chiles'),
('Alajuela','Los Chiles','Ca�o Negro'),
('Alajuela','Los Chiles','El Amparo'),
('Alajuela','Los Chiles','San Jorge'),
('Alajuela','Guatuso','San Rafael'),
('Alajuela','Guatuso','Buenavista'),
('Alajuela','Guatuso','Cote'),
('Alajuela','Guatuso','Katira'),
('Alajuela','R�o Cuarto','R�o Cuarto')


INSERT INTO UBICACION (Provincia,Canton,Distrito)
VALUES('Cartago','Central','Oriental'),
('Cartago','Central','Occidental'),
('Cartago','Central','Carmen'),
('Cartago','Central','San Nicol�s'),
('Cartago','Central','Aguacaliente o San Francisco'),
('Cartago','Central','Guadalupe o Arenilla'),
('Cartago','Central','Corralillo'),
('Cartago','Central','Tierra Blanca'),
('Cartago','Central','Dulce Nombre'),
('Cartago','Central','Llano Grande'),
('Cartago','Central','Quebradilla'),
('Cartago','Para�so','Paraiso'),
('Cartago','Para�so','Santiago'),
('Cartago','Para�so','Orosi'),
('Cartago','Para�so','Cach�'),
('Cartago','Para�so','Llanos de Santa Luc�a'),
('Cartago','La Uni�n','Tres Rios'),
('Cartago','La Uni�n','San Diego'),
('Cartago','La Uni�n','San Juan'),
('Cartago','La Uni�n','San Rafael'),
('Cartago','La Uni�n','Concepci�n'),
('Cartago','La Uni�n','Dulce Nombre'),
('Cartago','La Uni�n','San Ram�n'),
('Cartago','La Uni�n','Rio Azul'),
('Cartago','Jim�nez','Juan Vi�as'),
('Cartago','Jim�nez','Tucurrique'),
('Cartago','Jim�nez','Pejibaye'),
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
('Cartago','Turrialba','Chirrip�'),
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
('Heredia','Barva','Santa Luc�a'),
('Heredia','Barva','San Jos� de la Monta�a'),
('Heredia','Santo Domingo','Santo Domingo'),
('Heredia','Santo Domingo','San Vicente'),
('Heredia','Santo Domingo','San Miguel'),
('Heredia','Santo Domingo','Paracito'),
('Heredia','Santo Domingo','Santo Tom�s'),
('Heredia','Santo Domingo','Santa Rosa'),
('Heredia','Santo Domingo','Tures'),
('Heredia','Santo Domingo','Para'),
('Heredia','Santa Barbara','Santa B�rbara'),
('Heredia','Santa Barbara','San Pedro'),
('Heredia','Santa Barbara','San Juan'),
('Heredia','Santa Barbara','Jes�s'),
('Heredia','Santa Barbara','Santo Domingo'),
('Heredia','Santa Barbara','Puraba'),
('Heredia','San Rafael','San Rafael'),
('Heredia','San Rafael','San Josecito'),
('Heredia','San Rafael','Santiago'),
('Heredia','San Rafael','Los �ngeles'),
('Heredia','San Rafael','Concepci�n'),
('Heredia','San Isidro','San Isidro'),
('Heredia','San Isidro','San Jos�'),
('Heredia','San Isidro','Concepci�n'),
('Heredia','San Isidro','San Francisco'),
('Heredia','Bel�n','San Antonio'),
('Heredia','Bel�n','La Ribera'),
('Heredia','Bel�n','La Asuncion'),
('Heredia','Flores','San Joaqu�n'),
('Heredia','Flores','Barrantes'),
('Heredia','Flores','Llorente'),
('Heredia','San Pablo','San Pablo'),
('Heredia','San Pablo','Rincon De Sabanilla'),
('Heredia','Sarapiqu�','Puerto Viejo'),
('Heredia','Sarapiqu�','La Virgen'),
('Heredia','Sarapiqu�','Las Horquetas'),
('Heredia','Sarapiqu�','Llanuras Del Gaspar'),
('Heredia','Sarapiqu�','Cure�a')

INSERT INTO UBICACION (Provincia,Canton,Distrito)
VALUES('Guanacaste','Liberia','Liberia'),
('Guanacaste','Liberia','Nacascolo'),
('Guanacaste','Liberia','Ca�as Dulces'),
('Guanacaste','Liberia','Mayorga'),
('Guanacaste','Liberia','Curubande'),
('Guanacaste','Nicoya','Nicoya'),
('Guanacaste','Nicoya','Mansi�n'),
('Guanacaste','Nicoya','San Antonio'),
('Guanacaste','Nicoya','Quebrada Honda'),
('Guanacaste','Nicoya','S�mara'),
('Guanacaste','Nicoya','Nosara'),
('Guanacaste','Nicoya','Bel�n De Nosarita'),
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
('Guanacaste','Ca�as','Ca�as'),
('Guanacaste','Ca�as','Palmira'),
('Guanacaste','Ca�as','San Miguel'),
('Guanacaste','Ca�as','Bebedero'),
('Guanacaste','Ca�as','Porozal'),
('Guanacaste','Abangares','Las Juntas'),
('Guanacaste','Abangares','Sierra'),
('Guanacaste','Abangares','San Juan'),
('Guanacaste','Abangares','Colorado'),
('Guanacaste','Tilar�n','Tilar�n'),
('Guanacaste','Tilar�n','Quebrada Grande'),
('Guanacaste','Tilar�n','Tronadora'),
('Guanacaste','Tilar�n','Santa Rosa'),
('Guanacaste','Tilar�n','L�bano'),
('Guanacaste','Tilar�n','Tierras Morenas'),
('Guanacaste','Tilar�n','Arenal'),
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
('Puntarenas','Central','C�bano'),
('Puntarenas','Central','Chacarita'),
('Puntarenas','Central','Chira'),
('Puntarenas','Central','Acapulco'),
('Puntarenas','Central','El Roble'),
('Puntarenas','Central','Arancibia'),
('Puntarenas','Esparza','Esp�ritu Santo'),
('Puntarenas','Esparza','San Juan Grande'),
('Puntarenas','Esparza','Macacona'),
('Puntarenas','Esparza','San Rafael'),
('Puntarenas','Esparza','San Jer�nimo'),
('Puntarenas','Buenos Aires','Buenos Aires'),
('Puntarenas','Buenos Aires','Volc�n'),
('Puntarenas','Buenos Aires','Potrero Grande'),
('Puntarenas','Buenos Aires','Boruca'),
('Puntarenas','Buenos Aires','Pilas'),
('Puntarenas','Buenos Aires','Colinas'),
('Puntarenas','Buenos Aires','Changuena'),
('Puntarenas','Buenos Aires','Biolley'),
('Puntarenas','Buenos Aires','Brunka'),
('Puntarenas','Montes De Oro','Miramar'),
('Puntarenas','Montes De Oro','La Uni�n'),
('Puntarenas','Montes De Oro','San Isidro'),
('Puntarenas','Osa','Puerto Cort�s'),
('Puntarenas','Osa','Palmar'),
('Puntarenas','Osa','Sierpe'),
('Puntarenas','Osa','Bah�a Ballena'),
('Puntarenas','Osa','Piedras Blancas'),
('Puntarenas','Osa','Bah�a Drake'),
('Puntarenas','Quepos','Quepos'),
('Puntarenas','Quepos','Savegre'),
('Puntarenas','Quepos','Naranjito'),
('Puntarenas','Golfito','Golfito'),
('Puntarenas','Golfito','Puerto Jim�nez'),
('Puntarenas','Golfito','Guaycara'),
('Puntarenas','Golfito','Pav�n'),
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
('Puntarenas','Garabito','Jac�'),
('Puntarenas','Garabito','T�rcoles')

INSERT INTO UBICACION (Provincia,Canton,Distrito)
VALUES('Limon','Central','Lim�n'),
('Limon','Central','Valle La Estrella'),
('Limon','Central','Rio Blanco'),
('Limon','Central','Matama'),
('Limon','Pococ�','Guapiles'),
('Limon','Pococ�','Jim�nez'),
('Limon','Pococ�','Rita'),
('Limon','Pococ�','Roxana'),
('Limon','Pococ�','Cariari'),
('Limon','Pococ�','Colorado'),
('Limon','Pococ�','La Colonia'),
('Limon','Siquirres','Siquirres'),
('Limon','Siquirres','Pacuarito'),
('Limon','Siquirres','Florida'),
('Limon','Siquirres','Germania'),
('Limon','Siquirres','El Cairo'),
('Limon','Siquirres','Alegr�a'),
('Limon','Talamanca','Bratsi'),
('Limon','Talamanca','Sixaola'),
('Limon','Talamanca','Cahuita'),
('Limon','Talamanca','Telire'),
('Limon','Matina','Matina'),
('Limon','Matina','Bat�n'),
('Limon','Matina','Carrandi'),
('Limon','Gu�cimo','Gu�cimo'),
('Limon','Gu�cimo','Mercedes'),
('Limon','Gu�cimo','Pocora'),
('Limon','Gu�cimo','Rio Jim�nez'),
('Limon','Gu�cimo','Duacari')

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