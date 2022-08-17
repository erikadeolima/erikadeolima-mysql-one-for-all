SELECT ar.artista_nome AS `artista`, al.album_nome AS `album`, COUNT(se.artista_id) AS `seguidores`
	FROM SpotifyClone.seguindo_artistas AS se
    INNER JOIN SpotifyClone.artistas AS ar
    ON se.artista_id=ar.artista_id
    INNER JOIN SpotifyClone.albuns AS al
    ON ar.artista_id=al.artista_id
    GROUP BY ar.artista_nome, al.album_nome ORDER BY `seguidores` DESC,`artista`, `album`;