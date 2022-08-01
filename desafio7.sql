SELECT A.artista AS artista,
B.album AS album,
COUNT(C.artista_id) AS seguidores
 FROM
	SpotifyClone.artistas AS A
    INNER JOIN SpotifyClone.albuns AS B
    ON A.id = B.artista_id
    INNER JOIN SpotifyClone.seguindo_artistas AS C
    ON A.id = C.artista_id
 GROUP BY artista, album ORDER BY seguidores DESC, artista, album;