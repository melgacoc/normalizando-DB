SELECT t.track_name AS 'nome',
COUNT(r.track_id) AS 'reproducoes'
FROM SpotifyClone.tracks AS t
INNER JOIN SpotifyClone.reproduction AS r ON (t.track_id = r.track_id)
INNER JOIN SpotifyClone.users AS u ON (r.user_id = u.user_id)
INNER JOIN SpotifyClone.plans AS p ON (u.plan_id = p.plan_id)
WHERE p.plan_title IN ('gratuito', 'pessoal')
GROUP BY nome
ORDER BY nome;