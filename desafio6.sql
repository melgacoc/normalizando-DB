SELECT MIN(p.valor) AS 'faturamento_minimo',
MAX(p.valor) AS 'faturamento_maximo',
ROUND(AVG(p.valor), 2) AS 'faturamento_medio',
ROUND(SUM(p.valor), 2) AS 'faturamento_total'
FROM SpotifyClone.plans AS p
INNER JOIN SpotifyClone.users AS u ON (u.plan_id = p.plan_id);