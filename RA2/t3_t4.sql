CREATE TABLE t3(
    dni char(8) primary key,
    nom varchar(20) not null,
    email varchar unique not null ,
    sou float not null check(soul >=400)

);
CREATE TABLE t4(
    num_habitacion int primary key,
    tipus  varchar(7)check(tipus= 'doble' or tipus='trible')
);


