create table t1 (
	dni char(9),
	nom_complet varchar(50),
	edat tinyint unsigned,
	sexe enum('Home','Dona','Altre'),
	sou float,
	email varchar(50),
	telefon int,
	es_Estudiant boolean
);

create table t2 (
	num_habitacio smallint unsigned,
	tipus varchar(6)
);

--Añade una columna
alter table t2
add column metres float;

-- Modificamos la tabla 2 y añadimos una columna primero te_nevera y luego tipus
alter table t2
add column te_nevera boolean after tipus;

--Eliminar columna
alter table t2
add column te_nevera boolean drop tipus;

-- Modify column --> Solo deja cambiar la estructura por ejemplo : float,etc.
alter table t2
modify column metres int;

-- Change column --> Añade un columna con estructura por ejemplo : Superficie int.
alter table t2
change column superficie int;

-- comandos
show warning; -- Enseñan la tabla
desc t1; -- lo que esta dentro de la tabla
source --copiar la ruta y pegar 

create table asignatura (
	codi smallint unsigned,
	nom varchar(50),
	hores tinyint unsigned
);

alter table asignatura
add column profe varchar(50);