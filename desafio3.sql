SELECT A.usuario AS usuario,
COUNT(B.usuario_id) AS qtde_musicas_ouvidas,
ROUND(SUM(C.duracao_segundos) /60,2) AS total_minutos
FROM
	SpotifyClone.historico_de_reproducao AS B 
    INNER JOIN SpotifyClone.usuarios AS A
    ON B.usuario_id = A.id 
    INNER JOIN SpotifyClone.cancoes AS C
    ON B.cancao_id = C.id
GROUP BY usuario ORDER BY usuario; 