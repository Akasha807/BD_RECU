-- borrat de taules: Primero me cargo los hijo y luego los parents
drop table coche;
drop table persona;
-- Creació de taules 
create table persona(
    dni char(9),
    nom varchar(30)
);
create table coche(
    matricula char(7),
    marca varchar(30),
    model varchar(30),
    dni_propietari char(9)
);
 
-- Claus primàries
alter table persona add constraint pk_persona primary key(dni);
alter table coche add constraint pk_coche primary key(matricula);
 
 
-- Claus foranes
 
alter table coche 
add constraint fk_coche_propietari foreign key(dni_propietari)
    references persona(dni)
    -- on delete cascade;
    -- on delete set null;
    on update cascade;

    
--  Introducció de dades
insert into persona values('11111A', 'Pere');
insert into persona values('22222B', 'Nuria');
 
insert into coche values('B111A', 'Seat', 'Ibiza','11111A');
 
-- borrat de dades
 
-- delete from persona where dni='11111A';
 update persona set dni='77777J' where dni='11111A';
