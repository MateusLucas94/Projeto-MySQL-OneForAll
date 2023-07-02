-- Lógica parcial vista abaixo utilizada nesse requisito
-- https://sqlhints.com/2013/10/14/how-to-check-if-a-string-contains-a-substring-in-it-in-sql-server/

SELECT
	SpotifyClone.users_info.user_name AS usuario,
    IF(
		GROUP_CONCAT(SpotifyClone.history_playlist_info.data_reproducao) LIKE '%2021%',
			'Usuário ativo', 'Usuário inativo'
	  ) AS condicao_usuario
FROM
	SpotifyClone.users_info INNER JOIN SpotifyClone.history_playlist_info 
ON SpotifyClone.users_info.user_id = SpotifyClone.history_playlist_info.usuario_id
GROUP BY user_name
ORDER BY user_name;
