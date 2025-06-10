-- tabla de la practica 
-- Eliminar todas la tablas
drop table if exists volar;
drop table if exists bol;
-- Crear tabla 
Create table Companyia(
    nom varchar(40) not null,
    IATA varchar(6) not null,
    CODE3 varchar(6),
    ICAO varchar(6),
    pais varchar(40) not null
)
Create table Avio(
    num_serie char(30) not null ,
    tipus varchar(10) not null,
    fabricant  varchar(20) not null,
    any_fabricant year
)
Create table Aeroport(
    codi varchar(4) not null,
    pais varchar(40) not null,
    ciutat varchar(40) not null,
    IATA varchar(4) not null,
    nom varchar(50) not null,
    any_construccio fecha
)
Create table Mostrador(
    numero smallint,
    codi_aeroport char
)
Create table Personal(
    num_empleat (6,8),
    nom varhar(50) not null,
    cognom varchar(35) not null,
    passaport varchar(20),
    sou float not null

)
Create table Hostesa(
    num_empleat int
)
Create table Pilot(
    hores_vol hores(4)
)
Create table Passatger(
    passaport varchar (20),
    nom varchar (30 not null),
    adreca vrachar (70),
    telefon varchar (9),
    email varchar (40),
    data_naixament fecha,
    genere varchar(1)
)
Create table Vol(
    Codi varchar(9) not null,
    data fecha not null,
    duarda int not null,
    descripcio varchar(50)
)
