-- Como procurar com multiplos counts em diversas tables usando SELECT
-- https://stackoverflow.com/questions/606234/select-count-from-multiple-tables

SELECT
	(SELECT COUNT(song_id) FROM songs_info) AS cancoes,
    (SELECT COUNT(artist_id) FROM artists_info) AS artistas,
    (SELECT COUNT(album_id) FROM albums_info) AS albuns;