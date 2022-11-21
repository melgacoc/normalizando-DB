SELECT t.track_name AS 'nome_musica',
CASE WHEN track_name LIKE '%Bard%' THEN REPLACE(t.track_name, 'Bard', 'QA')
WHEN t.track_name LIKE '%Amar%' THEN REPLACE(t.track_name, 'Amar', 'Code Review')
WHEN t.track_name LIKE '%Pais%' THEN REPLACE(t.track_name, 'Pais', 'Pull Requests')
WHEN t.track_name LIKE '%SOUL%' THEN REPLACE(t.track_name, 'SOUL', 'CODE')
WHEN t.track_name LIKE '%SUPERSTAR%' THEN REPLACE(t.track_name, 'SUPERSTAR', 'SUPERDEV')
END AS 'novo_nome'
FROM SpotifyClone.tracks AS t
WHERE t.track_name LIKE '%Bard%'
OR t.track_name LIKE '%Amar%'
OR t.track_name LIKE '%Pais%'
OR t.track_name LIKE '%SOUL%'
OR t.track_name LIKE '%SUPERSTAR%'
ORDER BY nome_musica DESC;
