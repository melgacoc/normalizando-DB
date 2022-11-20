SELECT a.artist_name AS artista,
b.album_title AS album,
COUNT(f.artist_id) AS seguidores
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS b ON (a.artist_id = b.artist_id)
INNER JOIN SpotifyClone.following AS f ON (b.artist_id = f.artist_id)
GROUP BY artista , album
ORDER BY seguidores DESC , artista , album;