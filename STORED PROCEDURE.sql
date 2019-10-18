GO 
USE TECres
/*PARA FABRI*/
GO
CREATE PROCEDURE PropiedadesCliente(
@Cedula INT
)As
BEGIN TRY
SELECT *
FROM PROPIEDAD
WHERE PROPIEDAD.Cedula_Cliente=@Cedula;
END TRY
BEGIN CATCH
	SELECT ERROR_PROCEDURE() AS ErrorProcedimiento,ERROR_MESSAGE() AS TipoError
	ROLLBACK TRANSACTION
END CATCH;

GO
CREATE PROCEDURE Provincias
As BEGIN TRY
SELECT DISTINCT UBICACION.Provincia
FROM UBICACION
END TRY
BEGIN CATCH
	SELECT ERROR_PROCEDURE() AS ErrorProcedimiento,ERROR_MESSAGE() AS TipoError
	ROLLBACK TRANSACTION
END CATCH;

GO
CREATE PROCEDURE CantonesPorProvincia(
@Provin VARCHAR(50)
)
As BEGIN TRY
SELECT DISTINCT UBICACION.Canton
FROM UBICACION
WHERE Provincia=@Provin
END TRY
BEGIN CATCH
	SELECT ERROR_PROCEDURE() AS ErrorProcedimiento,ERROR_MESSAGE() AS TipoError
	ROLLBACK TRANSACTION
END CATCH;

GO
CREATE PROCEDURE DistritosPorCanton(
@Provin VARCHAR(50),
@Cant VARCHAR(50)
)
AS BEGIN TRY
SELECT UBICACION.Distrito 
FROM UBICACION
WHERE Provincia=@Provin and Canton=@Cant
END TRY
BEGIN CATCH
	SELECT ERROR_PROCEDURE() AS ErrorProcedimiento,ERROR_MESSAGE() AS TipoError
	ROLLBACK TRANSACTION
END CATCH;


GO
CREATE PROCEDURE PropiedadesBusqueda(
@Cant_Hab INT,
@PrecMin INT,
@PrecMax INT
)
AS BEGIN TRY
SELECT Titulo,ID_Propiedad,Direccion_Exacta,Tamano_Construccion,Tamano_Terreno,Provincia,Canton,Distrito,Tipo_Anuncio
FROM PROPIEDAD AS prop,ANUNCIO AS anu, UBICACION AS ubi
WHERE (prop.Cant_Habitaciones = @Cant_Hab and prop.Precio>@PrecMin and prop.Precio<@PrecMax) and anu.ID_Propiedad= prop.ID and prop.ID_Ubicacion=ubi.ID
ORDER BY Tipo_Anuncio DESC;
END TRY
BEGIN CATCH
	SELECT ERROR_PROCEDURE() AS ErrorProcedimiento,ERROR_MESSAGE() AS TipoError
	ROLLBACK TRANSACTION
END CATCH;

GO
CREATE PROCEDURE PropiedadCompleta(
@ID_Prop INT)
AS BEGIN TRY
SELECT P.Titulo,TP.Tipo_Piso,P.Nombre_Inmueble,U.Provincia,U.Canton,U.Distrito,P.Direccion_Exacta,P.Tamano_Terreno,P.Tamano_Construccion,P.Cant_Banos,P.Cant_Habitaciones,P.Cant_Parqueos,P.Gimnasio,P.Piscina,P.Parqueo_Visitas,P.Niveles,P.Precio,P.ID AS ID_PROP,C.Nombre AS Nombre_Cliente,C.Apellido1 AS Apellido1_Cliente,C.Apellido2 AS Apellido2_Cliente,C.ID AS ID_Cliente,A.ID AS ID_ANU,A.Nombre AS Nombre_ANU,A.Tipo_Anuncio,A.Clasificacion,V.Nombre AS Nombre_Vendedor,V.Apellido1 AS Apellido1_Vendedor,V.Apellido2 AS Apellido2_Vendedor
FROM ANUNCIO AS A LEFT JOIN PROPIEDAD AS P ON A.ID_Propiedad= P.ID
LEFT JOIN TIENE_PISO AS TP ON  P.ID=TP.ID_Propiedad LEFT JOIN UBICACION U ON P.ID_Ubicacion=U.ID 
LEFT JOIN CLIENTE AS C ON P.Cedula_Cliente=C.Cedula LEFT JOIN VENDEDOR AS V ON A.Cedula_Vendedor=V.Cedula
WHERE A.ID=@ID_Prop
END TRY
BEGIN CATCH
	SELECT ERROR_PROCEDURE() AS ErrorProcedimiento,ERROR_MESSAGE() AS TipoError
	ROLLBACK TRANSACTION
END CATCH;

GO
CREATE PROCEDURE AnunciosCliente(
@CedulaCliente INT
)
AS BEGIN TRY
SELECT A.Nombre,A.ID AS ID_ANUN,A.ID_Propiedad,A.Clasificacion,A.Aprobado,A.Tarjeta_Credito,A.Fecha_Inicio,A.Fecha_Fin,V.Nombre,V.Apellido1,V.Apellido2,PM.Nombre AS Nombre_Publico,A.Tipo_Anuncio
FROM ANUNCIO AS A INNER JOIN PROPIEDAD 
ON A.ID_Propiedad = PROPIEDAD.ID and PROPIEDAD.Cedula_Cliente=@CedulaCliente
LEFT JOIN PUBLICO_META AS PM ON PM.ID=A.ID_Publico_Meta
LEFT JOIN VENDEDOR AS V ON V.Cedula=A.Cedula_Vendedor
END TRY
BEGIN CATCH
	SELECT ERROR_PROCEDURE() AS ErrorProcedimiento,ERROR_MESSAGE() AS TipoError
	ROLLBACK TRANSACTION
END CATCH;

GO
CREATE PROCEDURE MensajesCliente(
@CedulaCliente INT
)
AS BEGIN TRY
SELECT C.Nombre,C.Apellido1,C.Apellido1,M.ID,M.Descripcion
FROM MENSAJE AS M INNER JOIN COMPRADOR AS C
ON C.ID=M.ID_Comprador and M.Cedula_Cliente = @CedulaCLiente
END TRY
BEGIN CATCH
	SELECT ERROR_PROCEDURE() AS ErrorProcedimiento,ERROR_MESSAGE() AS TipoError
	ROLLBACK TRANSACTION
END CATCH;

GO
CREATE PROCEDURE CompradorDatos(
@ID_Comprador INT
)AS BEGIN TRY
SELECT C.Nombre,C.Apellido1,C.Apellido2,C.ID,C.Genero,C.Fecha_Nacimiento,C.Ingresos_Mes,U.Provincia,U.Canton,U.Distrito
FROM COMPRADOR AS C LEFT JOIN UBICACION AS U
ON C.ID_Ubicacion=U.ID
WHERE C.ID=@ID_Comprador
END TRY
BEGIN CATCH
	SELECT ERROR_PROCEDURE() AS ErrorProcedimiento,ERROR_MESSAGE() AS TipoError
	ROLLBACK TRANSACTION
END CATCH;

/*PARA ROGER*/
GO
CREATE PROCEDURE AnuncioEstadistica(
@ID_Anu int)
AS BEGIN TRY
SELECT A.Visitas, A.Tipo_Anuncio,PM.Nombre AS NombrePM,PM.Edad_Max,PM.Edad_Min,PM.Ingresos,PM.Genero,U.Provincia,U.Canton,U.Distrito,A.Clasificacion AS Finalidad,A.Fecha_Inicio,A.Fecha_Fin
FROM ANUNCIO AS A LEFT JOIN PUBLICO_META AS PM ON A.ID_Publico_Meta= PM.ID 
LEFT JOIN UBICACION AS U ON PM.ID_Ubicacion=U.ID 
LEFT JOIN PROPIEDAD AS P ON P.ID=A.ID_Propiedad 
WHERE A.ID=@ID_Anu
SELECT C.Nombre AS NombreComprador,M.Descripcion AS Mensajes
FROM ANUNCIO AS A LEFT JOIN PROPIEDAD AS P ON P.ID= A.ID_Propiedad
LEFT JOIN MENSAJE AS M ON M.Cedula_Cliente=P.Cedula_Cliente
LEFT JOIN COMPRADOR AS C ON C.ID= M.ID_Comprador
WHERE A.ID=@ID_Anu
END TRY
BEGIN CATCH
	SELECT ERROR_PROCEDURE() AS ErrorProcedimiento,ERROR_MESSAGE() AS TipoError
	ROLLBACK TRANSACTION
END CATCH;

GO
CREATE PROCEDURE AnunciosPropiedad(
@ID_Prop int)
AS BEGIN TRY
SELECT A.Nombre, A.Fecha_Inicio,A.Fecha_Fin,A.Tipo_Anuncio
FROM ANUNCIO AS A  INNER JOIN PROPIEDAD AS P ON A.ID_Propiedad = P.ID
WHERE P.ID=@ID_Prop
END TRY
BEGIN CATCH
	SELECT ERROR_PROCEDURE() AS ErrorProcedimiento,ERROR_MESSAGE() AS TipoError
	ROLLBACK TRANSACTION
END CATCH;

GO
CREATE PROCEDURE AnuncioSinEstadisticas(
@ID_Anu INT
)
AS BEGIN TRY
SELECT A.Tipo_Anuncio,PM.Nombre AS NombrePublico, PM.Edad_Max,PM.Edad_Min,PM.Genero,PM.Ingresos,U.Provincia,U.Canton,U.Distrito,A.Clasificacion AS Finalidad, A.Fecha_Inicio,A.Fecha_Fin
FROM ANUNCIO AS A LEFT JOIN PUBLICO_META AS PM ON A.ID_Publico_Meta= PM.ID 
LEFT JOIN UBICACION AS U ON U.ID=PM.ID_Ubicacion
WHERE A.ID=@ID_Anu
SELECT *
FROM VENDEDOR
END TRY
BEGIN CATCH
	SELECT ERROR_PROCEDURE() AS ErrorProcedimiento,ERROR_MESSAGE() AS TipoError
	ROLLBACK TRANSACTION
END CATCH;

GO
CREATE PROCEDURE SP_Insertar_Comprador(
@pNombre VARCHAR(30),
@pApellido1 VARCHAR(30),
@pApellido2 VARCHAR(30),
@pGenero VARCHAR(30),
@pFecha_Nacimiento DATETIME,
@pIngresos_Mes INT,
@pUsuario VARCHAR(30),
@pContrasena VARCHAR(30),
@pID_Ubicacion INT,
@pOcupacion VARCHAR(30)
)
AS BEGIN TRY
INSERT INTO COMPRADOR(Nombre,Apellido1,Apellido2,Genero,Fecha_Nacimiento,Ingresos_Mes,Usuario,Contrasena,ID_Ubicacion)
VALUES(@pNombre,@pApellido1,@pApellido2,@pGenero,@pFecha_Nacimiento,@pIngresos_Mes,@pUsuario,@pContrasena,@pID_Ubicacion)

INSERT INTO TIENE_OCUPACION(ID_Comprador,Ocupacion)
VALUES(SCOPE_IDENTITY(),@pOcupacion)
END TRY
BEGIN CATCH
	SELECT ERROR_PROCEDURE() AS ErrorProcedimiento,ERROR_MESSAGE() AS TipoError
	ROLLBACK TRANSACTION
END CATCH;

GO
CREATE PROCEDURE SP_Insertar_Propiedad(
@pPrecio INT ,
@pDireccion_Exacta VARCHAR(150) ,
@pTitulo VARCHAR(30),
@pParqueo_Visitas BIT ,
@pNiveles INT,
@pPiscina BIT,
@pGimnasio BIT,
@pTamano_Terreno INT,
@pTamano_Construccion INT,
@pCant_Habitaciones INT,
@pCant_Banos INT,
@pCant_Parqueos INT,
@pDescripcion VARCHAR(350),
@pFoto_Principal VARCHAR(100),
@pID_Ubicacion INT,
@pNombre_Inmueble VARCHAR(50),
@pCedula_Cliente INT,
@pNombrePiso VARCHAR(30)
)
AS 
BEGIN TRY
INSERT INTO PROPIEDAD(Precio,Direccion_Exacta,Titulo,Parqueo_Visitas,Niveles,Piscina,Gimnasio,Tamano_Terreno ,Tamano_Construccion,Cant_Habitaciones,
Cant_Banos,Cant_Parqueos,Descripcion,Foto_Principal,ID_Ubicacion,Nombre_Inmueble,Cedula_Cliente) VALUES (@pPrecio,@pDireccion_Exacta,@pTitulo,@pParqueo_Visitas,
@pNiveles,@pPiscina,@pGimnasio,@pTamano_Terreno,@pTamano_Construccion,@pCant_Habitaciones,@pCant_Banos,@pCant_Parqueos,@pDescripcion,@pFoto_Principal,@pID_Ubicacion,
@pNombre_Inmueble,@pCedula_Cliente)
INSERT INTO TIENE_PISO(ID_Propiedad,Tipo_Piso)
VALUES(SCOPE_IDENTITY(),@pNombrePiso)
END TRY
BEGIN CATCH
	SELECT ERROR_PROCEDURE() AS ErrorProcedimiento,ERROR_MESSAGE() AS TipoError
	ROLLBACK TRANSACTION
END CATCH;

GO
CREATE PROCEDURE ReportesVencidos(
@FechaHoy DATETIME
)As
BEGIN TRY
SELECT C.Nombre AS NombreCliente, P.Titulo, V.Nombre AS NombreVendedor,A.Fecha_Fin
FROM CLIENTE AS C LEFT JOIN PROPIEDAD AS P ON C.Cedula=P.Cedula_Cliente
LEFT JOIN ANUNCIO AS A ON A.ID_Propiedad=P.ID LEFT JOIN VENDEDOR AS V ON V.Cedula=A.Cedula_Vendedor
WHERE A.Fecha_Fin<@FechaHoy
END TRY
BEGIN CATCH
	SELECT ERROR_PROCEDURE() AS ErrorProcedimiento,ERROR_MESSAGE() AS TipoError
	ROLLBACK TRANSACTION
END CATCH;

GO
CREATE PROCEDURE ReportesFacturas(
@FechaIni DATETIME,
@FechaFin DATETIME
)As
BEGIN TRY
SELECT C.Nombre,C.Apellido1,P.Titulo,P.Descripcion,F.Monto
FROM ANUNCIO AS A LEFT JOIN PROPIEDAD AS P ON A.ID_Propiedad=P.ID LEFT JOIN FACTURA AS F ON F.ID = A.ID_Factura
LEFT JOIN CLIENTE AS C ON C.Cedula=P.Cedula_Cliente
WHERE A.Fecha_Inicio>=@FechaIni AND A.Fecha_Fin<=@FechaFin
END TRY
BEGIN CATCH
	SELECT ERROR_PROCEDURE() AS ErrorProcedimiento,ERROR_MESSAGE() AS TipoError
	ROLLBACK TRANSACTION
END CATCH;
