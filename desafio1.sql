DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE SpotifyClone.planos (
id_plano INT PRIMARY KEY AUTO_INCREMENT,
tipo varchar(30),
valor_do_plano decimal (3,2)
)ENGINE=InnoDB;

CREATE TABLE SpotifyClone.artistas (
id_artista INT PRIMARY KEY AUTO_INCREMENT,
nome_do_artista varchar(50)
)ENGINE=InnoDB;

CREATE TABLE SpotifyClone.usuarios (
id_usuario INT PRIMARY KEY AUTO_INCREMENT,
nome_do_usuario VARCHAR(30),
idade INT,
id_plano INT NOT NULL,
data_da_assinatura DATE,
FOREIGN KEY (id_plano) REFERENCES SpotifyClone.planos(id_plano)
)ENGINE=InnoDB;

CREATE TABLE SpotifyClone.album (
id_album INT PRIMARY KEY AUTO_INCREMENT,
nome_album VARCHAR(50),
id_artista INT NOT NULL,
ano_de_lancamento YEAR,
FOREIGN KEY (id_artista) REFERENCES SpotifyClone.artistas(id_artista)
)ENGINE=InnoDB;

CREATE TABLE SpotifyClone.musicas (
id_musica INT PRIMARY KEY AUTO_INCREMENT,
nome_da_musica VARCHAR(50),
id_artista INT NOT NULL,
duracao INT,
id_album INT NOT NULL,
FOREIGN KEY (id_artista) REFERENCES SpotifyClone.artistas(id_artista),
FOREIGN KEY (id_album) REFERENCES SpotifyClone.album(id_album)
)ENGINE=InnoDB;

CREATE TABLE SpotifyClone.playlist (
id_playlist INT(1),
historico_da_reproducao DATETIME,
id_musica INT NOT NULL,
id_usuario INT NOT NULL,
constraint primary key(id_musica, id_usuario),
FOREIGN KEY (id_musica) REFERENCES SpotifyClone.musicas(id_musica),
FOREIGN KEY (id_usuario) REFERENCES SpotifyClone.usuarios(id_usuario)
)ENGINE=InnoDB;

CREATE TABLE SpotifyClone.favoritos (
id_usuario INT NOT NULL,
id_artista INT NOT NULL,
PRIMARY KEY (id_usuario, id_artista),
FOREIGN KEY (id_usuario) REFERENCES SpotifyClone.usuarios(id_usuario),
FOREIGN KEY (id_artista) REFERENCES SpotifyClone.artistas(id_artista)
)ENGINE=InnoDB;

INSERT INTO SpotifyClone.planos(id_plano, tipo, valor_do_plano)
VALUES 
(default, 'gratuito', '0'),
(default, 'familiar', '7.99'),
(default, 'universitário', '5.99'),
(default, 'pessoal', '6.99');


INSERT INTO SpotifyClone.artistas(id_artista, nome_do_artista)
VALUES
(default, 'Walter Phoenix'),
(default, 'Peter Strong'),
(default, 'Lance Day'),
(default, 'Freedie Shannon'),
(default, 'Tyler Isle'),
(default, 'Fog');


INSERT INTO SpotifyClone.usuarios(id_usuario, nome_do_usuario, idade, id_plano, data_da_assinatura)
VALUES 
(default, 'Thati', '23', '1', '2019-10-20'),
(default, 'Cintia', '35', '2','2017-12-30'),
(default, 'Bill',	'20', '3','2019-06-05'),
(default, 'Roger',	'45', '4','2020-05-13'),
(default, 'Norman', '58', '4', '2017-02-17'),
(default, 'Patrick', '33', '2', '2017-01-06'),
(default, 'Vivian',	'26', '3', '2018-01-05'),
(default, 'Carol',	'19', '3', '2018-02-14'),
(default, 'Angelina','42','2','2018-04-29'),
(default, 'Paul','46','2','2017-01-17');

INSERT INTO SpotifyClone.album(id_album, nome_album, id_artista, ano_de_lancamento)
VALUES 
(default, 'Envious', '1', '1990'),
(default, 'Exuberant', '1', '1993'),
(default, 'Hallowed Steam', '2', '1995'),
(default, 'Incandescent', '3', '1998'),
(default, 'Temporary Culture', '4',	'2001'),
(default, 'Library of liberty',	'4', '2003'),
(default, 'Chained Down', '5', '2007'),
(default, 'Cabinet of fools', '5', '2012'),
(default, 'No guarantees', '5', '2015'),
(default, 'Apparatus', '6', '2015');

INSERT INTO SpotifyClone.musicas(id_musica, nome_da_musica, id_artista, duracao, id_album)
VALUES 
(default, 'For Us', '1', '200', '1'),
(default, 'Reflections Of Magic','1', '163', '1'),
(default, 'Dance With Her Own', '1', '116', '1'),
(default, 'Troubles Of My Inner Fire', '1', '203', '2'),
(default, 'Time Fireworks', '1', '152', '2'),
(default, 'Magic Circus', '2', '105', '3'),
(default, 'Honey, So Do I', '2', '207', '3'),
(default, 'Sweetie, Let s Go Wild', '2', '139', '3'),
(default, 'She Knows', '2', '244', '3'),
(default, 'Fantasy For Me', '2', '100', '4'),
(default, 'Celebration Of More', '2', '146', '4'),
(default, 'Rock His Everything', '2', '223', '4'),
(default, 'Home Forever', '2',  '231', '4'),
(default, 'Diamond Power', '2', '241', '4'),
(default, 'Lets Be Silly', '2', '132', '4'),
(default, 'Thang Of Thunder', '3', '240', '5'),
(default, 'Words Of Her Life', '3', '185', '5'),
(default, 'Without My Streets', '3', '176', '5'),
(default, 'Need Of The Evening', '3', '190', '6'),
(default, 'History Of My Roses', '3', '222', '6'),
(default, 'Without My Love', '3', '111', '6'),
(default, 'Walking And Game', '3', '123', '6'),
(default, 'Young And Father', '3', '197', '6'),
(default, 'Finding My Traditions', '4', '179', '7'),
(default, 'Walking And Man', '4', '229', '7'),
(default, 'Hard And Time', '4', '135', '7'),
(default, 'Honey, I m A Lone Wolf', '4', '150', '7'),
(default, 'She Thinks I Won t Stay Tonight', '4', '166', '8'),
(default, 'He Heard You re Bad For Me', '4', '154', '8'),
(default, 'He Hopes We Can t Stay', '4', '210', '8'),
(default, 'I Know I Know', '4', '117', '8'),
(default, 'He s Walking Away', '4',  '159', '9'),
(default, 'He s Trouble', '4', '138', '9'),
(default, 'I Heard I Want To Bo Alone', '4', '120', '9'),
(default, 'I Ride Alone',  '4', '151', '9'),
(default, 'Honey', '5', '79', '10'),
(default, 'You Cheated On Me', '5', '95', '10'),
(default, 'Wouldn t It Be Nice', '5', '213', '10'),
(default, 'Baby', '5', '136', '10'),
(default, 'You Make Me Feel So..', '5', '83', '10');


INSERT INTO SpotifyClone.playlist (id_playlist, historico_da_reproducao, id_musica, id_usuario)
VALUES
(default,' 2020-02-28 10:45:55', '36', '1'),
(default, '2020-05-02 05:30:35', '25', '1'),
(default, '2020-03-06 11:22:23', '23', '1'),
(default, '2020-08-05 08:05:17', '14', '1'),
(default, '2020-09-14 16:32:22', '15', '1'),
(default, '2020-01-02 07:40:33', '34', '2'),
(default, '2020-05-16 06:16:22', '24', '2'),
(default, '2020-10-09 12:27:48', '21', '2'),
(default, '2020-09-21 13:14:46', '39', '2'),
(default, '2020-11-13 16:55:13', '6',  '3'),
(default, '2020-12-05 18:38:30', '3',  '3'),
(default, '2020-07-30 10:00:00', '26', '3'),
(default, '2021-08-15 17:10:10', '2',  '4'),
(default, '2021-07-10 15:20:30', '35', '4'),
(default, '2021-01-09 01:44:33', '27', '4'),
(default, '2020-07-03 19:33:28', '7',  '5'),
(default, '2017-02-24 21:14:22', '12', '5'),
(default, '2020-08-06 15:23:43', '14', '5'),
(default, '2020:11:10 13:52:27', '1',  '5'),
(default, '2019-02-07 20:33:48', '38', '6'),
(default, '2017-01-24 00:31:17', '29', '6'),
(default, '2017-10-12 12:35:20', '30', '6'),
(default, '2018-05-29 14:56:41', '22', '6'),
(default, '2018-05-09 22:30:49', '5', '7'),
(default, '2020-07-27 12:52:58', '4', '7'),
(default, '2018-01-16 18:40:43', '11', '7'),
(default, '2018-03-21 16:56:40', '39', '8'),
(default, '2020-10-18 13:38:05', '40', '8'),
(default, '2019-05-25 08:14:03', '32', '8'),
(default, '2021:08:15 21:37:09', '33', '8'),
(default, '2021-05-24 17:23:45', '16', '9'),
(default, '2018-12-07 22:48:52', '17', '9'),
(default, '2021-03-14 06:14:26', '8',  '9'),
(default, '2020-04-01 03:36:00', '9',  '9'),
(default, '2017-02-06 08:21:34', '20', '10'),
(default, '2017-12-04 05:33:43', '21', '10'),
(default, '2017-07-27 05:24:49', '12', '10'),
(default, '2017-12-25 01:03:57', '13', '10');

INSERT INTO SpotifyClone.favoritos(id_usuario, id_artista)
VALUES 
('1', '1'),
( '1', '4'),
( '1', '3'),
( '2', '1'),
( '2', '3'),
( '3', '2'),
( '3', '1'),
( '4', '4'),
( '5', '5'),
( '5', '6'),
( '6', '6'),
( '6', '3'),
( '6', '1'),
( '7', '2'),
( '7', '5'),
( '8', '1'),
( '8', '5'),
( '9', '6'),
( '9', '4'),
( '9', '3'),
( '10', '2'),
( '10', '6');