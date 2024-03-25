-- mi primera tabla

create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descrpcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)
insert into productos (codigo,nombre,descrpcion,precio,stock)
values (001,'Papas rufles','Papas sabor a limón',0.50,10)
insert into productos (codigo,nombre,descrpcion,precio,stock)
values (002,'Papas lays','Papas Naturales',0.60,5)
insert into productos (codigo,nombre,descrpcion,precio,stock)
values (003,'Papas Sarita','Papas Naturales',0.30,15)
insert into productos (codigo,nombre,descrpcion,precio,stock)
values (004,'Chifles Mankey´s','chifles picantes',0.60,5)
insert into productos (codigo,nombre,descrpcion,precio,stock)
values (005,'Doritos','Picantes y sabrosos',0.65,20)

select * from productos

insert into productos (codigo,nombre,precio,stock)
values (116,'KitKat',0.30,60)
insert into productos (codigo,nombre,precio,stock)
values (117,'OREO',0.60,10)
insert into productos (codigo,nombre,precio,stock)
values (118,'TWIX',0.70,100)
--reto4
select * from productos
where nombre like 'Q%'
select * from productos
where descrpcion is null
select * from productos
where precio 
between money(2) and money(3)
--------------
update productos set stock=0
where descrpcion is null
-----------
delete from productos 
where descrpcion is null
----------------------------
insert into productos(codigo,nombre,descrpcion,precio,stock) 
values (10,'Jabón','Lava todo',3.50,10);
insert into productos(codigo,nombre,descrpcion,precio,stock) 
values (20,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descrpcion,precio,stock) 
values (30,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descrpcion,precio,stock) 
values (40,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descrpcion,precio,stock) 
values (50,'Cera','Cera de piso',2.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (60,'Pan',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (70,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (80,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (90,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (100,'Coca Cola',3.50,300);
-----------------------
select * from productos 
where stock = 10 and precio < money(10)
select nombre,stock,descrpcion from productos
where nombre like '%m%' or descrpcion like '% %' 
select nombre,* from productos 
where descrpcion is null or stock = 0
-------------------------------

create table ventas(
	id_venta int,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int not null,
	constraint ventas_pk primary key (id_venta)
)

alter table ventas
add constraint productos_ventas_fk
foreign key (codigo_producto)
references productos(codigo)

insert into productos(codigo,nombre,descrpcion,precio,stock) 
values (10,'Jabón','Lava todo',3.50,10);--
insert into productos(codigo,nombre,descrpcion,precio,stock) 
values (20,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descrpcion,precio,stock) 
values (30,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descrpcion,precio,stock) 
values (40,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descrpcion,precio,stock) 
values (50,'Cera','Cera de piso',2.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (60,'Pan',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (70,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (80,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (90,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (100,'Coca Cola',3.50,300);

insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (1534,10,'12/10/2023',5);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (155434,20,'12/11/2023',4);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (15334,30,'04/11/2023',5);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (15234,40,'25/08/2023',10);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (12534,50,'18/10/2023',15);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (15454,60,'12/11/2024',2);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (15374,70,'13/02/2024',1);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (15364,80,'25/02/2024',3);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (15324,90,'15/01/2023',4);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (15343,100,'08/11/2023',5);

select * from ventas
delete from ventas 
delete from productos













