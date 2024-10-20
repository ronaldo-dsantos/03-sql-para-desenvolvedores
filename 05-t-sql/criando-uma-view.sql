-- View
-- View é uma tabela virtual e os dados exibidos na view são capturados de forma dinâmica no banco de dados
-- View são uma alternativa para query's complexas, ao invés de deixar query's muito complexas na aplicação, você pode levar essa complexidade para o banco de dados e deixar uma query simplificada na aplicação 

SELECT * FROM cursos;
SELECT * FROM categorias;

-- Criando uma VIEW
CREATE VIEW ViewCursos
AS
SELECT cr.descricao, ca.descricao categoria FROM cursos cr INNER JOIN categorias ca
on cr.categoria_id = ca.id

-- Executando uma VIEW 
SELECT * FROM ViewCursos; -- Se necessário, podemos inserir filtros na VIEW também, por exemplo WHERE descricao = 'EF Core'

-- Excluindo uma VIEW
DROP VIEW ViewCursos;

-- Editando uma VIEW
ALTER VIEW ViewCursos -- ALTER para editar a VIEW
AS
SELECT cr.descricao, cr.cadastrado_em, ca.descricao categoria FROM cursos cr INNER JOIN categorias ca
on cr.categoria_id = ca.id