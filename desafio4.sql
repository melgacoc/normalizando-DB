SELECT u.user_name AS usuario,
    IF(YEAR(MAX(r.reproduction_day)) > 2020, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.reproduction AS r ON (r.user_id = u.user_id)
GROUP BY u.user_name
ORDER BY u.user_name;