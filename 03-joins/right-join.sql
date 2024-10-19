-- RIGHT JOIN

SELECT * FROM categorias;
SELECT * FROM cursos;

SELECT cr.descricao Curso, ct.descricao Categoria FROM cursos cr RIGHT JOIN categorias ct on ct.id = cr.categoria_id; -- RIGHT JOIN para verificar se os valores da tabela categorias (direita) tem valores correspondentes na tabela curso, se não existir o retorno será null