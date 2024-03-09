-- tabla 5

create table videojuegos (
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key (codigo)
)
insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (59012,'God of war','Juego de aventura',300)
insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (59017,'Mario Bros','Juego de aventura',800)
insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (59018,'Sonic','Juego de aventura',300)
insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (59014,'Pac-Man','Juego de come fantasma',1000)
insert into videojuegos (codigo,nombre,descripcion,valoracion)
values (612,'Zelda','Juego de aventura',300)

select * from videojuegos

insert into videojuegos (codigo,nombre,valoracion)
values (0012,'Fornite', 5000)
insert into videojuegos (codigo,nombre,valoracion)
values (0013,'Call of duty', 100)
insert into videojuegos (codigo,nombre,valoracion)
values (0014,'Fre fire',200)
---------------------
select * from videojuegos where nombre like 'C%' 
select nombre,valoracion from videojuegos where valoracion
between '9' and '10'
select * from videojuegos where descripcion is null 
---------------
update videojuegos set descripcion = 'Mejor puntuado'
where valoracion > 9
--------------
delete from videojuegos 
where valoracion < 7