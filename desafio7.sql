SELECT
a.nome_do_artista AS 'artista',
al.nome_album AS 'album',
COUNT(f.id_usuario) AS 'seguidores'
FROM SpotifyClone.album al
INNER JOIN SpotifyClone.artistas a  ON  al.id_artista = a.id_artista
INNER JOIN SpotifyClone.favoritos f ON f.id_artista = al.id_artista
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;