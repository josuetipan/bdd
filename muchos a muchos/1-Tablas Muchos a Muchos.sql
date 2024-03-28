---Tablas Muchos a Muchos
-----1 
---RELACION MUCHOS A MUCHOS ENTRE USUARIOS Y GRUPO



insert into usuarios values (1,'Marilyn','Sagñay','05/11/2023'),
							(2,'Romel','Chamba','06/11/2023'),
							(3,'Mario','Guzñay','05/11/2023'),
							(4,'Johann','Domo','07/11/2023'),
							(5,'Monserrate','Vera','05/11/2023'),
							(6,'Lucio','Vargas','05/11/2023'),
							(7,'Martín','Arizaga','05/11/2023'),
							(8,'Fricson','Erazo','05/11/2023'),
							(9,'Jairo','Obando','05/11/2023'),
							(10,'Berni','Tomalá','05/11/2023');
							
							
insert into grupo values (1,'Maternal 1','Grupo de maternal matutino','08/03/2020'),
						 (2,'Maternal 2','Grupo de maternal vepertino','08/03/2020'),
						 (3,'Maternal 3','Grupo de maternal nocturno','08/03/2020'),
						 (4,'Incial 1 ','Grupo de inicial matutino','15/03/2021'),
						 (5,'Incial 2','Grupo de  inicial vespertino','15/03/2021'),
						 (6,'Incial 3','Grupo de  inicial  nocturno','15/03/2021'),
						 (7,'Incial intensivo','Grupo de inicial días sabados','15/03/2021'),
						 (8,'Maternal intensivo 1','Grupo de maternal matutino días sabados','15/03/2022'),
						 (9,'Maternal intensivo 2','Grupo de maternal vespertino días sabados','15/03/2022'),
						 (10,'Maternal intensivo 3','Grupo de maternal nocturno días sabados','15/03/2022');


insert into usuario_grupo values (1,8),
								 (2,3),
								 (3,8),
								 (4,9),
								 (5,1),
								 (6,2),
								 (7,8),
								 (8,8),
								 (9,10),
								 (10,1);
								 
							 
								 
------2------------
--RELACION MUCHOS A MUCHOS HABITACIONES Y HUESPEDES

 insert into habitaciones values (1,40.0,4,4),
 								 (2,20.0,4,2),
								 (3,40.0,4,4),
								 (4,40.0,3,4),
								 (5,20.0,3,2),
								 (6,20.0,3,2),
								 (7,20.0,2,2),
								 (8,20.0,2,2),
								 (9,20.0,2,2),
								 (10,15.0,1,1),
								 (11,15.0,1,1),
								 (12,15.0,1,1);
								 

insert into huespedes values    (1,'Ricardo','Montero',0980658774,'Ricmontero@gmail.com'),
								(2,'Sofía','Martinez',09887563205,'Sofimar@gmail.com'),
								(3,'Yamilteh','Guami',0998763298,'YAMGUAM@gmail.com'),
								(4,'Esther','Contreras',0995783602,'Esthcontro@gmail.com'),
								(5,'Wiliam','Mantilla',09858796320,'wmANTILLA@gmail.com'),
								(6,'Carmen','Noguera',0995876321,'Cnoguera@gmail.com'),
								(7,'Anika','Jimenez',0978965432,'AniJimenez@gmail.com'),
								(8,'Belen','Orejuela',0996365748,'BOrejuela@gmail.com'),
								(9,'Diana','Monroy',0987963214,'DianaMroy@gmail.com'),
								(10,'Bryan','Moncada',0986325741,'BrMoncada@gmail.com');
												
								
insert into reservas values ('11/05/2023','12/05/2023',2,10),
						    ('11/05/2023','12/05/2023',2,9),
							('22/06/2023','23/06/2023',1,1),
							('22/06/2023','23/06/2023',1,2),
							('22/06/2023','23/06/2023',1,3),
							('22/06/2023','23/06/2023',1,4),
							('01/01/2023','02/01/2023',12,5),
							('11/08/2023','12/08/2023',11,6),
							('11/05/2023','12/05/2023',10,7),
							('11/05/2023','12/05/2023',9,8);
							


-------------3
--RELACION MUCHOS A MUCHOS MUNICIPIO Y PROYECTOS
drop table proyecto_municipio

create table ciudad(
	id int,
	nombre varchar(45) not null,
	constraint ciudad_pk primary key (id)
)
create table municipio(
	id int,
	nombre varchar(45),
	ciudad_id int, --llave
	constraint municipio_pk primary key (id),
	constraint ciudad_fk foreign key (ciudad_id) references ciudad(id)
)
create table proyecto(
	id int,
	proyecto varchar(50) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,
	constraint proyecto_pk primary key(id)
)
create table proyecto_municipio(
	proyecto_id int not null,
	municipio_id int  not null,
	constraint municipio_fk foreign key (municipio_id) references municipio(id),
	constraint proyecto_fk foreign key (proyecto_id) references proyecto(id),
	constraint proyecto_municipio_pk primary key(municipio_id,proyecto_id)
)




insert into ciudad values   (1,'Quito'),
							(2,'Ambato'),
							(3,'Guayaquil'),
							(4,'Machala'),
							(5,'Manta'),
							(6,'Loja'),
							(7,'Otavalo'),
							(8,'Cuenca'),
							(9,'Latacunga'),
							(10,'Tena');


insert into municipio values (1,'GAD MUNICIPAL QUITO',1),
							 (2,'GAD MUNICIPAL DE CUENCA',8),
							 (3,'GAD MUNICIPALIDAD DE AMBATO',2),
							 (4,'MUNICIPALIDAD DE MACAHALA ',4),
							 (5,'MUNIUCIPIO DE GUAYAQUIL',3),
							 (6,'MUNICIPIO DE OTAVALO',7),
							 (7,'MUNICIPIO DE LOJA',6),
							 (8,'MUNICIPIO DE MANTA',5),
							 (9,'MUNICIPIO DE LATACUNGA',9),
							 (10,'MUNICIPIO DE TENA',10);


insert into proyecto values (1,'Proyectos de Gestión Ambiental',9543.327,'10/02/2022','10/02/2023'),
							(2,'Proyectos en Fomento y Desarrollo Productivo',26553.264,'25/06/2022','10/08/2022'),
							(3,'Proyectos en Cambio Climático',1292.194,'01/02/2021','10/12/2023');
							
select * from proyecto_municipio
insert into proyecto_municipio values (1,5),
									  (3,5),
									  (1,2),
									  (2,1),
									  (1,4),
									  (2,9),
									  (1,10),
									  (3,6),
									  (1,3),
									  (2,7);
----------------------------------------
-----usuarios y grupo

select * from usuarios
usuarios,grupo,usuario_grupo where 
usuarios.id_u = usuario_grupo.us_id and 
grupo.id_g = usuario_grupo.gr_id

SELECT nombre
FROM usuarios
WHERE id_u IN (SELECT us_id FROM usuario_grupo WHERE gr_id = 1);

select nombre, count(us_id) from grupo,usuario_grupo where
grupo.id_g = usuario_grupo.gr_id
group by grupo.nombre

select * from usuarios,usuario_grupo,grupo
where usuario.id_u = usuario_grupo.us_id and 
grupo.id  = usuario_grupo.gr_id
and grupo.nombre like '%intensivos%'

SELECT us.nombre, gru.nombre
FROM usuarios us, grupo gru, usuario_grupo usgr where us.id_u = usgr.us_id
and gru.id_g = usgr.gr_id and 
gru.nombre LIKE '%intensivo%';

select us.nombre from usuarios us
where id_u in (select us_id from usuario_grupo where gr_id = 2)

select grupo.nombre, max(usgr.us_id),min(usgr.us_id) from grupo , usuario_grupo usgr
where grupo.id_g = usgr.gr_id group by grupo.nombre

select us.nombre, gr.fecha_creacion from usuarios us,grupo gr,usuario_grupo usgr
where us.id_u = usgr.us_id and gr.id_g = usgr.gr_id and
gr.fecha_creacion between '08/03/2020' and '08/03/2022'

select us.nombre from usuarios us
where id_u in (select us_id from usuario_grupo where gr_id = 3)

select gr.descripcion, count(usgr.us_id) from grupo gr, usuario_grupo usgr
where gr.id_g = usgr.gr_id and gr.descripcion like '%matutino%' 
group by gr.descripcion
 
--habitaciones y huespedes
select hb.habitacion_numero, hs.nombre,hs.apellidos from habitaciones hb, huespedes hs, reservas res
where hb.habitacion_numero = res.habitacion and
hs.id_h = res.huesped_id

select hs.nombre,hs.apellidos from huespedes hs
where hs.id_h in (select huesped_id from reservas where habitacion = 2)

select hb.habitacion_numero, count(res.huesped_id) from habitaciones hb, reservas res
where hb.habitacion_numero = res.habitacion
group by hb.habitacion_numero

select hb.habitacion_numero,hb.piso,hs.nombre,hs.apellidos
from habitaciones hb, huespedes hs, reservas res
where hb.habitacion_numero = res.habitacion and
hs.id_h = res.huesped_id

select hs.nombre,hs.apellidos from
huespedes hs
where id_h in (select huesped_id from reservas where habitacion = 3)

select hb.habitacion_numero, AVG(res.huesped_id) from
habitaciones hb, reservas res
where hb.habitacion_numero = res.habitacion
group by hb.habitacion_numero

select hb.habitacion_numero, hs.nombre,hs.apellidos from 
habitaciones hb,huespedes hs, reservas res
where hb.habitacion_numero = res.habitacion and 
hs.id_h = res.huesped_id 

select hs.nombre,hs.apellidos from huespedes hs
where id_h in (select huesped_id from reservas where habitacion = 4)

select hb.habitacion_numero, sum(hb.precio_por_noche) from habitaciones hb,reservas res
where hb.habitacion_numero = res.habitacion 
group by hb.habitacion_numero
----------------------------------------------------------------
--municipio y proyectos
select mun.nombre,pro.proyecto from municipio mun, proyecto pro, proyecto_municipio promun
where mun.id = promun.municipio_id
and pro.id = promun.proyecto_id

select pro.proyecto from proyecto pro
where pro.id in (select proyecto_id from proyecto_municipio where municipio_id = 1)

select mun.nombre,count(promun.proyecto_id)
from municipio mun, proyecto_municipio promun
where mun.id = promun.municipio_id 
group by mun.nombre 

select mun.nombre,pro.proyecto from municipio mun, proyecto pro, proyecto_municipio promun
where mun.id = promun.municipio_id and pro.id = promun.proyecto_id and
mun.nombre like '%GAD%'

select mun.nombre, min(promun.proyecto_id) from
municipio mun, proyecto_municipio promun
where mun.id = promun.municipio_id
group by mun.nombre

select mun.nombre, ciu.nombre from 
municipio mun,ciudad ciu 
where mun.id = ciu.id
group by mun.nombre, ciu.nombre

select pro.proyecto from proyecto pro
where pro.id in(select proyecto_id from proyecto_municipio where municipio_id = 3)
 
select mun.nombre, max(promun.proyecto_id)
from municipio mun, proyecto_municipio promun
where mun.id = promun.municipio_id
group by mun.nombre
 


