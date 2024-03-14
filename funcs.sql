select * from posts where id < 50 and estatus = 'activo' and categoria_id = 2;

select estatus, count(*) as post_quantity from posts group by estatus;

select estatus, sum(id) suma_id from posts group by estatus;

select year(fecha_publicacion) as anio, estatus, count(*) as cont
from posts 
group by anio, estatus
having cont > 2
order by anio