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



