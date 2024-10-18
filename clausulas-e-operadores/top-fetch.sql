SELECT * FROM alunos ORDER BY id;

SELECT TOP 3 * FROM alunos ORDER BY id; -- TOP 3 para retornar apenas os 3 primeiros registros

SELECT TOP 30 PERCENT * FROM alunos ORDER BY id; -- TOP 30 PERCENT para retornar apenas os 30% primeiros registros

-- Utilizado para fazer paginação
SELECT * FROM alunos ORDER BY id
OFFSET 2 ROWS -- OFFSET 2 para ignorar as duas primeiras linhas 
FETCH FIRST 2 ROW ONLY; -- FETCH FIRST 2 para pegar as duas primeiras linhas após o OFFSET





