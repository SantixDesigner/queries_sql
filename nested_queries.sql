SELECT new_table_projection.datee, count(*) AS post_count 
FROM (
	SELECT DATE(MIN(fecha_publicacion)) as datee, YEAR(fecha_publicacion) AS post_year
    FROM posts
    GROUP BY  post_year
) AS new_table_projection
GROUP BY datee;


select * from posts where fecha_publicacion = (
	select max(fecha_publicacion)
    from posts
)