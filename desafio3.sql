-- Código abaixo do uso de CAST em:
-- https://stackoverflow.com/questions/10380197/rounding-off-to-two-decimal-places-in-sql

SELECT 
	user_name AS usuario,
    COUNT(musica_id) AS qtde_musicas_ouvidas,
    CAST(SUM(song_duration/60) as DECIMAL(5,2)) AS total_minutos
FROM 
	users_info INNER JOIN history_playlist_info INNER JOIN songs_info
ON 
	users_info.user_id = history_playlist_info.usuario_id
    AND
    history_playlist_info.musica_id = songs_info.song_id
GROUP BY 
	user_name 
ORDER BY 
	user_name;
