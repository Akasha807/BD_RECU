Create database persona (
    dni char(9),
    nom varchar(20) 
)
Create database coche (
    matricula char (7),
    marca varcahar (30),
    modelo varchar(30),
)
constrain forgein key dni char
-- Afegir la clau primaria restricción con nombre
add table persona
add constraint pk_persona primary key (dni);

--- Poner solo la clave primaria
add table persona
modify column dni char(7) primary key




