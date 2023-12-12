/* CREA EL FITXER LOG */
\o 'log_DDL_taules.log'

select now(), 'DDL_taules.sql' AS fitxer; /* posa data i hora execucio al fitxer log */

\connect postgres;

drop database if exists cromos_01;
create database cromos_01 owner postgres encoding 'UTF8';
\connect cromos_01;

BEGIN TRANSACTION;

CREATE TABLE autors(	idAutor		serial PRIMARY KEY,
			nomAutor	varchar(40)
		    );

CREATE TABLE editorials(	idEditorial	serial PRIMARY KEY,
				nomEditorial	VARCHAR(40)
			);

CREATE TABLE colleccions(	idColleccio	serial PRIMARY KEY,
				nomColleccio	VARCHAR(40),
				idAutor		integer NOT NULL,
				idEditorial	integer NOT NULL,
				FOREIGN KEY 	(idAutor) REFERENCES autors(idAutor),
				FOREIGN KEY 	(idEditorial) REFERENCES editorials(idEditorial)
			);

CREATE TABLE cromos(	idCromo		serial PRIMARY KEY,
			numero		integer NOT NULL,
			nomCromo	varchar(40),
			idColleccio	integer NOT NULL,
			FOREIGN KEY	(idColleccio) REFERENCES colleccions(idColleccio)
		);


CREATE TABLE edicions(	idEdicio	serial PRIMARY KEY,
			idEditorial	integer,
			idColleccio	integer,
			ani		integer,
			FOREIGN KEY 	(idColleccio) REFERENCES colleccions(idColleccio),
			FOREIGN KEY 	(idEditorial) REFERENCES editorials(idEditorial)
			);

CREATE OR REPLACE VIEW vistaCromos AS
SELECT 		a.idAutor, a.nomAutor, c.idColleccio, c.nomColleccio, r.numero, r.nomCromo
FROM 		autors a, colleccions c, cromos r
WHERE		c.idAutor = a.idAutor AND r.idColleccio = c.idColleccio
ORDER BY 	a.nomAutor, c.nomColleccio, r.numero;

CREATE OR REPLACE VIEW vistaEdicions AS
SELECT 		c.nomColleccio, e.nomEditorial, d.ani
FROM 		editorials e, colleccions c, edicions d
WHERE		e.idEditorial = d.idEditorial AND c.idColleccio = d.idColleccio
ORDER BY 	c.nomColleccio, e.nomEditorial, d.ani;

COMMIT;

/* desconnecta */
\q

/* tanca el fitxer log */
\o
