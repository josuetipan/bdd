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
----------------------
select * from transacciones where tipo = 'D'
select * from transacciones where monto between money(200) and money(2000)
select codigo,monto,tipo,fecha from transacciones where fecha is not null
-----------------------
update transacciones set tipo = 'T'
where monto > money(100) 
	and monto < money(500)
	AND EXTRACT(MONTH FROM fecha) = 9
  	AND EXTRACT(HOUR FROM hora) BETWEEN 14 AND 20;
