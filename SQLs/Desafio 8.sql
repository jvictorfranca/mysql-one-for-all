USE SpotifyClone;


DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON user_profile
    FOR EACH ROW
BEGIN
    DELETE FROM user_following
    WHERE user_id = old.user_id;
    
    DELETE FROM user_songs_history
    WHERE user_id = OLD.user_id;
END $$
DELIMITER ;

DROP TRIGGER trigger3;