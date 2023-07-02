SELECT
	songs_info.song_name AS nome,
    COUNT(songs_info.song_name) AS reproducoes
FROM
	songs_info INNER JOIN history_playlist_info RIGHT JOIN users_info
ON
	songs_info.song_id = history_playlist_info.musica_id
AND
	history_playlist_info.usuario_id = users_info.user_id
where
	users_info.plan_id = 1
    OR
    users_info.plan_id = 4
GROUP BY songs_info.song_name
order by songs_info.song_name ASC;