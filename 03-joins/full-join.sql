-- FULL JOIN

SELECT * FROM categorias;
SELECT * FROM cursos;

SELECT cr.descricao Curso, ct.descricao Categoria FROM cursos cr FULL JOIN categorias ct on ct.id = cr.categoria_id; -- FULL JOIN para trazer todos os valores existentes nas duas tabelas, mesmo se os valores se corresponderem ou não
