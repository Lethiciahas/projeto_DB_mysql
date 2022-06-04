SELECT 
u.nome_do_usuario AS 'usuario', 
COUNT(p.id_usuario) AS 'qtde_musicas_ouvidas', 
ROUND(SUM(m.duracao)/60,2) AS 'total_minutos'
FROM SpotifyClone.usuarios u
INNER JOIN SpotifyClone.playlist p  
ON p.id_usuario = u.id_usuario
INNER JOIN SpotifyClone.musicas m   
ON m.id_musica = p.id_musica
GROUP by u.id_usuario
ORDER by u.nome_do_usuario;