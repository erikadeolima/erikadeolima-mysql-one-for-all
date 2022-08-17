SELECT us.usuario AS usuario, IF (MAX(YEAR(hi.data_reproducao)) >= '2021', 'Usuário ativo','Usuário inativo') AS status_usuario
FROM SpotifyClone.historico_de_reproducoes AS hi
INNER JOIN SpotifyClone.usuarios AS us
ON us.usuario_id = hi.usuario_id GROUP BY hi.usuario_id ORDER BY us.usuario;