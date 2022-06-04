SELECT u.nome_do_usuario AS 'usuario',
CASE
WHEN MAX(YEAR(p.historico_da_reproducao))= 2021 
THEN 'Usuário ativo'
ELSE 'Usuário inativo'
END 
AS 'condicao_usuario'
FROM SpotifyClone.playlist p
INNER JOIN SpotifyClone.usuarios u ON p.id_usuario = u.id_usuario
GROUP BY u.nome_do_usuario
ORDER BY u.nome_do_usuario;