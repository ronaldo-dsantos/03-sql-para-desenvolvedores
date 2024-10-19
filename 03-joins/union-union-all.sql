-- UNION e UNION ALL
-- Ambos server para juntar os resultados de pesquisas distintas em um único conjunto de registros
-- A diferença é que o UNION não traz resultados duplicados, e o UNION ALL traz todos os resultados, mesmo que com valores duplicados

SELECT * FROM categorias;
SELECT * FROM cursos;

-- UNION
SELECT descricao FROM cursos WHERE id = 1
UNION
SELECT descricao FROM categorias WHERE id = 2;

-- UNION (elimina os valores duplicados)
SELECT descricao FROM cursos WHERE id = 1
UNION
SELECT descricao FROM categorias WHERE id = 2
UNION
SELECT 'Valor dinamico'
UNION
SELECT 'Valor dinamico';

-- UNION ALL (não elimina os valores duplicados)
SELECT descricao FROM cursos WHERE id = 1
UNION ALL
SELECT descricao FROM categorias WHERE id = 2
UNION ALL
SELECT 'Valor dinamico'
UNION ALL
SELECT 'Valor dinamico';