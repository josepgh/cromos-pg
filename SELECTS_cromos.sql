\o 'log_SELECTS_cromos.log'
select now(), 'SELECTS_cromos.sql' AS fitxer; /* posa data i hora execucio al fitxer log */
\connect cromos_01;

select '-------------- select * from autors; ---------' AS PETICIO;
select * from autors;

select '-------------- select * from colleccions; ----' AS PETICIO;
select * from colleccions;

select '-------------- select * from cromos; ---------' AS PETICIO;
select * from cromos;

select '-------------- select * from editorials; ------' AS PETICIO;
select * from editorials;

select '-------------- select * from edicions; ---------' AS PETICIO;
select * from edicions;

select '-------------- select * from vistaCromos; --------' AS PETICIO;
select * from vistaCromos;

select '-------------- select * from vistaEdicions; --------' AS PETICIO;
select * from vistaEdicions;

\o