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
-------------------
update estudiantes set apellido ='Hernandez'
where cedula like '17%'
----------------
delete from estudiantes 
where cedula like '05%'
--------------------------------
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476801,'Raul','Martínez','raumart01@gmail.com','04/02/2003');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010' );
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476809,'Anabel','Perlaza','WPerlaza18@gmail.com','12/04/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001');
----------------------------
SELECT * FROM estudiantes 
WHERE nombre like 'M%' or apellido like 'Z%'
SELECT * FROM estudiantes
WHERE cedula like '%32' and cedula like '18%'
SELECT * FROM estudiantes
WHERE cedula like '17%' or cedula like '%06'