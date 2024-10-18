SELECT * FROM alunos;

SELECT MAX(id) FROM alunos; -- MAX(id) para verificar o maior valor de ID da tabela alunos

SELECT MIN(id) FROM alunos; -- MIN(id) para verificar o menor valor de ID da tabela alunos

SELECT * FROM alunos WHERE id = (SELECT MAX(id) FROM alunos); -- Selecione todos os campos da tabela alunos onde o id for igual ao maior id da tabela alunos




