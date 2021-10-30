CREATE VIEW top_3_artistas AS
SELECT t2.artist_name AS 'artista', COUNT(*) AS 'seguidores' FROM user_following AS t1
INNER JOIN artists AS t2
ON t1.artist_id = t2.artist_id
GROUP BY t2.artist_name
ORDER BY COUNT(*) DESC, t2.artist_name
LIMIT 3;
