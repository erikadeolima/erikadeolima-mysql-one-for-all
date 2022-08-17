SELECT us.usuario AS usuario, COUNT(hi.cancao_id) AS qt_de_musicas_ouvidas, ROUND((SUM(ca.duracao_segundos)/60),2) AS total_minutos
FROM SpotifyClone.historico_de_reproducoes AS hi
INNER JOIN SpotifyClone.cancoes AS ca
ON hi.cancao_id=ca.cancao_id
INNER JOIN SpotifyClone.usuarios AS us
ON us.usuario_id = hi.usuario_id GROUP BY hi.usuario_id ORDER BY us.usuario;