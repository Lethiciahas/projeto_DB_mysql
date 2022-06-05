SELECT 
COUNT(p.historico_da_reproducao) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.usuarios u
INNER JOIN SpotifyClone.playlist p 
ON p.id_usuario = u.id_usuario
WHERE u.nome_do_usuario = 'Bill';