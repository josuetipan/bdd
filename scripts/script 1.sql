-- mi primera tabla

create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descrpcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)