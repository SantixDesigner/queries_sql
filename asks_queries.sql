select usuarios.nickname as nickname, posts.titulo as titulo from usuarios, posts where usuarios.email like '%edgar%@%com%' order by posts.fecha_publicacion;

select posts.titulo, GROUP_CONCAT(etiquetas.nombre_etiqueta) 
from posts
inner join posts_etiquetas on posts.id = posts_etiquetas.post_id
inner join etiquetas on etiquetas.id = posts_etiquetas.etiqueta_id
group by posts.id
LIMIT 5;

select * from etiquetas
left join posts_etiquetas on posts_etiquetas.etiqueta_id = etiquetas.id
where posts_etiquetas.etiqueta_id is null