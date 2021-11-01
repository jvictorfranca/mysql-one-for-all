USE SpotifyClone;


DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(50))
BEGIN
    SELECT t2.artist_name AS  "artista", t1.album_name AS "album"  from albuns as t1
INNER JOIN artists AS t2
ON t1.artist_id = t2.artist_id
WHERE artist_name = artist
;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');

