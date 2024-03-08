--tabla numero 2

create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creación date not null,
	saldo money not null,
	constraint cuentas_pk primary key (numero_cuenta)
)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values ('18064','17547','11/09/2023',100.00)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values ('20574','17099','02/11/2006',80.70)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values ('15784','17248','01/01/1973',4859.00)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values ('18003','17747','06/02/2000',6045.00)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values ('18004','17864','03/12/2004',100.00)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values ('18124','07747','16/04/1990',800.00)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values ('78942','01537','30/10/2002',863.00)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values ('02147','08647','28/03/2019',2345.00)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values ('56478','17228','03/06/2017',98.00)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values ('12503','17117','17/12/2006',100.00)
----------------------
select numero_cuenta,saldo from cuentas
select fecha_creación,* from cuentas where fecha_creación
between '01/01/2024' and '07/03/2024'
select numero_cuenta,saldo from cuentas where  fecha_creación
between '01/01/2024' and '07/03/2024'