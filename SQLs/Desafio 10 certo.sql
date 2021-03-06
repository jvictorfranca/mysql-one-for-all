USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico2(userid INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE songs_total INT;
 SELECT COUNT(*) FROM user_songs_history as t1
	INNER JOIN user_profile as t2
	ON t1.user_id = t2.user_id
	WHERE t2.user_id = userid
    INTO songs_total;
    RETURN songs_total;
END $$

DELIMITER ;

SELECT COUNT(*) FROM user_songs_history
GROUP BY user_id;

SELECT quantidade_musicas_no_historico2(4);