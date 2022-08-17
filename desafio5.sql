SELECT ca.cancao_nome AS cancao, COUNT(hi.cancao_id) AS `reproducoes`
FROM SpotifyClone.historico_de_reproducoes AS hi
INNER JOIN SpotifyClone.cancoes AS ca
ON ca.cancao_id = hi.cancao_id GROUP BY hi.cancao_id ORDER BY `reproducoes` DESC, ca.cancao_nome LIMIT 2;