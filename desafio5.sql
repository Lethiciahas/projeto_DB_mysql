SELECT m.nome_da_musica AS 'cancao',
COUNT(p.id_usuario) AS 'reproducoes'
FROM SpotifyClone.playlist p
INNER JOIN SpotifyClone.musicas m ON p.id_musica = m.id_musica
GROUP by cancao
ORDER BY reproducoes DESC, cancao LIMIT 2;