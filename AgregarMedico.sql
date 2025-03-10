USE [TPINT_GRUPO_14_PR3]
GO
/****** Object:  StoredProcedure [dbo].[spAgregarMedico]    Script Date: 24/6/2024 21:19:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spAgregarMedico]
    @Legajo_MED VARCHAR(10),
    @Dni_MED VARCHAR(10),
    @Nombre_MED VARCHAR(20),
    @Apellido_MED VARCHAR(20),
    @Id_Sexo_MED CHAR(1),
    @Id_Nacionalidad_MED VARCHAR(4),
    @Fecha_Nacimiento_MED DATE,
    @Direccion_MED VARCHAR(30),
    @Cod_Localidad_MED VARCHAR(4),
    @Cod_Provincia_MED VARCHAR(4),
    @Correo_Electronico_MED VARCHAR(50),
    @Telefono_MED VARCHAR(15),
    @Id_Especialidad_MED VARCHAR(4),
    @Usuario_MED VARCHAR(10),
    @Tipo_Usuario_MED VARCHAR(15),
    @Estado_MED BIT
AS
BEGIN
    INSERT INTO Medicos (Legajo_MED, Dni_MED, Nombre_MED, Apellido_MED, Id_Sexo_MED, Id_Nacionalidad_MED, 
                         Fecha_Nacimiento_MED, Direccion_MED, Cod_Localidad_MED, Cod_Provincia_MED, 
                         Correo_Electronico_MED, Telefono_MED, Id_Especialidad_MED, Usuario_MED, Tipo_Usuario_MED, Estado_MED)
    VALUES (@Legajo_MED, @Dni_MED, @Nombre_MED, @Apellido_MED, @Id_Sexo_MED, @Id_Nacionalidad_MED, 
            @Fecha_Nacimiento_MED, @Direccion_MED, @Cod_Localidad_MED, @Cod_Provincia_MED, 
            @Correo_Electronico_MED, @Telefono_MED, @Id_Especialidad_MED, @Usuario_MED, @Tipo_Usuario_MED, @Estado_MED);
END