--tabla 4

create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registro_pk primary key (codigo_registro)
)
insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (101001,'1754772778','01/02/2024','07:00')
insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (101002,'1754772477','08/02/2023','07:00')
insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (101003,'1714788535','01/12/2021','08:00')
insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (101004,'1754772747','02/12/2020','09:00')
insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (101005,'1754772564','01/06/2019','08:00')
insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (101006,'1754772469','01/06/2020','08:00')
insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (101007,'1754264788','03/02/2024','08:30')
insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (101008,'1754698756','08/08/2021','07:00')
insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (101009,'1754772228','05/10/2020','09:00')
insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (101010,'1758444296','06/05/2017','07:00')
-----------
select cedula_empleado,fecha,hora from registros_entrada
select * from registros_entrada where hora 
between '7:00' and '14:00'
select * from registros_entrada where hora > '8:00'
----------------------
update registros_entrada set cedula_empleado = '082345679'
where extract(month from fecha)=8
----------------------------
delete from registros_entrada
where extract(month from fecha)=6
-----------------------------------
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12345, '1754416489', '18/06/2023', '7:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12355, '1758254591', '03/08/2023', '14:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12346, '1715974492', '25/03/2022', '23:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12347, '1735642583', '28/12/2015', '16:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12389, '1707416984', '16/07/2012', '8:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12349, '1778541235', '17/03/2013', '10:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12310, '1742158637', '14/05/2017', '19:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12311, '1756321784', '15/05/2004', '20:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12358, '1712546328', '07/07/2008', '21:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12378, '1725785413', '02/09/2023', '4:00');
---------------------------------
select * from registros_entrada
where extract(month from fecha)= 9 or cedula_empleado like '17%'
select * from registros_entrada
where extract(month from fecha) = 8 and cedula_empleado like '17%' and hora 
between '08:00' and '12:00'
select * from registros_entrada
where extract(month from fecha) = 8 and cedula_empleado like '17%' and hora 
between '08:00' and '12:00' or extract(month from fecha)= 9 and cedula_empleado like '08%' and 
hora between '09:00' and '13:00'

