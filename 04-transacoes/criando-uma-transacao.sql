-- TRANSACTION
-- Uma transação é útil em um cenário que temos mais de uma requisição e precisamos garantir a consistencia dos dados, ou seja, com uma transação ou executa todas as instruções enviadas ou não executa nada
-- Com isso, evitamos que as instruções não sejam realizadas por completo

SELECT * FROM categorias;

-- BEGIN TRANSACTION para iniciar uma transação, enquanto essa transação não é finalizada outras consultas a essa tabela ficará indisponível para os outros usuários
BEGIN TRANSACTION
UPDATE categorias SET descricao=UPPER(descricao) WHERE id > 0
GO
DELETE categorias WHERE id = 4
GO;

ROLLBACK; -- Para reverter uma transação

COMMIT; -- Para concluir a transação

