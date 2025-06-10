-- Problemes de la base de dades de pelis
 
-- Problema 1
create table if not exists pelicula (
    id char(6),
    titulo varchar(70),
    anyo smallint unsigned,
    genero varchar(15)
);
 
-- Problema 2
create table if not exists actor (
    id int (4),
    nom varchar(25)
);

-- Problem 3
create table if no exists participar(
    pelicula_id int (4),
    actor_id int (4),
    ordre int 
)

-- Problema 4
alter table pelicula
add constraint pk_pelicula primary key (id);

-- Problema 5
alter table participar
add constraint pk_actor primary key (id)

--Problema 6
alter table participar
-- add constraint fk_rep_pelicula forgein key(pelicula_id) references pelicula(id);
-- Para hacer calve forgein  tiene que ser el mismo valor por ejemplo int y int.

-- Problema 7 
alter table pelicula
modify column id smallint unsigned;
-- Cuando añado int o smallint??

-- Problema 8
alter table participar
add constraint fk_rep_pelicula forgein key(pelicula_id) references pelicula(id);

-- Problema 9

-- https://pastebin.com/Cj2gvJYd

-- Problemes 11 al 16
 
-- problema 11
alter table pelicula
modify column titulo varchar(70) not null;
--problema 12
alter table actor
modify column nom varchar(25) not null;
 
-- problema 13
alter table pelicula
add column puntuacion float;
 
-- problema 14
alter table pelicula
add column votos integer;
 
-- problema 15
alter table pelicula
drop column genero;
 
-- problema 16
rename table participar to reparto;
 
-- per dimarts 14/1 
-- problemes 4 al 10