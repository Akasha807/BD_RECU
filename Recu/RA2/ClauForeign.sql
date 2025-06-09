-- creacio de les taules i foreign key
create table if not exists casa(
    id int primary key,
    nom varchar(50)
);

create table if not exists estudiant(
    id int primary key,
    nom varchar(50),
    casa_id varchar(50),
    foreign key (casa_id) references  casa(id)
);

create table if not exists profe(
    id int primary key,
    materia varchar(50),
    foreign key (casa_id) references  casa(id)
);

create table if not exists clase(
    id int primary key,
    materia varchar(50),
    foreign key (profe_id) references  profe(id)
);





