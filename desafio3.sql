CREATE VIEW top_10_customers AS 
SELECT t2.user_name AS 'usuario', t3.song_name AS 'nome' FROM user_songs_history as t1
INNER JOIN user_profile AS t2
ON t1.user_id = t2.user_id
INNER JOIN songs AS t3
ON t3.song_id = t1.song_id
ORDER BY usuario, nome;
