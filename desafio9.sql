SELECT COUNT(r.user_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.reproduction AS r
WHERE r.user_id = 1
GROUP BY r.user_id;