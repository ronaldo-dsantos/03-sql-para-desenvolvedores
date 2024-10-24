-- hints (dicas) | nolock
-- hints são recursos fornecidos pelo próprio banco de dados que possibilitam alterarmos o comportamento padrão do plano de execução do banco de dados

SELECT * FROM categorias;

-- transação
BEGIN TRANSACTION
UPDATE categorias SET descricao='Teste com NOLOCK' WHERE id=1008;

-- COMANDOS EXECUTADOS EM OUTRA QUERY
SELECT * FROM categorias; -- se executarmos esse comando nessa query conseguiremos visualizar a tabela corretamente, mas caso seja em outra query, não conseguiremos devido a transaction estar em andamento, só vamos conseguir obter o resultado esperado após o commit ou rollback da query

SELECT * FROM categorias WITH (NOLOCK); -- usando o WITH (NOLOCK) conseguimos alterar esse comportamento padrão do banco de dados e ter o resultado esperado mesmo com a transação em andamento, mas cuidado, com isso teremos uma consuta suja que não contemplará as alterações que estão em andamento, com isso, é necessário avaliar se esse cenário atende para situação que utilizaremos