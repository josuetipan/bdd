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
select * from cuentas
select numero_cuenta,saldo from cuentas
select fecha_creación,* from cuentas where fecha_creación
between '01/01/2024' and '07/03/2024'
select numero_cuenta,saldo from cuentas where  fecha_creación
between '01/01/2024' and '07/03/2024'
-------------------
update cuentas set saldo = 10.00
where cedula_propietario like '17%'
-------------------------
delete from cuentas
where cedula_propietario like '10%'
--------------------
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values (25569,17504,'15/01/2030',500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values (25570,17500,'01/11/2028',600);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values (25571,17501,'22/01/2023',700);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values (25572,17508,'30/05/2022',800);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values (25573,17509,'15/03/2023',900);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values (25574,17510,'15/05/2023',1000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values (25575,17507,'15/09/2023',1500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values (25576,17515,'15/10/2024',2500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values (25577,17512,'15/08/2025',3500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values (25578,17503,'15/06/2017',4500)
------------------------------------------
select numero_cuenta,saldo,* from cuentas
where saldo > money(100) and saldo < money(1000)
select * from cuentas
where fecha_creación between '01/01/2023'  and '10/03/2024' 
select * from cuentas 
where saldo = money(0) or cedula_propietario like '%2'

