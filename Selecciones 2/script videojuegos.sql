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
------------------------
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'juego de terror', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'juego de accion', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'juego de terror', 10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite', 'juego de suspenso', 10);

insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'juego de psicoligia', 6);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of Ward', 'juego de aprendisaje', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deprote', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'juego de baile', 8);
---------------------
select * from videojuegos 
where nombre like '%c%' or valoracion  = 7;
select * from videojuegos 
where codigo between 3 and 7 or valoracion = 7;
select * from videojuegos
where valoracion > 7 and nombre like 'C%' or valoracion > 8 and nombre like 'D%'


