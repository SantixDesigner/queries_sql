select * from usuarios u 
right join posts a on a.usuario_id = u.id 
where a.usuario_id is null;

select * from usuarios u 
left join posts a on a.usuario_id = u.id
where a.usuario_id is null
UNION select * from usuarios u 
right join posts a on a.usuario_id = u.id 
where a.usuario_id is null