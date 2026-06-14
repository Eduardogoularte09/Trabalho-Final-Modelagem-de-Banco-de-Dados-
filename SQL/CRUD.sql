INSERT INTO digital_music.organizador
VALUES (51, 'Teste CRUD', 'teste@email.com');

SELECT *
FROM digital_music.organizador
WHERE id_organizador = 51;

UPDATE digital_music.organizador
SET nome = 'Teste CRUD Atualizado'
WHERE id_organizador = 51;

DELETE FROM digital_music.organizador
WHERE id_organizador = 51;