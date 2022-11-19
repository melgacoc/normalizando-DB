SELECT t.track_name AS 'cancao',
COUNT (*) AS 'reproducoes'
FROM SpotifyClone.reproduction AS r
INNER JOIN SpotifyClone.tracks AS t ON (t.track_id = r.track_id)
GROUP BY r.track_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;