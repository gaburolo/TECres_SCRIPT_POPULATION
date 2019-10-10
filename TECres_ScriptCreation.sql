CREATE DATABASE TECres /*Se crea la base de datos*/
GO
USE TECres
GO

/*Se crea la tabla OCUPACION*/
CREATE TABLE OCUPACION(
ID INT IDENTITY(1,1) NOT NULL,
Nombre VARCHAR(30) PRIMARY KEY NOT NULL,
)
/*EN ESTE ESPACIO SE AGREGA CUALQUIER TIPO DE CONSULTA O PROCEDIMIENTO SOBRE LA TABLA OCUPACION (INSERTS, DELETES,FOREIGN KEY,ETC)*/
/*--------------------------------------*/

/*Se crea la tabla PERFIL_DE_CLIENTE*/
CREATE TABLE PERFIL_DE_CLIENTE(
ID INT IDENTITY(1,1) NOT NULL,
Nombre VARCHAR(50) PRIMARY KEY NOT NULL,
Descripcion VARCHAR(50) NOT NULL,
)
/*EN ESTE ESPACIO SE AGREGA CUALQUIER TIPO DE CONSULTA O PROCEDIMIENTO SOBRE LA TABLA PERFIL_DE_CLIENTE (INSERTS, DELETES,FOREIGN KEY,ETC)*/

/*--------------------------------------*/

/*Se crea la tabla TIPO_ANUNCIO*/
CREATE TABLE TIPO_ANUNCIO(
ID INT IDENTITY(1,1) NOT NULL,
Nombre VARCHAR(30) PRIMARY KEY NOT NULL,
Descripcion VARCHAR(100) NOT NULL,
Costo INT NOT NULL
)
/*EN ESTE ESPACIO SE AGREGA CUALQUIER TIPO DE CONSULTA O PROCEDIMIENTO SOBRE LA TABLA TIPO_ANUNCIO (INSERTS, DELETES,FOREIGN KEY,ETC)*/
/*-----------------------------------*/

/*Se crea la tabla UBICACION*/
CREATE TABLE UBICACION(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Provincia VARCHAR(50) NOT NULL,
Canton VARCHAR(50) NOT NULL,
Distrito VARCHAR(50) NOT NULL
)
/*EN ESTE ESPACIO SE AGREGA CUALQUIER TIPO DE CONSULTA O PROCEDIMIENTO SOBRE LA TABLA UBICACION (INSERTS, DELETES,FOREIGN KEY,ETC)*/

/*--------------------------------------*/

/*Se crea la tabla TIPO_INMUEBLE*/
CREATE TABLE TIPO_INMUEBLE(
ID INT IDENTITY(1,1) NOT NULL,
Nombre VARCHAR(50) PRIMARY KEY NOT NULL,
)
/*EN ESTE ESPACIO SE AGREGA CUALQUIER TIPO DE CONSULTA O PROCEDIMIENTO SOBRE LA TABLA TIPO_INMUEBLE (INSERTS, DELETES,FOREIGN KEY,ETC)*/

/*--------------------------------------*/

/*Se crea la tabla TIPO_PISO*/
CREATE TABLE TIPO_PISO(
ID INT IDENTITY(1,1) NOT NULL,
Nombre VARCHAR(30) PRIMARY KEY NOT NULL,
)
/*EN ESTE ESPACIO SE AGREGA CUALQUIER TIPO DE CONSULTA O PROCEDIMIENTO SOBRE LA TABLA TIPO_PISO (INSERTS, DELETES,FOREIGN KEY,ETC)*/

/*--------------------------------------*/






/*Se crea la tabla ADMINISTRADOR*/
CREATE TABLE ADMINISTRADOR(
ID INT IDENTITY(1,1) NOT NULL,
Cedula INT PRIMARY KEY NOT NULL,
Nombre VARCHAR(30) NOT NULL,
Apellido1 VARCHAR(30) NOT NULL,
Apellido2 VARCHAR(30) NOT NULL,
Fecha_Nacimiento DATETIME NOT NULL,
Fecha_Ingreso_TECres DATETIME NOT NULL,
Usuario VARCHAR(30) NOT NULL,
Contrasena VARCHAR(20) NOT NULL
)
/*EN ESTE ESPACIO SE AGREGA CUALQUIER TIPO DE CONSULTA O PROCEDIMIENTO SOBRE LA TABLA ADMINISTRADOR (INSERTS, DELETES,FOREIGN KEY,ETC)*/

/*--------------------------------------*/

/*Se crea la tabla FACTURA*/
CREATE TABLE FACTURA(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Monto INT NOT NULL,
Fecha DATETIME NOT NULL
)
/*EN ESTE ESPACIO SE AGREGA CUALQUIER TIPO DE CONSULTA O PROCEDIMIENTO SOBRE LA TABLA FACTURA (INSERTS, DELETES,FOREIGN KEY,ETC)*/

/*--------------------------------------*/

/*Se crea la tabla	CLIENTE*/
CREATE TABLE CLIENTE(
ID INT IDENTITY(1,1) NOT NULL,
Cedula INT PRIMARY KEY NOT NULL,
Nombre VARCHAR(30) NOT NULL,
Apellido1 VARCHAR(30) NOT NULL,
Apellido2 VARCHAR(30) NOT NULL,
Nacionalidad VARCHAR(30) NOT NULL,
Correo VARCHAR(30) NOT NULL,
Usuario VARCHAR(30) NOT NULL, 
Contrasena VARCHAR(30) NOT NULL,
Perfil_Cliente VARCHAR(50) NOT NULL,
FOREIGN KEY (Perfil_Cliente) REFERENCES PERFIL_DE_CLIENTE(Nombre)
)
/*EN ESTE ESPACIO SE AGREGA CUALQUIER TIPO DE CONSULTA O PROCEDIMIENTO SOBRE LA TABLA CLIENTE (INSERTS, DELETES,FOREIGN KEY,ETC)*/

/*--------------------------------------*/

/*Se crea la tabla PROPIEDAD*/
CREATE TABLE PROPIEDAD(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Precio INT NOT NULL,
Direccion_Exacta VARCHAR(150) NOT NULL,
Titulo VARCHAR(30) NOT NULL,
Parqueo_Visitas BIT NOT NULL,
Niveles INT NOT NULL,
Piscina BIT NOT NULL,
Gimnasio BIT NOT NULL,
Tamano_Terreno INT NOT NULL,
Tamano_Construccion INT NOT NULL,
Cant_Habitaciones INT NOT NULL,
Cant_Banos INT NOT NULL,
Cant_Parqueos INT NOT NULL,
Descripcion VARCHAR(350) NOT NULL,
Foto_Principal VARCHAR(100) NOT NULL,
ID_Ubicacion INT NOT NULL,
Nombre_Inmueble VARCHAR(50) NOT NULL,
Cedula_Cliente INT NOT NULL
FOREIGN KEY (ID_Ubicacion) REFERENCES UBICACION(ID),
FOREIGN KEY (Nombre_Inmueble) REFERENCES TIPO_INMUEBLE(Nombre),
FOREIGN KEY (Cedula_Cliente) REFERENCES CLIENTE(Cedula)
)
/*EN ESTE ESPACIO SE AGREGA CUALQUIER TIPO DE CONSULTA O PROCEDIMIENTO SOBRE LA TABLA PROPIEDAD (INSERTS, DELETES,FOREIGN KEY,ETC)*/

/*--------------------------------------*/

/*Se crea la tabla FOTO*/
CREATE TABLE FOTO(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Dir_URL VARCHAR(100) NOT NULL,
ID_Propiedad INT NOT NULL
FOREIGN KEY (ID_Propiedad) REFERENCES PROPIEDAD(ID)
)
/*EN ESTE ESPACIO SE AGREGA CUALQUIER TIPO DE CONSULTA O PROCEDIMIENTO SOBRE LA TABLA FOTO (INSERTS, DELETES,FOREIGN KEY,ETC)*/

/*--------------------------------------*/

/*Se crea la tabla COMPRADOR*/
CREATE TABLE COMPRADOR(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Nombre VARCHAR(30) NOT NULL,
Apellido1 VARCHAR(30) NOT NULL,
Apellido2 VARCHAR(30) NOT NULL,
Genero VARCHAR(30) NOT NULL,
Fecha_Nacimiento DATETIME NOT NULL,
Ingresos_Mes INT NOT NULL,
Usuario VARCHAR(30) NOT NULL,
Contrasena VARCHAR(30) NOT NULL,
ID_Ubicacion INT NOT NULL,
FOREIGN KEY (ID_Ubicacion) REFERENCES UBICACION(ID)
)
/*EN ESTE ESPACIO SE AGREGA CUALQUIER TIPO DE CONSULTA O PROCEDIMIENTO SOBRE LA TABLA COMPRADOR (INSERTS, DELETES,FOREIGN KEY,ETC)*/

/*--------------------------------------*/

/*Se crea la tabla MENSAJE*/
CREATE TABLE MENSAJE(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Descripcion VARCHAR(100) NOT NULL,
ID_Comprador INT NOT NULL,
Cedula_Cliente INT NOT NULL,
FOREIGN KEY (ID_Comprador) REFERENCES COMPRADOR(ID),
FOREIGN KEY (Cedula_Cliente) REFERENCES CLIENTE(Cedula)
)
/*EN ESTE ESPACIO SE AGREGA CUALQUIER TIPO DE CONSULTA O PROCEDIMIENTO SOBRE LA TABLA MENSAJE (INSERTS, DELETES,FOREIGN KEY,ETC)*/

/*--------------------------------------*/

/*Se crea la tabla VENDEDOR*/
CREATE TABLE VENDEDOR(
ID INT IDENTITY(1,1) NOT NULL,
Cedula INT PRIMARY KEY NOT NULL,
Nombre VARCHAR(30) NOT NULL,
Apellido1 VARCHAR(30) NOT NULL,
Apellido2 VARCHAR(30) NOT NULL,
Fecha_Ingreso DATETIME NOT NULL,
Cedula_Admin INT NOT NULL,
FOREIGN KEY (Cedula_Admin) REFERENCES ADMINISTRADOR(Cedula)

)
/*EN ESTE ESPACIO SE AGREGA CUALQUIER TIPO DE CONSULTA O PROCEDIMIENTO SOBRE LA TABLA VENDEDOR (INSERTS, DELETES,FOREIGN KEY,ETC)*/

/*--------------------------------------*/

/*Se crea la tabla PUBLICO_META*/
CREATE TABLE PUBLICO_META(
ID INT IDENTITY(1,1) NOT NULL,
Nombre VARCHAR(30) PRIMARY KEY NOT NULL,
Genero VARCHAR(30) NOT NULL,
Ingresos INT NOT NULL,
Edad_Min INT NOT NULL,
Edad_Max INT NOT NULL,
ID_Ubicacion INT NOT NULL,
FOREIGN KEY (ID_Ubicacion) REFERENCES UBICACION(ID)
)
/*EN ESTE ESPACIO SE AGREGA CUALQUIER TIPO DE CONSULTA O PROCEDIMIENTO SOBRE LA TABLA PUBLICO_META (INSERTS, DELETES,FOREIGN KEY,ETC)*/

/*--------------------------------------*/


/*Se crea la tabla ANUNCIO*/
CREATE TABLE ANUNCIO(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Nombre VARCHAR(50) NOT NULL,
Clasificacion VARCHAR(15) NOT NULL,
Aprobado BIT DEFAULT 0,
Tarjeta_Credito INT NOT NULL,
Visitas INT DEFAULT 0,
Fecha_Inicio DATETIME NOT NULL,
Fecha_Fin DATETIME NOT NULL,
ID_Factura INT DEFAULT 1000,
ID_Propiedad INT NOT NULL,
Cedula_Vendedor INT NOT NULL,
Tipo_Anuncio VARCHAR(30) NOT NULL,
ID_Publico_Meta INT NOT NULL,
Cedula_Admin INT DEFAULT 1234,
FOREIGN KEY (ID_Factura) REFERENCES FACTURA(ID),
FOREIGN KEY (ID_Propiedad) REFERENCES PROPIEDAD(ID),
FOREIGN KEY (Cedula_Vendedor) REFERENCES VENDEDOR(Cedula),
FOREIGN KEY (Tipo_Anuncio) REFERENCES TIPO_ANUNCIO(Nombre),
FOREIGN KEY (Cedula_Admin) REFERENCES ADMINISTRADOR(Cedula)
)
/*EN ESTE ESPACIO SE AGREGA CUALQUIER TIPO DE CONSULTA O PROCEDIMIENTO SOBRE LA TABLA ANUNCIO (INSERTS, DELETES,FOREIGN KEY,ETC)*/

/*--------------------------------------*/


/*Se crea la tabla TIENE_PISO*/
CREATE TABLE TIENE_PISO(
ID INT IDENTITY(1,1) NOT NULL,
ID_Propiedad INT NOT NULL,
Tipo_Piso VARCHAR(30) NOT NULL,
PRIMARY KEY (ID_Propiedad, Tipo_piso),
FOREIGN KEY (ID_Propiedad) REFERENCES PROPIEDAD(ID),
FOREIGN KEY (Tipo_Piso) REFERENCES TIPO_PISO(Nombre)
)
/*EN ESTE ESPACIO SE AGREGA CUALQUIER TIPO DE CONSULTA O PROCEDIMIENTO SOBRE LA TABLA TIENE_PISO (INSERTS, DELETES,FOREIGN KEY,ETC)*/

/*--------------------------------------*/

/*Se crea la tabla TIENE_OCUPACION*/
CREATE TABLE TIENE_OCUPACION(
ID INT IDENTITY(1,1) NOT NULL,
ID_Comprador INT NOT NULL,
Ocupacion VARCHAR(30) NOT NULL,
PRIMARY KEY (ID_Comprador, Ocupacion),
FOREIGN KEY (ID_Comprador) REFERENCES COMPRADOR(ID),
FOREIGN KEY (Ocupacion) REFERENCES OCUPACION(Nombre)
)


/*

--#######################################################
--------######&&&&&& STORE PROCEDURES &&&&&&#######----------
--#######################################################

--$$$$$$$$$$ STORE PROCEDURES PARA MOSTRAR TODAS LA ENTIDADES EXISTENTES DE CADA TIPO $$$$$$$$

--Se crea el SP para obtener todas las entidades de tipo ADMINISTRADOR
GO
CREATE PROCEDURE SP_SeleccionaTodos_Administrador
AS 
SELECT * FROM ADMINISTRADOR

--Se crea el SP para obtener todas las entidades de tipo ANUNCIO
GO
CREATE PROCEDURE SP_SeleccionaTodos_Anuncio
AS 
SELECT * FROM ANUNCIO

--Se crea el SP para obtener todas las entidades de tipo CLIENTE
GO
CREATE PROCEDURE SP_SeleccionaTodos_Cliente
AS 
SELECT * FROM CLIENTE

--Se crea el SP para obtener todas las entidades de tipo COMPRADOR
GO
CREATE PROCEDURE SP_SeleccionaTodos_Comprador
AS 
SELECT * FROM COMPRADOR

--Se crea el SP para obtener todas las entidades de tipo FACTURA
GO
CREATE PROCEDURE SP_SeleccionaTodos_Factura
AS 
SELECT * FROM FACTURA

--Se crea el SP para obtener todas las entidades de tipo FOTO
GO
CREATE PROCEDURE SP_SeleccionaTodos_Foto
AS 
SELECT * FROM FOTO

--Se crea el SP para obtener todas las entidades de tipo MENSAJE
GO
CREATE PROCEDURE SP_SeleccionaTodos_Mensaje
AS 
SELECT * FROM MENSAJE

--Se crea el SP para obtener todas las entidades de tipo OCUPACION
GO
CREATE PROCEDURE SP_SeleccionaTodos_Ocupacion
AS 
SELECT * FROM OCUPACION

--Se crea el SP para obtener todas las entidades de tipo PERFIL_DE_CLIENTE
GO
CREATE PROCEDURE SP_SeleccionaTodos_PefilCliente
AS 
SELECT * FROM PERFIL_DE_CLIENTE

--Se crea el SP para obtener todas las entidades de tipo PROPIEDAD
GO
CREATE PROCEDURE SP_SeleccionaTodos_Propiedad
AS 
SELECT * FROM PROPIEDAD

--Se crea el SP para obtener todas las entidades de tipo PUBLICO_META
GO
CREATE PROCEDURE SP_SeleccionaTodos_PublicoMeta
AS 
SELECT * FROM PUBLICO_META

--Se crea el SP para obtener todas las entidades de tipo TIENE_OCUPACION
GO
CREATE PROCEDURE SP_SeleccionaTodos_TieneOcupacion
AS 
SELECT * FROM TIENE_OCUPACION

--Se crea el SP para obtener todas las entidades de tipo TIENE_PISO
GO
CREATE PROCEDURE SP_SeleccionaTodos_TienePiso
AS 
SELECT * FROM TIENE_PISO

--Se crea el SP para obtener todas las entidades de tipo TIPO_ANUNCIO
GO
CREATE PROCEDURE SP_SeleccionaTodos_TipoAnuncio
AS 
SELECT * FROM TIPO_ANUNCIO

--Se crea el SP para obtener todas las entidades de tipo TIPO_INMUEBLE
GO
CREATE PROCEDURE SP_SeleccionaTodos_TipoInmueble
AS 
SELECT * FROM TIPO_INMUEBLE

--Se crea el SP para obtener todas las entidades de tipo TIPO_PISO
GO
CREATE PROCEDURE SP_SeleccionaTodos_TipoPiso
AS 
SELECT * FROM TIPO_PISO

--Se crea el SP para obtener todas las entidades de tipo UBICACION
GO
CREATE PROCEDURE SP_SeleccionaTodos_Ubicacion
AS 
SELECT * FROM UBICACION

--Se crea el SP para obtener todas las entidades de tipo VENDEDOR
GO
CREATE PROCEDURE SP_SeleccionaTodos_Vendedor
AS 
SELECT * FROM VENDEDOR


--$$$$$$$$$$ STORE PROCEDURES PARA MOSTRAR UNA ENTIDAD DE ACUERDO A SU PRIMARY KEY $$$$$$$$

--Se crea el SP para buscar una entidad ADMINISTRADOR de acuerdo a su primary key
GO
CREATE PROCEDURE SP_Selecciona_Administrador
@Cedula INT 
AS 
SELECT * FROM ADMINISTRADOR WHERE ADMINISTRADOR.Cedula = @Cedula

--Se crea el SP para buscar una entidad ANUNCIO de acuerdo a su primary key
GO
CREATE PROCEDURE SP_Selecciona_Anuncio
@ID INT 
AS 
SELECT * FROM ANUNCIO WHERE ANUNCIO.ID = @ID

--Se crea el SP para buscar una entidad CLIENTE de acuerdo a su primary key
GO
CREATE PROCEDURE SP_Selecciona_Cliente
@Cedula INT
AS 
SELECT * FROM CLIENTE WHERE CLIENTE.Cedula=@Cedula

--Se crea el SP para buscar una entidad COMPRADOR de acuerdo a su primary key
GO
CREATE PROCEDURE SP_Selecciona_Comprador
@ID INT
AS 
SELECT * FROM COMPRADOR WHERE COMPRADOR.ID = @ID

--Se crea el SP para buscar una entidad FACTURA de acuerdo a su primary key
GO
CREATE PROCEDURE SP_Selecciona_Factura
@ID INT
AS 
SELECT * FROM FACTURA WHERE FACTURA.ID=@ID

--Se crea el SP para buscar una entidad FOTO de acuerdo a su primary key
GO
CREATE PROCEDURE SP_Selecciona_FOTO
@ID INT
AS 
SELECT * FROM FOTO WHERE FOTO.ID=@ID

--Se crea el SP para buscar una entidad MENSAJE de acuerdo a su primary key
GO
CREATE PROCEDURE SP_Selecciona_Mensaje
@ID INT
AS 
SELECT * FROM MENSAJE WHERE MENSAJE.ID=@ID

--Se crea el SP para buscar una entidad OCUPACION de acuerdo a su primary key
GO
CREATE PROCEDURE SP_Selecciona_Ocupacion
@Nombre VARCHAR(20)
AS 
SELECT * FROM OCUPACION WHERE OCUPACION.Nombre=@Nombre

--Se crea el SP para buscar una entidad PERFIL_DE_CLIENTE de acuerdo a su primary key
GO
CREATE PROCEDURE SP_Selecciona_PefilCliente
@Nombre VARCHAR(20)
AS 
SELECT * FROM PERFIL_DE_CLIENTE WHERE PERFIL_DE_CLIENTE.Nombre=@Nombre

--Se crea el SP para buscar una entidad PROPIEDAD de acuerdo a su primary key
GO
CREATE PROCEDURE SP_Selecciona_Propiedad
@ID INT
AS 
SELECT * FROM PROPIEDAD WHERE PROPIEDAD.ID=@ID

--Se crea el SP para buscar una entidad PUBLICO_META de acuerdo a su primary key
GO
CREATE PROCEDURE SP_Selecciona_PublicoMeta
@ID INT
AS 
SELECT * FROM PUBLICO_META WHERE PUBLICO_META.ID=@ID


--Se crea el SP para buscar una entidad TIENE_OCUPACION de acuerdo a su primary key
GO
CREATE PROCEDURE SP_Selecciona_TieneOcupacion
@
AS 
SELECT * FROM TIENE_OCUPACION

--Se crea el SP para buscar una entidad TIENE_PISO de acuerdo a su primary key

CREATE PROCEDURE SP_SeleccionaTodos_TienePiso
AS 
SELECT * FROM TIENE_PISO

--Se crea el SP para buscar una entidad TIPO_ANUNCIO de acuerdo a su primary key
GO
CREATE PROCEDURE SP_Selecciona_TipoAnuncio
@Nombre VARCHAR(20)
AS 
SELECT * FROM TIPO_ANUNCIO WHERE TIPO_ANUNCIO.Nombre=@Nombre

--Se crea el SP para buscar una entidad TIPO_INMUEBLE de acuerdo a su primary key
GO
CREATE PROCEDURE SP_Selecciona_TipoInmueble
@Nombre VARCHAR(20)
AS 
SELECT * FROM TIPO_INMUEBLE WHERE TIPO_INMUEBLE.Nombre=@Nombre

--Se crea el SP para buscar una entidad TIPO_PISO de acuerdo a su primary key
GO
CREATE PROCEDURE SP_Selecciona_TipoPiso
@Nombre VARCHAR(20)
AS 
SELECT * FROM TIPO_PISO WHERE TIPO_PISO.Nombre=@Nombre

--Se crea el SP para buscar una entidad UBICACION de acuerdo a su primary key
GO
CREATE PROCEDURE SP_Selecciona_Ubicacion
@ID INT
AS 
SELECT * FROM UBICACION WHERE UBICACION.ID=@ID

--Se crea el SP para buscar una entidad VENDEDOR de acuerdo a su primary key
GO
CREATE PROCEDURE SP_Selecciona_Vendedor
@Cedula INT
AS 
SELECT * FROM VENDEDOR WHERE VENDEDOR.Cedula=@Cedula


--$$$$$$$$$$ STORE PROCEDURES PARA AGREGAR UNA ENTIDAD $$$$$$$$

--Agregar una entidad de tipo ADMINISTRADOR

GO
CREATE PROCEDURE SP_Insertar_Administrador
@pID INT,
@pCedula INT,
@pNombre VARCHAR(20),
@pApellido1 VARCHAR(20),
@pApellido2 VARCHAR(20),
@pFecha_Nacimiento DATETIME,
@pFecha_Ingreso_TECres DATETIME,
@pUsuario VARCHAR(20),
@pContrasena VARCHAR(20)
AS
BEGIN
INSERT INTO ADMINISTRADOR(ID,Nombre,Apellido1,Apellido2,Fecha_Nacimiento,Fecha_Ingreso_TECres,Usuario,
Contrasena) VALUES(@pID,@pNombre,@pApellido1,@pApellido2,@pFecha_Nacimiento,@pFecha_Ingreso_TECres,@pUsuario,
@pContrasena)
END

--Agregar una entidad de tipo PROPIEDAD
GO
CREATE PROCEDURE SP_Insertar_Propiedad
@pID INT,
@pPrecio INT ,
@pDireccion_Exacta VARCHAR(100) ,
@pTitulo VARCHAR(20),
@pParqueo_Visitas BIT ,
@pNiveles INT,
@pPiscina BIT,
@pGimnasio BIT,
@pTamano_Terreno INT,
@pTamano_Construccion INT,
@pCant_Habitaciones INT,
@pCant_Banos INT,
@pCant_Parqueos INT,
@pDescripcion VARCHAR(100),
@pFoto_Principal VARCHAR(100),
@pID_Ubicacion INT,
@pNombre_Inmueble VARCHAR(20),
@pCedula_Cliente INT
AS 
BEGIN
INSERT INTO PROPIEDAD(ID,Precio,Direccion_Exacta,Titulo,Parqueo_Visitas,Niveles,Piscina,Gimnasio,Tamano_Terreno ,Tamano_Construccion,Cant_Habitaciones,
Cant_Banos,Cant_Parqueos,Descripcion,Foto_Principal,ID_Ubicacion,Nombre_Inmueble,Cedula_Cliente) VALUES (@pID,@pPrecio,@pDireccion_Exacta,@pTitulo,@pParqueo_Visitas,
@pNiveles,@pPiscina,@pGimnasio,@pTamano_Terreno,@pTamano_Construccion,@pCant_Habitaciones,@pCant_Banos,@pCant_Parqueos,@pDescripcion,@pFoto_Principal,@pID_Ubicacion,
@pNombre_Inmueble,@pCedula_Cliente)
END

*/