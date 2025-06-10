-- exercici 1
create database botiga;

-- exercici 2
show databases;

-- exercici 3
use botiga;
select database();

-- exercici 4
create table if not exists productes(
    id int auto_increment primary key,
    nom varchar(40) not null,
    preu float default(0.0),
    categoria varchar(20) not null
);

-- exercici 5
create table if exists clients(
    dni char(9) primary key,
    nom varchar(50) not null,
    email varchar(50) not null unique
);

-- exercici 6
create table if not exists empleats(
    dni char(9) primary key,
    nom varchar(40) not null,
    sou float not null check(sou >= 1000),
    email varchar(50) unique
);

create table if not exists habitaciacions(
    num int primary key,
    tipus varchar(10) check(tipus in('individual','doble','suite'))
);

create table if not exists clients(
    id int primary key,
    nom varchar(50) 
);

create table if not exists comandes(
    id int primary key,
    foreign key (clients_id) reference clients(id) on delete set null
);
-- eliminar una tabla
drop table <nom_taula>;
drop table reserves;

-- eliminar la taula si existeix
drop table if exists <nom_taula>;
drop table if exists vehicles;


-- renombrar
Rename table <nom_taula> to <nom_taula_nou>;
Rename table clients to clients_antics;
Rename table comandes_null to comandes_especionals;
Rename table alumnes to estudiants;

-- modificar
alter table productes add <nom_columna> <atribbut>;
alter table productes add stock int;
-- despres 
alter table <nom_taula> add <nom_columna> <atribbut> after  <nom_columna> <atribbut>;
alter table clients_antics add actiu boolean after email;

-- eliminar
alter table <nom_taula> drop <nom_columna>;
alter table productes drop column categoria;
alter table clients_antics drop column actiu;

-- modificar o cambiar
alter table <nom_taula> modify <nom_columna> <mou_atribbut>;
alter table productes modify preu float(6,2);

alter table <nom_taula> change <nom_columna>  <nou_nom_columna> <mou_atribbut>;
alter table  clients_antics change nom nom_complet varchar(100);

alter table <nom_taula> rename <nom_columna> to  <nou_nom_columna>
alter table clients_antics rename email to correu;

-- afegeix las resticions
alter table <nom_taula> add constraint <nom_constraint> <atribbut>(valor);
alter table productes add constraint pk_productes primary key(id);

alter table productes add constraint ck_producte check(stock>=0);

-- eliminar restricions
alter table <nom_taula> drop <contraint> <nom_constraint>;
alter table productes drop primary key;
alter table productes drop constraint ck_producte;


-- general
create database botiga;
show databases;
use trabajo;

-- tablas
create table if not exists client(
    dni char(9),
    nom varchar(30),
    telefon varchar(9)
);

create table if not exists productes(
    codi int,
    nom varchar(20),
    preu float,
    desompte float default 0
);

-- tablas con restricions 
create table if not exists empleat(
    dni char(9) primary key,
    nom varchar(30) not null,
    email varchar(50) not null unique,
    sou float not null check(sou>=100)
);

create table if not exists empleat(
    num_habitacio int primary key,
    tipus varchar(50) check(tipus in('doble','triple','suite'))
);

create table if not exists cotxe(
    codi int auto_increment primary key,
    model varchar(20) not null,
    marca varchar(50) not null unique,
    matricula varchar(60) unique,
    color varchar(60)
);
-- doble primary key
create table if not exists productes(
    nom_hotel varchar(50),
    num_habitacio int,
    client_data date,
    data_entrada date
    constraint pk_productes primary key (nom_hotel,num_habitacio)
);

create table if not exists persona(
    dni char(9) primary key,
    nom varchar(30),
);

create table if not exists productes(
    matriula int  primary key,
    marca varchar(50) not null,
    dni_propietri int,
    constraint fK_producte foreign key (dni_propietri) references persona(id) on delete casade 
);
























