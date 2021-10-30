CREATE VIEW top_2_hits_do_momento AS 
ELECT song_name AS 'cancao', COUNT(*) as "reproducoes" from user_songs_history AS t1
INNER JOIN songs AS t2
ON t2.song_id = t1.song_id
GROUP BY song_name
ORDER BY COUNT(0) DESC
LIMIT 2;
