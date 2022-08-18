SELECT ca.cancao_nome AS `nome_musica`,
    CASE
		WHEN ca.cancao_nome LIKE('%Amar%') THEN REPLACE(ca.cancao_nome, 'Amar', 'Code Review')
        WHEN ca.cancao_nome LIKE('%SUPERSTAR%') THEN REPLACE(ca.cancao_nome, 'SUPERSTAR', 'SUPERDEV')
        WHEN ca.cancao_nome LIKE('%Bard%') THEN REPLACE(ca.cancao_nome, 'Bard', 'QA')
        WHEN ca.cancao_nome LIKE('%SOUL%') THEN REPLACE(ca.cancao_nome, 'SOUL', 'CODE')
        WHEN ca.cancao_nome LIKE('%Pais%') THEN REPLACE(ca.cancao_nome, 'Pais', 'Pull Requests')
        END AS `novo_nome`
	FROM SpotifyClone.cancoes AS ca
    HAVING `novo_nome` IS NOT NULL
	ORDER BY nome_musica DESC;