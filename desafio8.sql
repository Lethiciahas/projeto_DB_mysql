SELECT
a.nome_do_artista AS 'artista',
al.nome_album AS 'album'
FROM SpotifyClone.artistas a
INNER JOIN SpotifyClone.album al ON a.id_artista = al.id_artista
WHERE a.nome_do_artista = 'Walter Phoenix'
ORDER BY album;