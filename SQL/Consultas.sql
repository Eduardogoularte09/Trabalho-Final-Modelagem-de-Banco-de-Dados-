-- Consulta 1
SELECT
    e.nome AS evento,
    l.nome AS local,
    l.estado
FROM digital_music.evento e
JOIN digital_music.local l
    ON e.id_local = l.id_local
WHERE l.estado = 'SP'
ORDER BY e.nome;

-- Consulta 2
SELECT
    e.nome AS evento,
    o.nome AS organizador
FROM digital_music.evento e
JOIN digital_music.organizador o
    ON e.id_organizador = o.id_organizador
WHERE o.id_organizador <= 25
ORDER BY o.nome;

-- Consulta 3
SELECT
    e.nome AS evento,
    i.tipo,
    i.valor
FROM digital_music.evento e
JOIN digital_music.ingresso i
    ON e.id_evento = i.id_evento
WHERE i.valor > 150
ORDER BY i.valor DESC;

-- Consulta 4
SELECT
    a.nome_artistico,
    ae.cache
FROM digital_music.artista a
JOIN digital_music.artista_evento ae
    ON a.id_artista = ae.id_artista
WHERE ae.cache > 8000
ORDER BY ae.cache DESC;

-- Consulta 5
SELECT
    u.nome,
    i.tipo,
    i.valor
FROM digital_music.usuario u
JOIN digital_music.ingresso i
    ON u.id_usuario = i.id_usuario
WHERE i.tipo = 'VIP'
ORDER BY u.nome;


-- Consulta 6
SELECT
    e.nome,
    i.estoque
FROM digital_music.evento e
JOIN digital_music.ingresso i
    ON e.id_evento = i.id_evento
WHERE i.estoque > 400
ORDER BY i.estoque DESC;

-- Consulta 7
SELECT
    o.nome,
    t.telefone
FROM digital_music.organizador o
JOIN digital_music.telefone_organizador t
    ON o.id_organizador = t.id_organizador
WHERE t.telefone IS NOT NULL
ORDER BY o.nome;

-- Consulta 8
SELECT
    e.nome AS evento,
    a.nome_artistico
FROM digital_music.evento e
JOIN digital_music.artista_evento ae
    ON e.id_evento = ae.id_evento
JOIN digital_music.artista a
    ON ae.id_artista = a.id_artista
WHERE ae.cache > 5000
ORDER BY e.nome;

-- Consulta 9
SELECT
    e.nome AS evento,
    AVG(i.valor) AS preco_medio
FROM digital_music.evento e
JOIN digital_music.ingresso i
    ON e.id_evento = i.id_evento
WHERE i.valor >= 80
GROUP BY e.nome
ORDER BY preco_medio DESC;

-- Consulta 10
SELECT
    e.nome AS evento,
    SUM(i.valor * i.estoque) AS receita_potencial
FROM digital_music.evento e
JOIN digital_music.ingresso i
    ON e.id_evento = i.id_evento
WHERE i.valor >= 80
GROUP BY e.nome
ORDER BY receita_potencial DESC;