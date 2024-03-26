--crea la tabla cliente
drop table compras;
drop table clientes;
create table clientes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	constraint clientes_pk primary key(cedula)
)

select * from clientes;
select * from compras;

delete from compras
delete from clientes

create table compras(
	id_compra int,
	cedula char(10),
	fecha_compra date not null,
	monto decimal not null,
	constraint compras_pk primary key (id_compra)
)

alter table compras
add constraint clientes_compras_fk
foreign key (cedula)
references clientes(cedula)

insert into clientes(cedula,nombre,apellido)
values ('1754772778','Josue','Tipan');
insert into clientes(cedula,nombre,apellido)
values ('1754234755','Maria','Lluna');
insert into clientes(cedula,nombre,apellido)
values ('1754476823','Mario','Gomez');
insert into clientes(cedula,nombre,apellido)
values ('1754563452','Dylan','Acero');
insert into clientes(cedula,nombre,apellido)
values ('1714278572','Jhoel','Aguiar');
insert into clientes(cedula,nombre,apellido)
values ('1752545378','Andrea','Andrango');
insert into clientes(cedula,nombre,apellido)
values ('1757864425','Hugo','Andrango');
insert into clientes(cedula,nombre,apellido)
values ('1144586877','Alan','Alcivar');
insert into clientes(cedula,nombre,apellido)
values ('1145888421','Ariel','Qhispe');
insert into clientes(cedula,nombre,apellido)
values ('1755548878','Denis','Arevalo');
insert into clientes(cedula,nombre,apellido)
values ('1755548879','Monica','laFacil');


insert into compras (id_compra,cedula,fecha_compra,monto)
values (1751,'1754772778','05/06/2023',10.50);
insert into compras (id_compra,cedula,fecha_compra,monto)
values (1235,'1754234755','07/10/2023',5.50);
insert into compras (id_compra,cedula,fecha_compra,monto)
values (1534,'1754476823','05/12/2023',11.00);
insert into compras (id_compra,cedula,fecha_compra,monto)
values (7875,'1754563452','05/08/2023',12.00);
insert into compras (id_compra,cedula,fecha_compra,monto)
values (1134,'1714278572','07/03/2023',100.00);
insert into compras (id_compra,cedula,fecha_compra,monto)
values (1547,'1752545378','26/12/2023',55.00);
insert into compras (id_compra,cedula,fecha_compra,monto)
values (165,'1757864425','12/06/2023',115.00);
insert into compras (id_compra,cedula,fecha_compra,monto)
values (5214,'1144586877','08/06/2023',19.50);
insert into compras (id_compra,cedula,fecha_compra,monto)
values (357,'1145888421','12/06/2024',120.30);
insert into compras (id_compra,cedula,fecha_compra,monto)
values (54356,'1755548878','12/11/2024',112.52);
insert into compras (id_compra,cedula,fecha_compra,monto)
values (1114,'1755548879','13/12/2024',1000.00);
-----------------------------------------------
select cl.nombre,cl.apellido,cm.cedula from 
clientes cl, compras cm
where 
cl.cedula = cm.cedula
and cm.cedula like '%7%'

select cm.cedula,cl.nombre,cl.apellido from 
clientes cl, compras cm
where 
cl.cedula = cm.cedula
and cl.nombre = 'Monica'
----------------------------------
SELECT cedula, SUM(monto)
FROM compras
GROUP BY cedula;

select count(*)from compras 
where fecha_compra = '13/12/2024'






