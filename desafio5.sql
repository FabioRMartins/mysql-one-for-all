SELECT cancao AS cancao,
 COUNT(B.cancao_id) AS reproducoes
 FROM
	SpotifyClone.cancoes AS A
    INNER JOIN SpotifyClone.historico_de_reproducao AS B 
    ON B.cancao_id = A.id 
GROUP BY B.cancao_id 
ORDER BY reproducoes DESC, cancao LIMIT 2; 