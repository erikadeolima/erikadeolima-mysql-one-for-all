SELECT COUNT(ca.cancao_id) AS cancoes, COUNT(DISTINCT al.artista_id) AS artistas, COUNT(DISTINCT al.album_id) AS albuns
FROM SpotifyClone.cancoes AS ca
INNER JOIN SpotifyClone.albuns AS al
ON ca.album_id = al.artista_id;