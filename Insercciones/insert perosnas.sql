-- CREA LA TABLA PERSONAS
create table personas(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar (50) not null,
	estatura decimal,
	fecha_nacimiento date,
	hora_nacimineto time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint personas_pk primary key (cedula)
)
insert into personas (cedula,nombre,apellido)
values ('1754772778','Josue','Tipan')

insert into personas (cedula,nombre,apellido,estatura)
values ('1707997993','Segundo','Tipan',1.85)

insert into personas (cedula,nombre,apellido,numero_hijos)
values ('1707997997','Alejandro','Castillo',2)

insert into personas (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimineto,cantidad_ahorrada,numero_hijos)
values ('1711107910','Mariana','Muquis',1.50,'25/09/1973','22:54',200.34,3)

select cedula,nombre,numero_hijos,estatura from personas

select * from personas