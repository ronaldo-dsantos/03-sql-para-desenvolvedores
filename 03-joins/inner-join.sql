-- INNER JOIN 
-- Tem como finalidade unir duas fontes de dados, para isso, é necessário que existam valores correspondentes entre essas duas fontes de dados

SELECT * FROM categorias;
SELECT * FROM cursos;

SELECT * FROM cursos INNER JOIN categorias ON categorias.id = cursos.categoria_id; -- Selecione todos os campos da tabela cursos unindo a tabela categorias onde o campo id da tabela categorias for igual ao campo categoria_id da tabela cursos

SELECT * FROM cursos cr INNER JOIN categorias ct ON ct.id = cr.categoria_id; -- Exemplo usando alias cr e ct são dois alias criados para incurtar a reescrita das tabelas, mas não é obrigatório fazer para usar o INNER JOIN

SELECT cr.descricao Curso, ct.descricao Categoria FROM cursos cr INNER JOIN categorias ct ON ct.id = cr.categoria_id; 
-- INNER JOIN para informar as tabelas que queremos unir
-- ON para informar o relacionamento entre as tabelas
-- Selecione na tabela cursos a coluna descrição e coloque esse resultado em uma coluna com o nome (alias) curso
-- selecione na tabela categoria a colula descrição e coloque esse resultado em uma coluna com o nome (alias) categoria
-- onde a tabela cursos unindo com a tabela categorias o id seja igual correspons a tabela cursos categoria_id 