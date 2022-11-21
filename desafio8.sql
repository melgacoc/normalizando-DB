SELECT a.artist_name AS 'artista',
b.album_title AS 'album'
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS b ON (a.artist_id = b.artist_id)
WHERE a.artist_name = 'Elis Regina';