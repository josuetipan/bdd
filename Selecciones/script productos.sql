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




