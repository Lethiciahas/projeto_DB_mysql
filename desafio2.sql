SELECT
(SELECT COUNT(nome_da_musica) from SpotifyClone.musicas) AS 'cancoes',
(Select COUNT(nome_do_artista) from SpotifyClone.artistas) AS 'artistas',
(Select COUNT(nome_album) from SpotifyClone.album)AS 'albuns';