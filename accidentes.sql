-- Active: 1662595082257@@127.0.0.1@3306@prueba
CREATE DATABASE if not EXISTS prueba;
use prueba;

select * from Accidentes;

drop table Accidentes;
drop table muestra_accidentes;
#borramos la columna index
alter table Accidentes DROP `index`;
select * from Accidentes;

#borramos la columna index
alter table terrorismo DROP `index`;
select * from terrorismo;

select*from muestra_accidentes;