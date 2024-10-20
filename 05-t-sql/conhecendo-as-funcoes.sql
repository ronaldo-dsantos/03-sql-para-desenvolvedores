-- Conhecendo as principais funções
-- https://learn.microsoft.com/pt-br/sql/t-sql/functions/functions?view=sql-server-ver15

SELECT * FROM categorias;

SELECT LEFT(descricao, 4), descricao FROM categorias; -- LEFT(descricao, 4) para pegar os 4 primeiros caracteres

SELECT RIGHT(descricao, 4), descricao FROM categorias; -- RIGHT(descricao, 4) para pegar os 4 últimos caracteres   

SELECT SUBSTRING(descricao, 2, 5), descricao FROM categorias; -- SUBSTRING(descricao, 2, 5) para pegar 5 caracteres a partir da posição 2

SELECT 'Ronaldo ' + 'Domingues'; -- + para concatenar valores

SELECT 'Ronaldo ' + 'Domingues' + NULL; -- Dica: Se um dos valores for nulo, o resultado da concatenação será NULL

SELECT CONCAT('Ronaldo ', 'Domingues'); -- CONCAT outra maneira de concatenar valores

SELECT ISNULL(descricao, 'SEM DESCRICAO') FROM categorias; -- ISNULL(descricao, 'SEM DESCRICAO') se retornar um valor null e será alterado automaticamente para sem descrição

SELECT COALESCE(NULL, NULL, NULL, 'VALIDO'); -- COALESCE com o coalesce você pode passar uma coleção de dados para validação, ele vai ignorar os nulos e trazer o primeiro valor válido

SELECT IIF(1 > 0, 'MAIOR QUE ZERO', 'MENOR QUE ZERO'); -- Operador if

SELECT GETDATE(); -- GETDATE() hora e data local do servidor

SELECT CAST(GETDATE() AS DATE); -- Convertendo para somente data

SELECT CAST(GETDATE() AS TIME); -- Convertendo para somente hora



