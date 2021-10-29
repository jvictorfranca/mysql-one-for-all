USE SpotifyClone;

-- SELECT * FROM songs
-- INNER JOIN artists
-- ON songs.artist_id = artists.artist_id
-- INNER JOIN albuns
-- ON songs.album_id = albuns.album_id

-- SELECT user_profile.user_name,songs.song_name FROM user_songs_history
-- INNER JOIN user_profile
-- ON user_songs_history.user_id = user_profile.user_id
-- INNER JOIN songs
-- ON user_songs_history.song_ID = songs.song_ID;

-- SELECT * from artists


SELECT user_profile.user_name, artists.artist_name FROM user_following
INNER JOIN user_profile
ON user_following.user_id = user_profile.user_id
INNER JOIN artists
ON artists.artist_id = user_following.artist_id