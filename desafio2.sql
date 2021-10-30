CREATE VIEW estatisticas_musicais AS
     SELECT COUNT(song_name) AS "cancoes",COUNT(DISTINCT artist_id) AS "artistas", COUNT(distinct album_id) AS "albuns"
     FROM songs;
