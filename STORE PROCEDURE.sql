GO
CREATE PROCEDURE PropiedadesCliente(
@Cedula INT
)As
BEGIN
SELECT *
FROM PROPIEDAD
WHERE PROPIEDAD.Cedula_Cliente=@Cedula;
END

GO
CREATE PROCEDURE Provincias
As BEGIN
SELECT DISTINCT UBICACION.Provincia
FROM UBICACION
END;

GO
CREATE PROCEDURE CantonesPorProvincia(
@Provin VARCHAR(50)
)
As BEGIN
SELECT DISTINCT UBICACION.Canton
FROM UBICACION
WHERE Provincia=@Provin
END;

GO
CREATE PROCEDURE DistritosPorCanton(
@Provin VARCHAR(50),
@Cant VARCHAR(50)
)
AS BEGIN
SELECT UBICACION.Distrito 
FROM UBICACION
WHERE Provincia=@Provin and Canton=@Cant
END;

GO
CREATE PROCEDURE PropiedadesBusqueda(
@Cant_Hab INT,
@PrecMin INT,
@PrecMax INT
)
AS BEGIN
SELECT Titulo,ID_Propiedad,Direccion_Exacta,Tamano_Construccion,Tamano_Terreno,Provincia,Canton,Distrito,Tipo_Anuncio
FROM PROPIEDAD AS prop,ANUNCIO AS anu, UBICACION AS ubi
WHERE (prop.Cant_Habitaciones = @Cant_Hab and prop.Precio>@PrecMin and prop.Precio<@PrecMax) and anu.ID_Propiedad= prop.ID and prop.ID_Ubicacion=ubi.ID
ORDER BY Tipo_Anuncio DESC;
END;

GO
CREATE PROCEDURE PropiedadCompleta(
@ID_Prop INT)
AS BEGIN
SELECT P.Titulo,TP.Tipo_Piso,P.Nombre_Inmueble,U.Provincia,U.Canton,U.Distrito,P.Direccion_Exacta,P.Tamano_Terreno,P.Tamano_Construccion,P.Cant_Banos,P.Cant_Habitaciones,P.Cant_Parqueos,P.Gimnasio,P.Piscina,P.Parqueo_Visitas,P.Niveles,P.Precio,P.ID AS ID_PROP,C.Nombre AS Nombre_Cliente,C.Apellido1 AS Apellido1_Cliente,C.Apellido2 AS Apellido2_Cliente,C.ID AS ID_Cliente,A.ID AS ID_ANU,A.Nombre AS Nombre_ANU,A.Tipo_Anuncio,A.Clasificacion,V.Nombre AS Nombre_Vendedor,V.Apellido1 AS Apellido1_Vendedor,V.Apellido2 AS Apellido2_Vendedor
FROM ANUNCIO AS A LEFT JOIN PROPIEDAD AS P ON A.ID_Propiedad= P.ID
LEFT JOIN TIENE_PISO AS TP ON  P.ID=TP.ID_Propiedad LEFT JOIN UBICACION U ON P.ID_Ubicacion=U.ID 
LEFT JOIN CLIENTE AS C ON P.Cedula_Cliente=C.Cedula LEFT JOIN VENDEDOR AS V ON A.Cedula_Vendedor=V.Cedula
WHERE A.ID=@ID_Prop
END;

GO
CREATE PROCEDURE AnunciosCliente(
@CedulaCliente INT
)
AS BEGIN
SELECT A.Nombre,A.ID AS ID_ANUN,A.ID_Propiedad,A.Clasificacion,A.Aprobado,A.Tarjeta_Credito,A.Fecha_Inicio,A.Fecha_Fin,V.Nombre,V.Apellido1,V.Apellido2,PM.Nombre AS Nombre_Publico,A.Tipo_Anuncio
FROM ANUNCIO AS A INNER JOIN PROPIEDAD 
ON A.ID_Propiedad = PROPIEDAD.ID and PROPIEDAD.Cedula_Cliente=@CedulaCliente
LEFT JOIN PUBLICO_META AS PM ON PM.ID=A.ID_Publico_Meta
LEFT JOIN VENDEDOR AS V ON V.Cedula=A.Cedula_Vendedor
END;

GO
CREATE PROCEDURE MensajesCliente(
@CedulaCliente INT
)
AS BEGIN 
SELECT C.Nombre,C.Apellido1,C.Apellido1,M.ID,M.Descripcion
FROM MENSAJE AS M INNER JOIN COMPRADOR AS C
ON C.ID=M.ID_Comprador and M.Cedula_Cliente = @CedulaCLiente
END;

GO
CREATE PROCEDURE CompradorDatos(
@ID_Comprador INT
)AS BEGIN
SELECT C.Nombre,C.Apellido1,C.Apellido2,C.ID,C.Genero,C.Fecha_Nacimiento,C.Ingresos_Mes,U.Provincia,U.Canton,U.Distrito
FROM COMPRADOR AS C LEFT JOIN UBICACION AS U
ON C.ID_Ubicacion=U.ID
WHERE C.ID=@ID_Comprador
END;

GO
CREATE TRIGGER No_Borrar_Ubi ON UBICACION FOR DELETE
AS
DECLARE @p int 
SELECT @p=ID FROM deleted

IF (SELECT ID FROM deleted)<=472
BEGIN
 RAISERROR('NO PUEDE ELIMINAR AL PROFESIONAL, ESTÁ SIENDO UTILIZADO.',16,-1)
    ROLLBACK TRANSACTION
END
ELSE
	 DELETE FROM UBICACION
	 WHERE UBICACION.ID=@p