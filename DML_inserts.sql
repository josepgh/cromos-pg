/* CREA EL FITXER LOG */
\o 'log_DML_inserts.log'

select now(), 'DML_inserts.sql' AS fitxer; /* posa data i hora execucio al fitxer log */

\connect cromos_01;

BEGIN TRANSACTION;

--insert into autors(nomAutor) values ('');
insert into autors(nomAutor) values ('Robert de Niro');
insert into autors(nomAutor) values ('John Smith');
insert into autors(nomAutor) values ('Maiquel Jacson');
insert into autors(nomAutor) values ('Chiquito de la Calzada');
insert into autors(nomAutor) values ('Nom Cognom1 Cognom2');

--insert into editorials(nomEditorial) values ('');
insert into editorials(nomEditorial) values ('Editorial Grande');
insert into editorials(nomEditorial) values ('Ediciones Editorial');
insert into editorials(nomEditorial) values ('Ediciones Buenas');

--insert into colleccions(nomColleccio, idAutor, idEditorial) values ('', , );
insert into colleccions(nomColleccio, idAutor, idEditorial) values ('Final Quest', 1, 1);
insert into colleccions(nomColleccio, idAutor, idEditorial) values ('Battle Stars', 2, 2);
insert into colleccions(nomColleccio, idAutor, idEditorial) values ('For Heaven''s Shake', 1, 3);
insert into colleccions(nomColleccio, idAutor, idEditorial) values ('Dumblemore more more', 3, 1);
insert into colleccions(nomColleccio, idAutor, idEditorial) values ('La liga 2005-2006', 4, 2);
insert into colleccions(nomColleccio, idAutor, idEditorial) values ('Los Pokemon se ban a Madriz', 4, 3);

--insert into cromos(numero, nomCromo, idColleccio) values (, '', );
insert into cromos(numero, nomCromo, idColleccio) values (235, 'Chuster', 5);
insert into cromos(numero, nomCromo, idColleccio) values (15874, 'Cristiano Rodalno', 5);
insert into cromos(numero, nomCromo, idColleccio) values (4, 'Bujquets', 5);
insert into cromos(numero, nomCromo, idColleccio) values (6, 'Por la Castellana al Vernaveu', 6);
insert into cromos(numero, nomCromo, idColleccio) values (56, 'La Ziveles se moja', 6);
insert into cromos(numero, nomCromo, idColleccio) values (876, 'Baja la bola por Labapies', 6);
insert into cromos(numero, nomCromo, idColleccio) values (345, 'Al final tos contentos', 1);
insert into cromos(numero, nomCromo, idColleccio) values (2345, 'Final de etapa', 1);
insert into cromos(numero, nomCromo, idColleccio) values (6556, 'La guerra en el Brons', 2);
insert into cromos(numero, nomCromo, idColleccio) values (8765, 'Pray for we all', 3);
insert into cromos(numero, nomCromo, idColleccio) values (111, 'Clase de Quidditch', 4);
insert into cromos(numero, nomCromo, idColleccio) values (222, 'Nehimar Gunior', 5);
insert into cromos(numero, nomCromo, idColleccio) values (333, 'En Entrevias atracan a Pikachu', 6);

--insert into edicions(idEditorial, idColleccio, ani) values (, , );
insert into edicions(idEditorial, idColleccio, ani) values (1, 1, 2000);
insert into edicions(idEditorial, idColleccio, ani) values (2, 2, 2000);
insert into edicions(idEditorial, idColleccio, ani) values (3, 3, 1988);
insert into edicions(idEditorial, idColleccio, ani) values (3, 4, 1999);
insert into edicions(idEditorial, idColleccio, ani) values (1, 5, 2003);

COMMIT;

/* desconnecta */
\q

/* tanca el fitxer log */
\o