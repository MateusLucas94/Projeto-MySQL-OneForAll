SELECT
	artists_info.artist_name AS artista,
    albums_info.album_name AS album,
    COUNT(followed_artists.user_id) AS seguidores
FROM 
	albums_info JOIN followed_artists RIGHT JOIN artists_info
ON 
	albums_info.artist_id = followed_artists.artist_id
	AND
	albums_info.artist_id = artists_info.artist_id
GROUP BY 
	artists_info.artist_name, 
    albums_info.album_name
ORDER BY 
	seguidores DESC,
    artists_info.artist_name ASC,
    albums_info.album_name ASC;