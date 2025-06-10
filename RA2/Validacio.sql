-- 1. Crear les taules només amb les restriccions d’obligatorietat
CREATE TABLE pokemon (
Numero int NOT NULL,
Nom varchar(30) NOT NULL,
Pes int NOT NULL,
Alcada int NOT NULL,
Evoluciona_de INT
);
CREATE TABLE atac (
ID int NOT NULL,
Nom varchar(30) NOT NULL
);
CREATE TABLE tenir(
Num_pokemon int NOT NULL,
ID_atac int NOT NULL
);
-- 2. Afegir les restriccions de clau primària
ALTER TABLE pokemon
ADD CONSTRAINT PK_POKEMON PRIMARY KEY (Numero);
ALTER TABLE atac
ADD CONSTRAINT PK_ATAC PRIMARY KEY (ID);
ALTER TABLE tenir
ADD CONSTRAINT PK_TENIR PRIMARY KEY (Num_pokemon, ID_atac);
-- 3. Afegir les restriccions de clau forana amb la política indicada
ALTER TABLE pokemon
ADD CONSTRAINT FK_POKEMON_EVOLUCIONA FOREIGN KEY (Evoluciona_de)
REFERENCES POKEMON (Numero)
ON DELETE SET NULL
ON UPDATE CASCADE;
ALTER TABLE TENIR
ADD CONSTRAINT FK_TENIR_NUM_POKEMON FOREIGN KEY (Num_pokemon)
REFERENCES POKEMON (Numero);
ALTER TABLE TENIR

3 de 4

ADD CONSTRAINT FK_TENIR_ID_ATAC FOREIGN KEY (ID_atac)
REFERENCES ATAC (ID)
ON UPDATE CASCADE;
-- 4. Afegir una nova columna anomenada tipologia a la taula pokemon
ALTER TABLE POKEMON
ADD COLUMN Tipologia VARCHAR(50);
-- 5. Afegir una restricció CHECK a la columna tipologia
ALTER TABLE POKEMON
ADD CONSTRAINT CHK_TIPOLOGIA CHECK (Tipologia = 'Elèctric' or Tipologia =
'aigua' or Tipologia = 'foc' or Tipologia = 'planta' or Tipologia = 'psíquic');
-- 6. Modificar la columna alcada per tal que admeti valors decimals
ALTER TABLE POKEMON
MODIFY COLUMN Alcada float not null;
-- 7. Modificar la columna tipologia: renombrar a tipus, fer-la VARCHAR(30) i
obligatòria
ALTER TABLE POKEMON
CHANGE COLUMN Tipologia Tipus VARCHAR(30) NOT NULL;
-- 8. Eliminar la columna pes de la taula pokemon
ALTER TABLE POKEMON
DROP COLUMN Pes;
-- 9. Eliminar les taules (ordre correcte per evitar errors amb les claus foranes)
DROP TABLE TENIR;
DROP TABLE ATAC;
DROP TABLE POKEMON;