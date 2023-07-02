SELECT 
    COUNT(history_playlist_info.data_reproducao) AS quantidade_musicas_no_historico
FROM 
	history_playlist_info INNER JOIN users_info
ON
	history_playlist_info.usuario_id = users_info.user_id
WHERE users_info.user_name = 'Bill'
GROUP BY user_name;