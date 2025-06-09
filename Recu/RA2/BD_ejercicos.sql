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

-- alters tables
-- eliminar la tabla
drop table  <nom_taula>
drop table  reserva;

-- eliminar la tabla si existe
drop table if exists <nom_taula>;
drop table if exists vehicles;

-- rename table
rename table <nom_antic> to <nom_nou>;
rename table clients to clients_antics;
..
rename table alumnes to estudiant;

-- añadir columna amb valor
-- alter table <nom_taula> add <columna> <valor>;
alter table productes add stock int;
alter table clients_antics add actiu after email;

-- eliminar columna
-- alter table <nom_tabla> drop <nom_columna>
alter table categories drop categoria;
alter clients_antics drop actiu;
-- cambiar el valor
alter table <nom_columna> modify <nom> <nou_valor>
alter table productes change categoria to double(6,2);

-- cambiar el nom  i valor 
-- alter table <nom_table> change <nom_antic> <nom_nou> <valor_nou>
alter table clients_antics modify nom nom_complet to varchar(100);

-- cambiar el nom 
alter table <nom_tabla> rename <nom_antic> to <nou_name>
alter table clients_antics rename email to correu;

-- añadir restricciones
-- alter table <nom_taula> add <constrain> <nom_constraint> <tipus_restriccio> (nom_columna)
alter table productes add constraint pk_producte  primaria key(id);
alter table productes add constraint ck_producte check(stock>=0)(sou);

-- eliminar restricions
-- alter table <nom_table> drop <nom_contraint>
alter table productes drop pk_producte;
alter table productes drop ck_producte;


