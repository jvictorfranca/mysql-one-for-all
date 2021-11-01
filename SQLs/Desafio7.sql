SELECT artist_name AS 'artista', album_name AS 'album', COUNT(t3.user_id) AS 'seguidores' from albuns as t1
INNER JOIN artists as t2
ON t2.artist_id = t1.artist_id
INNER JOIN user_following as t3
ON t3.artist_id = t1.artist_id
GROUP BY album_name, artist_name
ORDER BY COUNT(t3.user_id) DESC, artist_name, album_name;