-- contador-de-registros-eficiente

-- habilitandos as estatistica para habilitar o IO (quantas leituras foram efetuadas) e TIME ON (tempo de custo da cpu), podemos ler esses dados capturados através da aba messages
SET STATISTICS IO, TIME ON;

-- contando os registro de uma tabela de forma convencional
SELECT COUNT(*) FROM Tabela_Teste WITH (NOLOCK); -- WITH (NOLOCK) para incluir os registros em alteração

-- contando os registro de uma tabela de uma maneira mais performatica
SELECT SUM(s.row_count) FROM sys.dm_db_partition_stats s -- sys.dm_db_partition_stats view disponibilizada pelo próprio bd, essa view nos devolve todas as informações que uma determinada tabela possui 
WHERE OBJECT_NAME(object_id) = 'Tabela_Teste'
AND s.index_id IN (0, 1)