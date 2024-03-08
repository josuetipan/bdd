--tabla numero 3

create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date,
	constraint estudiantes_pk primary key (cedula)
)
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1754772778','Josue','Tipan','josuetipan101@gmail.com','17/12/2006')
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1752457892','Alejandro','Castillo','alekacasti023@gmail.com','24/05/2006')
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1754746785','Alison','Trujillo','nikiali572@gmail.com','09/11/2006')
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1754484639','Pedro','Cruz','pedro_cruz175@gmail.com','05/07/2006')
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1757834025','Wendy','Molina','wndix12mol@gmail.com','01/06/2004')
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1754484872','Denis','Arevalo','deniss_14are@gmail.com','14/11/2006')
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1702145772','Ariel','Quishpe','arieltkm856@gmail.com','26/09/2005')
select * from estudiantes
-----------------
select nombre,cedula from estudiantes
select nombre,* from estudiantes where cedula like '17%'
select nombre,* from estudiantes where nombre like 'A%'
