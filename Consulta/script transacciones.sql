--tabla 6

create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	constraint transacciones_pk primary key (codigo)
)
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (5478,'12345',500,'C','15/01/2024','12:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (5479,'12115',50,'C','15/01/2024','12:30')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (5460,'15487',100,'C','15/01/2024','13:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (5434,'57534',1000,'C','15/01/2024','13:30')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (5453,'12445',3200,'C','15/01/2024','14:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (5477,'65743',1500,'C','15/01/2024','14:30')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (5445,'12356',2500,'C','15/01/2024','15:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (5471,'12456',1000,'C','15/01/2024','15:30')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (5448,'12345',5200,'C','15/01/2024','16:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (6547,'45356',3500,'C','15/01/2024','16:30')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (0000,'45315',3505,'C','15/08/2024','16:30')
----------------------
select * from transacciones where tipo = 'D'
select * from transacciones where monto between money(200) and money(2000)
select codigo,monto,tipo,fecha from transacciones where fecha is not null
-----------------------
update transacciones set tipo = 'T'
where monto > money(100) 
	and monto < money(500)
	AND EXTRACT(MONTH FROM fecha) = 9
  	AND EXTRACT(HOUR FROM hora) BETWEEN 14 AND 20
-------------------
delete from transacciones
where extract(hour from hora) between 14 and 18 
and extract(month from fecha) = 8
and extract(year from fecha) = 2024
--------------------------
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78945, '75369', 200, 'C', '20/09/2023', '23:30');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '15/06/2022', '17:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '21001', 1600, 'C', '17/05/2021', '16:37');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32165, '51437', 1050, 'D', '25/04/2020', '15:48');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '02147', 300, 'D', '20/03/2019', '22:19');

insert into transacciones(codigo, numero_cuenta, monto, tipo,fecha, hora)
values(23210, '32015', 400, 'C', '12/01/2030','13:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600, 'D', '07/12/2015', '20:14');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '96325', 800, 'D', '06/11/2012', '11:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900, 'D', '23/10/2002', '9:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54143, '85213', 2000, 'C', '11/09/1999', '7:30');
-------------------------------
select * from transacciones 
where tipo = 'C' and numero_cuenta between '222001' and '22004'
select * from transacciones
where tipo = 'D' and fecha = '25/05/2023' and numero_cuenta between 22007 and 22010
SELECT *
FROM transacciones
WHERE codigo BETWEEN 1 AND 5
AND (numero_cuenta = '22002' OR numero_cuenta = '22004')
AND fecha IN ('2024-05-26', '2024-05-29');
--------------------------
create table banco(
	codigo_banco int,
	codigo_transaccion int,
	detalle varchar(100),
	constraint banco_pk primary key (codigo_banco)
)

alter table banco
add  constraint banco_transacciones_fk
foreign key (codigo_transaccion)
references transacciones(codigo)

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78945, '75369', 200, 'C', '20/09/2023', '23:30');--

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '15/06/2022', '17:55');--

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '21001', 1600, 'C', '17/05/2021', '16:37');--

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32165, '51437', 1050, 'D', '25/04/2020', '15:48');--

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '02147', 300, 'D', '20/03/2019', '22:19');--

insert into transacciones(codigo, numero_cuenta, monto, tipo,fecha, hora)
values(23210, '32015', 400, 'C', '12/01/2030','13:55');--

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600, 'D', '07/12/2015', '20:14');--

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '96325', 800, 'D', '06/11/2012', '11:00');--

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900, 'D', '23/10/2002', '9:00');--

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54143, '85213', 2000, 'C', '11/09/1999', '7:30');

insert into banco(codigo_banco,codigo_transaccion,detalle)
values (1211,78945,'Exelente');

insert into banco(codigo_banco,codigo_transaccion,detalle)
values (1212,53147,'Regular');

insert into banco(codigo_banco,codigo_transaccion,detalle)
values (1213,32548,'Mal');

insert into banco(codigo_banco,codigo_transaccion,detalle)
values (1214,32165,'Exelente');

insert into banco(codigo_banco,codigo_transaccion,detalle)
values (1215,78542,'Exelente');

insert into banco(codigo_banco,codigo_transaccion,detalle)
values (1216,23210,'Exelente');

insert into banco(codigo_banco,codigo_transaccion,detalle)
values (1217,35412,'Exelente');

insert into banco(codigo_banco,codigo_transaccion,detalle)
values (1218,54193,'Regular');

insert into banco(codigo_banco,codigo_transaccion,detalle)
values (1219,95124,'Exelente');

insert into banco(codigo_banco,codigo_transaccion,detalle)
values (1220,54143,'Regular');

delete from transacciones
--------------------------------------------

select * from 
transacciones tra, banco ba
where 
tra.tipo ='C' or tra.numero_cuenta between '22001' and '22004'

select * from 
transacciones tra, banco ba
where 
ba.codigo_banco = 1








