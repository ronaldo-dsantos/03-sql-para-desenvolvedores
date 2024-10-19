-- LEFT JOIN
-- Serve para fazer a junção de dados de duas tabelas priorizando as informações que estão no lado esquerdo
-- Um exemplo, o INNER JOIN ele junta dados que correspondam nas duas tabelas, o LEFT JOIN verifica se os dados da tabela principal (esquesda) correspondem aos dados da tabela secundária (direita), ele vai trazer todos os campos existentes na tabela esqueda e os da direita que correspondem, se não houver, trará null

SELECT * FROM categorias;
SELECT * FROM cursos;

INSERT INTO categorias(descricao) VALUES('Categoria Test'); -- Inserindo um valor a na tabela categorias

SELECT ct.descricao Categoria, cr.descricao Curso FROM categorias ct LEFT JOIN cursos cr ON ct.id = cr.categoria_id; -- LEFT JOIN para pesquisar se os valores da tabela categoria (a esquerda) tem valores correspondentes na tabela cursos

