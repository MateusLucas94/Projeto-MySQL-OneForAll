SELECT
	songs_info.song_name as cancao,
    COUNT(musica_id) AS reproducoes
FROM 
	history_playlist_info INNER JOIN songs_info
ON 
    history_playlist_info.musica_id = songs_info.song_id
GROUP BY song_name
ORDER BY reproducoes DESC, song_name ASC
LIMIT 2;