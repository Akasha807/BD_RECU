-- problema 1
create table if no exists t1(
        dni char(9),
        NomComplet varchar(50),
        Edat int,
        Sexe enum('Male','Famale','other'),
        Sou float,
        email varchar(50),
        telefon int,
        Es_estudiant boolean
);

create table t2(
    num_habitacio int,
    tipusValor enum('doble','triple','suite')
);

create table t3(
    dni char(9) primary key,
    nom varchar(50) not null,
    email varchar(50) not null unique,
    sou float not null check(sou>=400)
);

create table t4(
    num_habitacio int primary key,
    Valor varchar(50) check(Valor in('doble','triple','suite')) 
);

-- El auto increment  --> auto_increment 
-- No puede haber mas de una clave primaria
-- Se debe poner not null/null antes que unique

create table t5(
    codi int auto_increment primary key,
    model varchar(50) not null,
    marca varchar(50) not null,
    matricula varchar(50) unique,
    bastidor varchar(50) not null unique,
    color varchar(50) 
);

-- ejercicios de repaso

create table if not exists pelicula(
    id varchar(6),
    titulo varchar(70),
    anyo int,
    genero varchar(15)
);

create table if not exists actor(
    id int(4),
    nombre varchar(25)
);

create table if exists participar(
    pelicula_id int(4),
    actor_id int(4),
    orden int
);

