SELECT t.track_name AS 'nome_musica',
CASE WHEN track_name LIKE '%Bard%' THEN REPLACE(track_name, 'Bard', 'QA')
WHEN track_name LIKE '%Amar%' THEN REPLACE(track_name, 'Amar', 'Code Review')
WHEN track_name LIKE '%Pais%' THEN REPLACE(track_name, 'Pais', 'Pull Requests')
WHEN track_name LIKE '%SOUL%' THEN REPLACE(track_name, 'SOUL', 'CODE')
WHEN track_name LIKE '%SUPERSTAR%' THEN REPLACE(track_name, 'SUPERSTAR', 'SUPERDEV')
END AS 'novo_nome'
FROM SpotifyClone.tracks AS t
WHERE track_name LIKE '%Bard%'
OR track_name LIKE '%Amar%'
OR track_name LIKE '%Pais%'
OR track_name LIKE '%SOUL%'
OR track_name LIKE '%SUPERSTAR%'
ORDER BY nome_musica DESC;
