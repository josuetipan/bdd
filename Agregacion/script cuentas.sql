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
----------------------------------------------
select * from cuentas

delete from cuentas;
delete from usuario;

create table usuario(
	
	cedula char(5),
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal,
	constraint usuario_pk primary key (cedula)
)

alter table cuentas
add constraint cuentas_usuario_fk
foreign key (cedula_propietario)
references usuario(cedula)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values (25578,17547,'15/06/2017',150);--
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values (85741,21314,'21/08/2022',100);--
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values (12457,10257,'15/09/2022',200);--
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values (25487,17653,'12/10/2022',300);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values (12487,14361,'02/11/2022',400);--
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values (00457,12481,'18/12/2022',500);--
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values (00217,17781,'11/01/2023',600);--
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values (78254,17351,'15/04/2023',700);--
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values (45612,17581,'02/07/2023',800);--
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creación,saldo)
values (54612,17221,'21/09/2023',900);--



insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('17547','Josue','Tipan','ahorro','5');
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('21314','Andre','vinueza','ahorro','6.3');
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('10257','Segundo','Casa','corriente','4');
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('17653','Miguel','Quishpe','ahorro','3');
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('14361','Piedad','Maquis','ahorro','2');--
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('12481','Laura','Muquis','corriente','3');--
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('17781','Angel','Criollo','ahorro','8');--
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('17351','Gladys','Tiuaña','ahorro','6');--
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('17581','Sonia','Vastida','corriente','3.2');--
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('17221','Guadalupe','Pillajo','ahorro','5.5');--
------------------------------
select cu.numero_cuenta, us.nombre from
cuentas cu,usuario us
where 
cu.cedula_propietario = us.cedula 
and cu.saldo>money(100) and cu.saldo<money(1000)

select cu.numero_cuenta,cu.fecha_creación,cu.saldo,us.cedula from
cuentas cu,usuario us
where 
cu.cedula_propietario = us.cedula 
and cu.fecha_creación between '21/09/2022' and '21/09/2023'
-----------------------------------------------
select AVG(cast(saldo as numeric))
from cuentas cu,usuario us
where us.cedula = '17221'

select tipo_cuenta,count(*)from usuario
group by tipo_cuenta









