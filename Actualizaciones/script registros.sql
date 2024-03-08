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