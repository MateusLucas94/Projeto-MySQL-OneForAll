SELECT
	artists_info.artist_name AS artista,
    albums_info.album_name AS album
FROM 
	albums_info JOIN followed_artists RIGHT JOIN artists_info
ON 
	albums_info.artist_id = followed_artists.artist_id
	AND
	albums_info.artist_id = artists_info.artist_id

WHERE artists_info.artist_name = 'Walter Phoenix'
GROUP BY artists_info.artist_name, albums_info.album_name;