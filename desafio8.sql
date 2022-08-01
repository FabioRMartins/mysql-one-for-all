SELECT artista AS artista, B.album AS album
 FROM
	SpotifyClone.artistas AS A
    INNER JOIN SpotifyClone.albuns AS B
    ON B.artista_id = A.id
    WHERE A.artista = 'Walter Phoenix' ORDER BY album;
