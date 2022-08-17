SELECT ar.artista_nome AS `artista`, al.album_nome AS `album`
    FROM SpotifyClone.artistas AS ar
    INNER JOIN SpotifyClone.albuns AS al
    ON ar.artista_id=al.artista_id
    WHERE ar.artista_nome LIKE('Elis Regina') GROUP BY ar.artista_nome, al.album_nome;