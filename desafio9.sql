SELECT COUNT(hi.cancao_id) AS `quantidade_musicas_no_historico`
    FROM SpotifyClone.usuarios AS us
    INNER JOIN SpotifyClone.historico_de_reproducoes AS hi
    ON us.usuario_id=hi.usuario_id
    WHERE us.usuario LIKE('Barbara Liskov') GROUP BY hi.usuario_id;