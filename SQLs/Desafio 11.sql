USE SpotifyClone;




CREATE VIEW cancoes_premium AS
SELECT song_name AS 'nome' ,COUNT(*) AS "reproducoes"  FROM user_songs_history as t1
INNER JOIN user_profile AS t2
ON t1.user_id = t2.user_id
INNER JOIN user_plans AS t3
ON t2.plan_id = t3.plan_id
INNER JOIN songs AS t4
ON t1.song_id = t4.song_id
WHERE t3.account = 'familiar' OR t3.account = 'universitário'
GROUP BY t4.song_name
ORDER BY t4.song_name;