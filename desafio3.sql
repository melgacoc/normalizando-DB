SELECT u.user_name AS `usuario`,
    COUNT(r.user_id) AS `qt_de_musicas_ouvidas`,
    ROUND(SUM(s.track_duration) / 60, 2) AS `total_minutos`
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.reproduction AS r ON (r.user_id = u.user_id)
INNER JOIN SpotifyClone.tracks AS s ON (r.track_id = s.track_id)
GROUP BY u.user_name
ORDER BY u.user_name;