/*#######################################################*/
/*--------######&&&&&& POPULACION &&&&&&#######----------*/
/*#######################################################*/

GO
USE TECres
GO


/*DATOS DEFAULT*/
/*1OCUPACION*/
INSERT INTO OCUPACION VALUES('Agente')
INSERT INTO OCUPACION VALUES('Constructor')
INSERT INTO OCUPACION VALUES('Doctor')
INSERT INTO OCUPACION VALUES('Ingeniero')

/*2PERFIL_CLIENTE*/
INSERT INTO PERFIL_DE_CLIENTE VALUES('Agente','Vendedor de productos')
INSERT INTO PERFIL_DE_CLIENTE VALUES('Constructor','Encargado de construir propiedades')
INSERT INTO PERFIL_DE_CLIENTE VALUES('Propietario','Dueño de las propiedades')
INSERT INTO PERFIL_DE_CLIENTE VALUES('Anunciante','Encargado de promocionar propiedades')

/*3TIPO_ANUNCIO*/
INSERT INTO TIPO_ANUNCIO VALUES('Normal','Su prioridad sera baja',1000),('Descatado','Tendra una prioridad media',2000),('Oro','Tendra una prioridad alta',3000),('Platino','Principal entre los anuncios',4000);

/*4UBICACION*/
INSERT INTO UBICACION VALUES('San Jose','Central','San Pedro'),
('San Jose','Central','Sabanilla'),('San Jose','Central','Mercedes'),
('San Jose','Central','San Rafael'),
('San Jose','Escazú','Escazú'),
('San Jose','Escazú','San Antonio'),
('San Jose','Escazú','San Rafael'),
('San Jose','Desamparados','Desamparados'),
('San Jose','Desamparados','San Miguel');

/*5TIPO_INMUEBLE*/
INSERT INTO TIPO_INMUEBLE VALUES('Lote'),('Casa'),('Apartamento')

/*6TIPO_PISO*/
INSERT INTO TIPO_PISO VALUES('Concreto lujado'), ('Ceramica'),('Porcelanato')


/*7ADMINISTRADOR*/
INSERT INTO ADMINISTRADOR VALUES(123456789,'Martin','Calderon','Blanco','1998-03-22','2019-10-05','martinrolo','martinadmin');

/*8FACTURA*/
INSERT FACTURA VALUES(1000,'2019-05-10 20:55:14')


/*9CLIENTE*/
INSERT INTO CLIENTE VALUES(122222223,'Marco','Rivera','Meneses','Costarricense','mriveramTecgmail.com','mriveramTec','123456','Agente')

/*10VENDEDOR*/
INSERT INTO VENDEDOR VALUES(987654321,'Gabriel','Brenes','Vega','2019-05-10',123456789)


/*11COMPRADOR*/
INSERT INTO COMPRADOR VALUES('Pedro','Sola','Reus','Hombre','1960-04-04',400000,'pedrosola2','1234sola',1)

/*12TIENE_OCUPACION*/
INSERT INTO TIENE_OCUPACION VALUES(1,'Agente')

/*13Propiedad*/
INSERT INTO PROPIEDAD VALUES(10000000,'Norte de la basilica','Casa Grande',2,2,2,2,350,500,8,4,2,'Casa de 2 plantas buen estado','C/Server_Image/propiedad_2.png',1,'Casa',122222223)


/*14TIENE_PISO*/
INSERT INTO TIENE_PISO VALUES(1,'Ceramica')

/*15FOTO*/
INSERT FOTO VALUES('C/Server_Image/propiedad_2.png',1);

/*16ANUNCIO*/
INSERT INTO ANUNCIO VALUES('Casa de 2 plantas, grande y comoda','Venta',0,1232213332,NULL,'2019-10-05 13:4:42','2019-11-05 13:04:42',1,1,987654321,'Normal',1,123456789);


/*17Publico_META*/
INSERT INTO PUBLICO_META VALUES('Todos',100000,18,100,1);

/*18MENSAJE*/
INSERT MENSAJE VALUES('Hola, me interesa la casa',1,122222223)



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
