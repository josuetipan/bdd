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
drop table personas
drop table prestamo
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

update personas set estatura = 1.70
where cedula='1754772778'
update personas set cantidad_ahorrada = 0.0
where cantidad_ahorrada is null
update personas set numero_hijos = 0
where numero_hijos is null
update personas set estatura=1.60, fecha_nacimiento= '10/11/2004'
where cedula='0714616141'

delete from personas
where estatura is null

insert into personas (cedula,nombre,apellido)
values ('1792287345','Cristiano','Ronaldo');

insert into personas (cedula,nombre,apellido)
values ('0924845643','Leonel','quñones');
-------------------------------------------

create table prestamo(
	cedula char(10),
	monto money,
	fecha_prestamo date,
	hora_prestamo time,
	garante varchar(40),
	constraint prestamo_pk primary key (cedula)
)

alter table prestamo
add constraint prestamo_persona_fk
foreign key (cedula)
references personas(cedula)

delete from personas
select * from personas

insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values ('1754772778',500,'12/02/2023','12:25','Maria Pillajo');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values ('1748665772',200,'19/04/2023','14:25','Pedro Picapiedra');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values ('1754745779',100,'28/11/2023','13:02','Mario Gomez');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values ('1745777824',1500,'23/03/2024','07:00','Sofre Cajamarca');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values ('1754745778',600,'17/03/2023','12:30','Tatiana Vasquez');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values ('1754778222',10000,'27/10/2022','18:00','Sarahi Melo');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values ('1447855226',100,'30/09/2022','13:25','Domenica Currilo');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values ('1744872215',500,'12/04/2021','17:00','Daniela Jetacama');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values ('1482254753',800,'20/12/2023','14:25','kimberly Macas');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values ('1715485775',500,'21/05/2023','12:30','Sofia Reyes');

insert into personas (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimineto,cantidad_ahorrada,numero_hijos)
values ('1754772778','Sean','Perez',1.60,'12/11/2006','12:00',100,5);
insert into personas (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimineto,cantidad_ahorrada,numero_hijos)
values ('1748665772','Maite','Sanchez',1.60,'17/12/2006','12:01',200,1);
insert into personas (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimineto,cantidad_ahorrada,numero_hijos)
values ('1754745779','Dylan','Acero',1.80,'18/12/2007','12:45',250,0);
insert into personas (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimineto,cantidad_ahorrada,numero_hijos)
values ('1745777824','Andre','Artola',1.70,'25/02/2005','11:45',100,0);
insert into personas (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimineto,cantidad_ahorrada,numero_hijos)
values ('1754745778','Alan','Alcivar',1.50,'18/06/2006','17:14',250,0);
insert into personas (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimineto,cantidad_ahorrada,numero_hijos)
values ('1754778222','Alejandro','Castillo',1.60,'23/05/2006','12:45',1000,0);
insert into personas (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimineto,cantidad_ahorrada,numero_hijos)
values ('1447855226','Noe','Chalacan',1.70,'30/06/2003','13:21',110,0);
insert into personas (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimineto,cantidad_ahorrada,numero_hijos)
values ('1744872215','Josue','Jetacama',1.50,'17/08/2006','14:45',50,5);
insert into personas (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimineto,cantidad_ahorrada,numero_hijos)
values ('1482254753','Josue','Tipan',1.70,'17/12/2006','12:00',100000,0);
insert into personas (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimineto,cantidad_ahorrada,numero_hijos)
values ('1715485775','Wendy','Molina',1.50,'25/01/2004','08:00',0,0);












