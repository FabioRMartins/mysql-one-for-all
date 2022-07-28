SELECT MIN(valor_plano) AS faturamento_minimo,
MAX(valor_plano) AS faturamento_maximo,
ROUND(AVG(valor_plano), 2) AS faturamento_medio,
ROUND (SUM(valor_plano), 2) AS faturamento_total
 FROM
	SpotifyClone.planos AS A
    INNER JOIN SpotifyClone.usuarios AS B
    ON A.id = B.plano_id
 