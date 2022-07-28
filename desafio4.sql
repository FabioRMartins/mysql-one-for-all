SELECT A.usuario AS usuario,
 CASE 
 WHEN MAX(B.data_reproducao) BETWEEN '2021-01-01' AND '2021-12-31' THEN 'Usuário ativo'
ELSE
'Usuário inativo'
END AS condicao_usuario
FROM
	SpotifyClone.usuarios AS A
    INNER JOIN SpotifyClone.historico_de_reproducao AS B 
    ON B.usuario_id = A.id 
GROUP BY A.usuario ORDER BY A.usuario; 