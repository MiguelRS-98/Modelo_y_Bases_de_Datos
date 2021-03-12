/*Vistas*/
/* se creo la vista de averiguar cuantos clubs ahi en la base de datos*/
CREATE VIEW Consulta_Numero_total_de_clubes AS
(Select count(idclub)from Club);
/* se creo la vista de buscar los estadios con  capacidad mayor a 80.000 para la gente*/
CREATE VIEW Consulta_Estadios_capacidad AS
(Select nombreEstadio, capacidadestadio from Estadio Where capacidadEstadio<80000);

/*Indice*/

CREATE TABLE DiffIndexTypesDemo
( ID INT IDENTITY (1,1) PRIMARY KEY,
  Name Varchar(50) CONSTRAINT UQ_Name UNIQUE,
  ADDRESS NVARCHAR(MAX)
);
