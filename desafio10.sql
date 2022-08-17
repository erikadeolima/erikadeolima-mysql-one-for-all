SELECT ca.cancao_nome AS `nome`, COUNT(hi.cancao_id) AS `reproducoes`
	FROM SpotifyClone.cancoes AS ca
    INNER JOIN SpotifyClone.historico_de_reproducoes AS hi
    ON ca.cancao_id=hi.cancao_id
    INNER JOIN SpotifyClone.usuarios AS us
    ON us.usuario_id=hi.usuario_id
    WHERE
    us.plano_id = 1 || us.plano_id = 4
    GROUP BY ca.cancao_nome ORDER BY ca.cancao_nome;